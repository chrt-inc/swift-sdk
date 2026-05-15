import Foundation

public final class LineItemsClient: Sendable {
    public let s3Objects: LineItemsS3ObjectsClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.s3Objects = LineItemsS3ObjectsClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }
}