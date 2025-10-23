import Foundation

public final class BlurhashClient: Sendable {
    private let httpClient: HTTPClient

    public init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Retrieves the blurhash string for a milestone image for fast placeholder loading.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getByMetadataIdV1(milestoneS3ObjectMetadataId: String, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/milestones/blurhash/v1/\(milestoneS3ObjectMetadataId)",
            requestOptions: requestOptions,
            responseType: String.self
        )
    }
}