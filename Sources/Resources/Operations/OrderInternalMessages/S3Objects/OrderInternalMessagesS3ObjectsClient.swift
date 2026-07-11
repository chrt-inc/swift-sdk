import Foundation

public final class OrderInternalMessagesS3ObjectsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Uploads a file to the caller's OrderInternalMessages for this order (lazy-creates the messages doc). Automatic blurhash generation for images. | authz_personas=[coordinator_org_operators, order_executor_org_operators] | (UploadFile) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func addV1(orderId: String, request: Requests.BodyPostOrderInternalMessagesS3ObjectsAddV1, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/operations/order_internal_messages/s3_objects/add/v1/\(orderId)",
            contentType: .multipartFormData,
            body: request.asMultipartFormData(),
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Deletes an S3 object metadata and the associated S3 object from order internal messages. Only the uploader or an operator from the uploading org can delete. | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteV1(orderInternalMessageS3ObjectMetadataId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/operations/order_internal_messages/s3_objects/delete/v1/\(orderInternalMessageS3ObjectMetadataId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Retrieves metadata for an order internal messages S3 object. | authz: min_org_role=operator | () -> (OrderInternalMessageS3ObjectMetadata1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getS3ObjectMetadataV1(orderInternalMessageS3ObjectMetadataId: String, requestOptions: RequestOptions? = nil) async throws -> OrderInternalMessageS3ObjectMetadata1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/operations/order_internal_messages/s3_objects/s3_object_metadata/v1/\(orderInternalMessageS3ObjectMetadataId)",
            requestOptions: requestOptions,
            responseType: OrderInternalMessageS3ObjectMetadata1.self
        )
    }

    /// Streams an order internal messages S3 object file from storage. | authz: min_org_role=operator | () -> (binary)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getV1(orderInternalMessageS3ObjectMetadataId: String, requestOptions: RequestOptions? = nil) async throws -> Data {
        return try await httpClient.performRequest(
            method: .get,
            path: "/operations/order_internal_messages/s3_objects/v1/\(orderInternalMessageS3ObjectMetadataId)",
            requestOptions: requestOptions,
            responseType: Data.self
        )
    }
}