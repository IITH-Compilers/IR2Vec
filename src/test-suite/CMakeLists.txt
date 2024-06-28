configure_file(sanity_check.sh.cmake sanity_check.sh @ONLY)
file(COPY PE-benchmarks-llfiles-llvm17 DESTINATION ./)
file(COPY oracle DESTINATION ./)
file(COPY ../../vocabulary DESTINATION ./)
file(COPY index-llvm17.files DESTINATION ./)


configure_file(lit.site.cfg.py.in lit.site.cfg.py @ONLY)
file(COPY test-lit.py DESTINATION ./)
file(COPY test-ir2vec.lit DESTINATION ./)

# SQLite IR file is added along side other PE-benchmarks for this version
set(SQLITE_LLVM_IR
    ${CMAKE_CURRENT_SOURCE_DIR}/PE-benchmarks-llfiles-llvm17/sqlite3.ll
)

if(NOT EXISTS ${SQLITE_LLVM_IR})
    # The downloaded Zip file and source files directory are located at the
    # build directory since its already gitignore anyways.
    set(SQLITE_ZIP ${CMAKE_CURRENT_BINARY_DIR}/sqlite-amalgamation-3460000.zip)
    set(SQLITE_SOURCE ${CMAKE_CURRENT_BINARY_DIR}/sqlite-amalgamation-3460000)

    # Some of the recommended compile flags. https://sqlite.org/amalgamation.html
    # with the following flags the resulting LLVM IR file is about 500k lines
    set(SQLITE_COMPILE_FLAGS
        -DSQLITE_ENABLE_FTS3
        -DSQLITE_ENABLE_FTS5
        -DSQLITE_ENABLE_RTREE
        -DSQLITE_ENABLE_DBSTAT_VTAB
        -DSQLITE_ENABLE_RBU
        -DSQLITE_ENABLE_SESSION
    )

    if(NOT EXISTS ${SQLITE_ZIP})
        # SQLite Amalgamation download source: https://sqlite.org/download.html
        message(STATUS "Downloading SQLite Amalgamation source zip file..")
        file(
        DOWNLOAD https://sqlite.org/2024/sqlite-amalgamation-3460000.zip
        ${SQLITE_ZIP}
        EXPECTED_HASH SHA3_256=1221eed70de626871912bfca144c00411f0c30d3c2b7935cff3963b63370ef7c
        SHOW_PROGRESS
        )
    endif()

    if(NOT EXISTS ${SQLITE_SOURCE})
        message(STATUS
            "Unzipping SQLite source files at: ${SQLITE_SOURCE}"
        )
        execute_process(
            COMMAND unzip ${SQLITE_ZIP}
            WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}
            RESULT_VARIABLE unzip_result
        )

        if(NOT unzip_result EQUAL 0)
            message(FATAL_ERROR "Failed to extract SQLite zip file")
        endif()
    endif()

    find_program(CLANG_BIN NAMES clang-17 clang)
    if(NOT CLANG_BIN)
        message(FATAL_ERROR "Clang not found. Please install it.")
    endif()

    execute_process(
        COMMAND ${CLANG_BIN} -S -emit-llvm ${SQLITE_COMPILE_FLAGS}
            -Xclang -disable-O0-optnone
            -o ${SQLITE_LLVM_IR}
            ${SQLITE_SOURCE}/sqlite3.c
            RESULT_VARIABLE sqlite_ir_result
    )

    if(sqlite_ir_result EQUAL 0)
        message(STATUS "SQLite benchmark was generated at: ${SQLITE_LLVM_IR}")
    endif()
endif()
