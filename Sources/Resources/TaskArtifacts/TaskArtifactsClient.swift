import Foundation

public final class TaskArtifactsClient: Sendable {
    public let images: ImagesClient
    public let blurhash: BlurhashClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.images = ImagesClient(config: config)
        self.blurhash = BlurhashClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }
}