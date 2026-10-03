import Foundation

public final class AgentClient: Sendable {
    public let livekit: LivekitClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.livekit = LivekitClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }
}