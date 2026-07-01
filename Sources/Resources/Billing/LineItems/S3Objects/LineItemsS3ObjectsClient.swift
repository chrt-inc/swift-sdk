import Foundation

public final class LineItemsS3ObjectsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Uploads a file to a line item. Automatic blurhash generation for images. | authz_personas=[lig_org_operators, lig_driver] | (UploadFile) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func addV1(lineItemId: String, request: Requests.BodyLineItemsS3ObjectPostAddV1, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/billing/line_items/s3_objects/add/v1/\(lineItemId)",
            contentType: .multipartFormData,
            body: request.asMultipartFormData(),
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Deletes an S3 object metadata and the associated S3 object from a line item. | authz_personas=[lig_org_operators, lig_driver] | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteV1(lineItemS3ObjectMetadataId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/billing/line_items/s3_objects/delete/v1/\(lineItemS3ObjectMetadataId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Retrieves metadata for a line item S3 object. | authz_personas=[lig_org_operators, lig_driver] | () -> (LineItemS3ObjectMetadata1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getS3ObjectMetadataV1(lineItemS3ObjectMetadataId: String, requestOptions: RequestOptions? = nil) async throws -> LineItemS3ObjectMetadata1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/billing/line_items/s3_objects/s3_object_metadata/v1/\(lineItemS3ObjectMetadataId)",
            requestOptions: requestOptions,
            responseType: LineItemS3ObjectMetadata1.self
        )
    }

    /// Streams a line item S3 object file from storage. | authz_personas=[lig_org_operators, lig_driver] | () -> (binary)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getV1(lineItemS3ObjectMetadataId: String, requestOptions: RequestOptions? = nil) async throws -> Data {
        return try await httpClient.performRequest(
            method: .get,
            path: "/billing/line_items/s3_objects/v1/\(lineItemS3ObjectMetadataId)",
            requestOptions: requestOptions,
            responseType: Data.self
        )
    }
}