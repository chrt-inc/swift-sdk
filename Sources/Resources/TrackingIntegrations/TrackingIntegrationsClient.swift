import Foundation

public final class TrackingIntegrationsClient: Sendable {
    public let reelables: ReelablesClient
    public let tive: TiveClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.reelables = ReelablesClient(config: config)
        self.tive = TiveClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }
}