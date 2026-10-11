import Foundation

public final class LivekitClient: Sendable {
    public let helloWorld: HelloWorldClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.helloWorld = HelloWorldClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }
}