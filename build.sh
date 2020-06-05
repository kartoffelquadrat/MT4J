cd mt4j-core
if [ -d bin ]; then
	rm -rf bin
fi
if [ -f mt4j.jar ]; then
	rm mt4j.jar
fi
mkdir bin
ant create_run_jar
cd ..
