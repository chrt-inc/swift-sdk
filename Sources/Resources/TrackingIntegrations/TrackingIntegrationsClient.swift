import Foundation

public final class TrackingIntegrationsClient: Sendable {
    public let tive: TiveClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.tive = TiveClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }
}