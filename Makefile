#
# Makefile for CI/CD Environments and commandline users
#

# Cleanup
clean:
	flutter clean
	flutter pub get

# Format & Lint
format:
	dart format .
lint:
	dart analyze

# Testing
test:
	flutter test --coverage -r expanded
	genhtml coverage/lcov.info --output=coverage
.PHONY: test
test-ci:
	flutter test --machine --coverage -r expanded --file-reporter "json:tests.json" | tojunit --output report.xml
	genhtml coverage/lcov.info --output=coverage
	! tail -1 tests.json | grep '"success":false'

# Release to pub.dev
release-check:
	dart pub publish --dry-run
	pana .
release:
	dart pub publish