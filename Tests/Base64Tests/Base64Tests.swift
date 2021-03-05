import XCTest
@testable import Base64

final class Base64Tests: XCTestCase {
  func testDefaultEncodingToBase64() {
    do {
      let bytes = "Hello, World!".makeBytes()
      let encoded = Base64.encode(bytes)
      let str = try String(encoded)
      XCTAssertEqual(str, "SGVsbG8sIFdvcmxkIQ==")
    } catch {
      XCTFail()
    }
  }

  func testDefaultDecodingToBase64() {
    do {
      let bytes = "SGVsbG8sIFdvcmxkIQ==".makeBytes()
      let decoded = Base64.decode(bytes)
      let str = try String(decoded)
      XCTAssertEqual(str, "Hello, World!")
    } catch {
      XCTFail()
    }
  }

  func testURLEncodingToBase64() {
    do {
      let bytes = "https://hello.world".makeBytes()
      let encoded = Base64.encode(bytes, type: .url)
      let str = try String(encoded)
      XCTAssertEqual(str, "aHR0cHM6Ly9oZWxsby53b3JsZA")
    } catch {
      XCTFail()
    }
  }

  func testURLDecodingToBase64() {
    do {
      let bytes = "aHR0cHM6Ly9oZWxsby53b3JsZA".makeBytes()
      let decoded = Base64.decode(bytes, type: .url)
      let str = try String(decoded)
      XCTAssertEqual(str, "https://hello.world")
    } catch {
      XCTFail()
    }
  }

  static var allTests = [
    ("testDefaultEncodingToBase64", testDefaultEncodingToBase64),
    ("testDefaultDecodingToBase64", testDefaultDecodingToBase64),
    ("testURLEncodingToBase64", testURLEncodingToBase64),
    ("testURLDecodingToBase64", testURLDecodingToBase64),
  ]
}