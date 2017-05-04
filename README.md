SwiftGtfsSupport
----------------

This is a library you can include in your Swift projects. It contains a Swift version of the GTFS binding.

This project started as a way to modularize a different project I was working on. MIT license. 

Usage
-----

In your `Package.swift` put something like this:

```
let package = Package(
    name: "MyPackage",
    dependencies: [
        .Package(url: "https://github.com/danramteke/SwiftGtfsSupport", Version(0,0,1)),
    ]
)
```

And in code, once you have the GTFS data as binary, 
```
let feed = try TransitRealtime_FeedMessage(serializedData: gtfsData)
```


Steps this package is doing for you
-----------------------------------

1. Install `protoc` via `brew install protobuf` or from https://github.com/google/protobuf
2. clone https://github.com/apple/swift-protobuf
3. `cd swift-protobuf && swift build`
4. `protoc --swift_opt=Visibility=Public --swift_out=./Sources/ --plugin=../swift-protobuf/.build/debug/protoc-gen-swift gtfs-realtime.proto`

Plus, it means this code is in a separate package, keeping your project clean and organized 💅🏽

