import lit.formats

config.name = "LIT Hello World Tests"
config.test_format = lit.formats.ShTest(True)

config.suffixes = [".lit"]

config.test_source_root = os.path.dirname(__file__)
config.test_exec_root = os.path.join(config.my_obj_root, "test-suite")
