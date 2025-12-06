import Foundation

public final class TaskGroupsS3ObjectClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Retrieves the metadata for a task group S3 object, including blurhash for placeholder loading. | authz_personas=[courier_driver, courier_org_operators, shipper_org_operators, forwarder_org_operators] | () -> (TaskGroupS3ObjectMetadata1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getS3ObjectMetadataV1(taskGroupS3ObjectMetadataId: String, requestOptions: RequestOptions? = nil) async throws -> TaskGroupS3ObjectMetadata1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/task_groups/s3_object/s3_object_metadata/v1/\(taskGroupS3ObjectMetadataId)",
            requestOptions: requestOptions,
            responseType: TaskGroupS3ObjectMetadata1.self
        )
    }

    /// Streams a task group S3 object file from storage. | authz_personas=[courier_driver, courier_org_operators, shipper_org_operators, forwarder_org_operators] | () -> (binary)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getV1(taskGroupS3ObjectMetadataId: String, requestOptions: RequestOptions? = nil) async throws -> Data {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/task_groups/s3_object/v1/\(taskGroupS3ObjectMetadataId)",
            requestOptions: requestOptions,
            responseType: Data.self
        )
    }

    /// Uploads an image file to a task group with automatic blurhash generation. | authz_personas=[courier_driver, courier_org_operators, forwarder_org_operators, shipper_org_operators] | (UploadFile) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func addV1(taskGroupId: String, request: Requests.BodyPostTaskGroupsS3ObjectAddV1OortTaskGroupsS3ObjectAddV1TaskGroupIdPost, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/task_groups/s3_object/add/v1/\(taskGroupId)",
            contentType: .multipartFormData,
            body: request.asMultipartFormData(),
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Deletes an S3 object metadata and the associated S3 object from a task group. Only the uploader or an operator from the uploading org can delete. | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteV1(taskGroupS3ObjectMetadataId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/oort/task_groups/s3_object/delete/v1/\(taskGroupS3ObjectMetadataId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}