
.PHONY: python
python:
	python3 -m grpc_tools.protoc -I./volpe-protobuf/ --python_out=./ --pyi_out=./ \
	--grpc_python_out=./ ./volpe-protobuf/common.proto
	python3 -m grpc_tools.protoc -I./volpe-protobuf/ --python_out=./ --pyi_out=./ \
	--grpc_python_out=./ ./volpe-protobuf/volpe_container.proto
	sed -i 's/^import common_pb2/from . \0/' ./volpe_container_pb2.py
	sed -i 's/^import common_pb2/from . \0/' ./volpe_container_pb2.pyi
	sed -i 's/^import common_pb2/from . \0/' ./volpe_container_pb2_grpc.py
	sed -i 's/^import volpe_container_pb2/from . \0/' ./volpe_container_pb2_grpc.py

	

