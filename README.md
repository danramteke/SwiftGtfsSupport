SwiftGtfsSupport
----------------

This is a library you can include in your Swift projects. It contains a Swift version of the GTFS binding.

This project started as a way to modularize a different project I was working on. MIT license. 



Steps that I am doing for you
------------------------------

1. Install `protoc` via `brew install protobuf` or from https://github.com/google/protobuf
2. clone https://github.com/apple/swift-protobuf
3. `cd swift-protobuf && swift build`
4. `protoc --swift_opt=Visibility=Public --swift_out=./Sources/ --plugin=../swift-protobuf/.build/debug/protoc-gen-swift gtfs-realtime.proto`



