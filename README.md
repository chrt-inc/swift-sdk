# Chrt Swift Library

[![fern shield](https://img.shields.io/badge/%F0%9F%8C%BF-Built%20with%20Fern-brightgreen)](https://buildwithfern.com?utm_source=github&utm_medium=github&utm_campaign=readme&utm_source=https%3A%2F%2Fgithub.com%2Fchrt-inc%2Fswift-sdk)
![SwiftPM compatible](https://img.shields.io/badge/SwiftPM-compatible-orange.svg)

The Chrt Swift library provides convenient access to the Chrt APIs from Swift.

## Requirements

This SDK requires:
- Swift 5.7+
- iOS 15+
- macOS 12+
- tvOS 15+
- watchOS 8+

## Installation

With Swift Package Manager (SPM), add the following to the top-level `dependencies` array within your `Package.swift` file:

```swift
dependencies: [
    .package(url: "https://github.com/chrt-inc/swift-sdk", from: "1.324.0"),
]
```

## Reference

A full reference for this library is available [here](https://github.com/chrt-inc/swift-sdk/blob/HEAD/./reference.md).

## Usage

Instantiate and use the client with the following:

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.payments.generateInvoiceV1(request: .init(shipperPayCourierStatementId: "shipper_pay_courier_statement_id"))
}

try await main()
```

## Request Types

The SDK exports all request types as Swift structs. Simply import the SDK module to access them:

```swift
import Chrt

let request = Requests.GenerateInvoiceReq(
    ...
)
```

## Advanced

### Additional Headers

If you would like to send additional headers as part of the request, use the `additionalHeaders` request option.

```swift
try await client.payments.generateInvoiceV1(..., requestOptions: .init(
    additionalHeaders: [
        "X-Custom-Header": "custom value"
    ]
))
```

### Additional Query String Parameters

If you would like to send additional query string parameters as part of the request, use the `additionalQueryParameters` request option.

```swift
try await client.payments.generateInvoiceV1(..., requestOptions: .init(
    additionalQueryParameters: [
        "custom_query_param_key": "custom_query_param_value"
    ]
))
```

### Timeouts

The SDK defaults to a 60-second timeout. Use the `timeout` option to configure this behavior.

```swift
try await client.payments.generateInvoiceV1(..., requestOptions: .init(
    timeout: 30
))
```

### Custom Networking Client

The SDK allows you to customize the underlying `URLSession` used for HTTP requests. Use the `urlSession` option to provide your own configured `URLSession` instance.

```swift
import Foundation
import Chrt

let client = ChrtClient(
    ...,
    urlSession: // Provide your implementation here
)
```

## Contributing

While we value open-source contributions to this SDK, this library is generated programmatically.
Additions made directly to this library would have to be moved over to our generation code,
otherwise they would be overwritten upon the next generated release. Feel free to open a PR as
a proof of concept, but know that we will not be able to merge it as-is. We suggest opening
an issue first to discuss with us!

On the other hand, contributions to the README are always very welcome!
