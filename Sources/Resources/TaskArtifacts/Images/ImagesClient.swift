import Foundation

public final class ImagesClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Streams a task_artifact image file from S3 storage. | () -> (StreamingResponse)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getByMetadataIdV1(taskArtifactS3ObjectMetadataId: String, requestOptions: RequestOptions? = nil) async throws -> Data {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/task_artifacts/images/v1/\(taskArtifactS3ObjectMetadataId)",
            requestOptions: requestOptions,
            responseType: Data.self
        )
    }
}