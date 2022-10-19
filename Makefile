test:
	fswatch -or . | xargs -n1 -I{} ./run_tests.sh
