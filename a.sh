protoc --version
protoc  --grpc_out=./rpc_client_cpp --plugin=protoc-gen-grpc=`which grpc_cpp_plugin` hellostream.proto helloworld.proto route_guide.proto
protoc  --grpc_out=./rpc_server --plugin=protoc-gen-grpc=`which grpc_cpp_plugin` hellostream.proto helloworld.proto route_guide.proto

protoc  --cpp_out=./rpc_client_cpp hellostream.proto helloworld.proto route_guide.proto
protoc  --cpp_out=./rpc_server  hellostream.proto helloworld.proto route_guide.proto
