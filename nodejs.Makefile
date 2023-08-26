NODE_VERSION = 18.17.1
NODE_SOURCE_CODE_URL = https://nodejs.org/dist/v${NODE_VERSION}/node-v${NODE_VERSION}.tar.gz

.PHONY: prepare clean all

all: prepare
	# build node
	cd node-v${NODE_VERSION} && CC=x86_64-linux-musl-gcc CXX=lty-g++ ./configure --fully-static --enable-static
	cd node-v${NODE_VERSION} && CC=x86_64-linux-musl-gcc CXX=lty-g++ make -j`nproc`

prepare:
	# get source code
	rm -rf node-v${NODE_VERSION}
	if [ ! -e "node-v${NODE_VERSION}.tar.gz" ]; then curl -o node-v${NODE_VERSION}.tar.gz $(NODE_SOURCE_CODE_URL); fi
	tar zxf node-v${NODE_VERSION}.tar.gz

clean:
	rm -rf node-v${NODE_VERSION}
