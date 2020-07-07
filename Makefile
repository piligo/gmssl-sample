all: client_gmtls server_gmtls Certificates  ClientFinished  ClientKeyExchange  MasterSecret  ServerFinished  ServerKeyExchange

.PHONY :	all

client_gmtls:
	go build cmd/$@.go
	@mkdir -p release/linux64_bin
	@mv $@ release/linux64_bin
	@echo "build $@ ok!"
server_gmtls:
	go build cmd/$@.go
	@mkdir -p release/linux64_bin
	@mv $@ release/linux64_bin
	#server 需要证书，因此证书复制到bin目录和应用放一块
	@cp -fr sm2Certs release/linux64_bin/
	@echo "build $@ ok!"
Certificates:
	go build cmd/doc/$@.go
	@mkdir -p release/linux64_bin
	@mv $@ release/linux64_bin
	@echo "build $@ ok!"
ClientFinished:
	go build cmd/doc/$@.go
	@mkdir -p release/linux64_bin
	@mv $@ release/linux64_bin
	@echo "build $@ ok!"
ClientKeyExchange:
	go build cmd/doc/$@.go
	@mkdir -p release/linux64_bin
	@mv $@ release/linux64_bin
	@echo "build $@ ok!"
MasterSecret:
	go build cmd/doc/$@.go
	@mkdir -p release/linux64_bin
	@mv $@ release/linux64_bin
	@echo "build $@ ok!"
ServerFinished:
	go build cmd/doc/$@.go
	@mkdir -p release/linux64_bin
	@mv $@ release/linux64_bin
	@echo "build $@ ok!"
ServerKeyExchange:
	go build cmd/doc/$@.go
	@mkdir -p release/linux64_bin
	@mv $@ release/linux64_bin
	@echo "build $@ ok!"

.PHONY : 	clean
clean:
	rm -fr release/linux64_bin/*
