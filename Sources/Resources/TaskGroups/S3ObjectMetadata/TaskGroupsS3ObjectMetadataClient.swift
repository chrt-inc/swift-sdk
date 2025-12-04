import Foundation

public final class TaskGroupsS3ObjectMetadataClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Retrieves the metadata for a task group S3 object, including blurhash for placeholder loading. | authz_personas=[courier_driver, courier_org_operators, shipper_org_operators, forwarder_org_operators] | () -> (TaskGroupS3ObjectMetadata1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getV1(taskGroupS3ObjectMetadataId: String, requestOptions: RequestOptions? = nil) async throws -> TaskGroupS3ObjectMetadata1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/task_groups/s3_object_metadata/v1/\(taskGroupS3ObjectMetadataId)",
            requestOptions: requestOptions,
            responseType: TaskGroupS3ObjectMetadata1.self
        )
    }
}