import Foundation

public final class BlurhashClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Retrieves the blurhash string for a task_artifact image for fast placeholder loading. | () -> (BlurHash)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getByMetadataIdV1(taskArtifactS3ObjectMetadataId: String, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/task_artifacts/blurhash/v1/\(taskArtifactS3ObjectMetadataId)",
            requestOptions: requestOptions,
            responseType: String.self
        )
    }
}