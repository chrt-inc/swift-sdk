import Foundation

public final class S3ObjectMetadataClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Retrieves the metadata for a task artifact S3 object, including blurhash for placeholder loading. | authz_personas=[courier_driver, courier_org_operators, shipper_org_operators, forwarder_org_operators] | () -> (TaskArtifactS3ObjectMetadata1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getV1(taskArtifactS3ObjectMetadataId: String, requestOptions: RequestOptions? = nil) async throws -> TaskArtifactS3ObjectMetadata1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/task_artifacts/s3_object_metadata/v1/\(taskArtifactS3ObjectMetadataId)",
            requestOptions: requestOptions,
            responseType: TaskArtifactS3ObjectMetadata1.self
        )
    }
}