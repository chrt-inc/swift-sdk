import Foundation

public final class CasesS3ObjectsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Retrieves metadata for a case S3 object. | authz: min_org_role=operator | () -> (CaseS3ObjectMetadata1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getS3ObjectMetadataV1(caseS3ObjectMetadataId: String, requestOptions: RequestOptions? = nil) async throws -> CaseS3ObjectMetadata1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/operations/cases/s3_objects/s3_object_metadata/v1/\(caseS3ObjectMetadataId)",
            requestOptions: requestOptions,
            responseType: CaseS3ObjectMetadata1.self
        )
    }

    /// Streams a case S3 object file from storage. | authz: min_org_role=operator | () -> (binary)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getV1(caseS3ObjectMetadataId: String, requestOptions: RequestOptions? = nil) async throws -> Data {
        return try await httpClient.performRequest(
            method: .get,
            path: "/operations/cases/s3_objects/v1/\(caseS3ObjectMetadataId)",
            requestOptions: requestOptions,
            responseType: Data.self
        )
    }

    /// Uploads a file to a case. Automatic blurhash generation for images. | authz: min_org_role=operator | (UploadFile) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func addV1(caseId: String, request: Requests.BodyPostCasesS3ObjectsAddV1OperationsCasesS3ObjectsAddV1CaseIdPost, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/operations/cases/s3_objects/add/v1/\(caseId)",
            contentType: .multipartFormData,
            body: request.asMultipartFormData(),
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Deletes an S3 object metadata and the associated S3 object from a case. Only the uploader or an operator from the uploading org can delete. | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteV1(caseS3ObjectMetadataId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/operations/cases/s3_objects/delete/v1/\(caseS3ObjectMetadataId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}