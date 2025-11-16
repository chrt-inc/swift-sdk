import Foundation

public final class DraftClient: Sendable {
    public let expanded: DraftExpandedClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.expanded = DraftExpandedClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }
}