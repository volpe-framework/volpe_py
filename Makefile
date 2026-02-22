
.PHONY: python
python:
	python3 -m grpc_tools.protoc -I./volpe-protobuf/ --python_out=./ --pyi_out=./ \
	--grpc_python_out=./ ./volpe-protobuf/common.proto
	python3 -m grpc_tools.protoc -I./volpe-protobuf/ --python_out=./ --pyi_out=./ \
	--grpc_python_out=./ ./volpe-protobuf/volpe_container.proto
