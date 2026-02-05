import Foundation

public final class S3ObjectsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Retrieves the metadata for a line item group S3 object, including blurhash for placeholder loading. | authz_personas=[lig_org_operators, lig_driver] | () -> (LineItemGroupS3ObjectMetadata1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getS3ObjectMetadataV1(lineItemGroupS3ObjectMetadataId: String, requestOptions: RequestOptions? = nil) async throws -> LineItemGroupS3ObjectMetadata1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/billing/line_item_groups/s3_objects/s3_object_metadata/v1/\(lineItemGroupS3ObjectMetadataId)",
            requestOptions: requestOptions,
            responseType: LineItemGroupS3ObjectMetadata1.self
        )
    }

    /// Streams a line item group S3 object file from storage. | authz_personas=[lig_org_operators, lig_driver] | () -> (binary)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getV1(lineItemGroupS3ObjectMetadataId: String, requestOptions: RequestOptions? = nil) async throws -> Data {
        return try await httpClient.performRequest(
            method: .get,
            path: "/billing/line_item_groups/s3_objects/v1/\(lineItemGroupS3ObjectMetadataId)",
            requestOptions: requestOptions,
            responseType: Data.self
        )
    }

    /// Uploads a file (image, PDF, etc.) to a line item group. Automatic blurhash generation for images. | authz_personas=[lig_org_operators, lig_driver] | (UploadFile) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func addV1(lineItemGroupId: String, request: Requests.BodyLineItemGroupsS3ObjectPostAddV1BillingLineItemGroupsS3ObjectsAddV1LineItemGroupIdPost, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/billing/line_item_groups/s3_objects/add/v1/\(lineItemGroupId)",
            contentType: .multipartFormData,
            body: request.asMultipartFormData(),
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Deletes an S3 object metadata and the associated S3 object from a line item group. | authz_personas=[lig_org_operators, lig_driver] | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteV1(lineItemGroupS3ObjectMetadataId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/billing/line_item_groups/s3_objects/delete/v1/\(lineItemGroupS3ObjectMetadataId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}