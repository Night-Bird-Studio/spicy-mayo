./tools/generate_import_file_test.sh
fvm flutter test --coverage
cat .coverage_ignore_pattern | xargs lcov --output-file coverage/lcov.cleaned.info --remove coverage/lcov.info
genhtml coverage/lcov.cleaned.info -o coverage/html

