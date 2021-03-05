###### This is an implementation of [Base64](https://en.wikipedia.org/wiki/Base64) `encode`/`decode` algorithm.

#### Example:

> `.default` encoding/decoding

```swift
import Base64

/// Encoding to Base64
/// 1. convert string to bytes (utf8 format)
let bytes = "Hello, World!".makeBytes()
/// 2. encode bytes using base64 algorithm
let encodedBytes = Base64.encode(bytes)
/// 3. converting bytes back to string
let encodedString = try String(encoded) // "SGVsbG8sIFdvcmxkIQ=="


/// Decoding from Base64
/// 1. convert string to bytes (utf8 format)
let bytes = "SGVsbG8sIFdvcmxkIQ==".makeBytes()
/// 2. decode bytes using base64 algorithm
let decodedBytes = try Base64.decode(bytes)
/// 3. converting bytes back to string
let decodedString = try String(encoded) // "Hello, World!"
```

> `.url` encoding/decoding

```swift
import Base64

/// Encoding to Base64
/// 1. convert string to bytes (utf8 format)
let bytes = "https://hello.world".makeBytes()
/// 2. encode bytes using base64 algorithm
let encodedBytes = Base64.encode(bytes, type: .url)
/// 3. converting bytes back to string
let encodedString = try String(encoded) // "aHR0cHM6Ly9oZWxsby53b3JsZA"


/// Decoding from Base64
/// 1. convert string to bytes (utf8 format)
let bytes = "aHR0cHM6Ly9oZWxsby53b3JsZA".makeBytes()
/// 2. decode bytes using base64 algorithm
let decodedBytes = try Base64.decode(bytes, type: .url)
/// 3. converting bytes back to string
let decodedString = try String(encoded) // "https://hello.world"
```

#### Importing Base64:

To include `Base64` in your project, you need to add the following to the `dependencies` attribute defined in your `Package.swift` file.
```swift
dependencies: [
  .package(url: "https://github.com/alja7dali/swift-base64.git", from: "1.0.0")
]
```