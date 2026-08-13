import Foundation

public final class TaskGroupsS3ObjectClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Uploads a file (image, PDF, etc.) to a task group. Automatic blurhash generation for images. | authz_personas=[driver_for_executor, executor_org_operators, coordinator_org_operators, shipper_org_operators] | (UploadFile) -> (TaskGroupS3ObjectMetadata1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.taskGroups.s3Object.addV1(
    ///         taskGroupId: "task_group_id",
    ///         request: .init(file: .init(data: Data("".utf8)))
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func addV1(taskGroupId: String, request: Requests.BodyPostTaskGroupsS3ObjectAddV1, requestOptions: RequestOptions? = nil) async throws -> TaskGroupS3ObjectMetadata1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/task_groups/s3_object/add/v1/\(taskGroupId)",
            contentType: .multipartFormData,
            body: request.asMultipartFormData(),
            requestOptions: requestOptions,
            responseType: TaskGroupS3ObjectMetadata1.self
        )
    }

    /// Deletes an S3 object metadata and the associated S3 object from a task group. Only the uploader or an operator from the uploading org can delete. | () -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.taskGroups.s3Object.deleteV1(taskGroupS3ObjectMetadataId: "task_group_s3_object_metadata_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteV1(taskGroupS3ObjectMetadataId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/shipping/task_groups/s3_object/delete/v1/\(taskGroupS3ObjectMetadataId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Retrieves the metadata for a task group S3 object, including blurhash for placeholder loading. | authz_personas=[driver_for_executor, executor_org_operators, shipper_org_operators, coordinator_org_operators] | () -> (TaskGroupS3ObjectMetadata1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.taskGroups.s3Object.getS3ObjectMetadataV1(taskGroupS3ObjectMetadataId: "task_group_s3_object_metadata_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getS3ObjectMetadataV1(taskGroupS3ObjectMetadataId: String, requestOptions: RequestOptions? = nil) async throws -> TaskGroupS3ObjectMetadata1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping/task_groups/s3_object/s3_object_metadata/v1/\(taskGroupS3ObjectMetadataId)",
            requestOptions: requestOptions,
            responseType: TaskGroupS3ObjectMetadata1.self
        )
    }

    /// Streams a task group S3 object file from storage. | authz_personas=[driver_for_executor, executor_org_operators, shipper_org_operators, coordinator_org_operators] | () -> (binary)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.taskGroups.s3Object.getV1(taskGroupS3ObjectMetadataId: "task_group_s3_object_metadata_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getV1(taskGroupS3ObjectMetadataId: String, requestOptions: RequestOptions? = nil) async throws -> Data {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping/task_groups/s3_object/v1/\(taskGroupS3ObjectMetadataId)",
            requestOptions: requestOptions,
            responseType: Data.self
        )
    }
}