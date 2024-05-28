configure_file(sanity_check.sh.cmake sanity_check.sh @ONLY)
file(COPY PE-benchmarks-llfiles-llvm17 DESTINATION ./)
file(COPY oracle DESTINATION ./)
file(COPY ../../vocabulary DESTINATION ./)
file(COPY index-llvm17.files DESTINATION ./)


configure_file(lit.site.cfg.py.in lit.site.cfg.py @ONLY)
file(COPY test-lit.py DESTINATION ./)
file(COPY test-ir2vec.lit DESTINATION ./)
