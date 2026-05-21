import Foundation

public final class S3ObjectClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Retrieves metadata for an organization compliance document S3 object. | authz: allowed_org_types=[provider], min_org_role=administrator | () -> (OrgComplianceDocumentS3ObjectMetadata1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getS3ObjectMetadataV1(orgComplianceDocumentS3ObjectMetadataId: String, requestOptions: RequestOptions? = nil) async throws -> OrgComplianceDocumentS3ObjectMetadata1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/orgs/compliance_documents/s3_object/s3_object_metadata/v1/\(orgComplianceDocumentS3ObjectMetadataId)",
            requestOptions: requestOptions,
            responseType: OrgComplianceDocumentS3ObjectMetadata1.self
        )
    }

    /// Streams an organization compliance document S3 object file from storage. | authz: allowed_org_types=[provider], min_org_role=administrator | () -> (binary)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getV1(orgComplianceDocumentS3ObjectMetadataId: String, requestOptions: RequestOptions? = nil) async throws -> Data {
        return try await httpClient.performRequest(
            method: .get,
            path: "/orgs/compliance_documents/s3_object/v1/\(orgComplianceDocumentS3ObjectMetadataId)",
            requestOptions: requestOptions,
            responseType: Data.self
        )
    }

    /// Uploads a file to an organization compliance document. Automatic blurhash generation for images. | authz: allowed_org_types=[provider], min_org_role=administrator | (UploadFile) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func addV1(orgComplianceDocumentId: String, request: Requests.BodyPostOrgComplianceDocumentsS3ObjectAddV1OrgsComplianceDocumentsS3ObjectAddV1OrgComplianceDocumentIdPost, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/orgs/compliance_documents/s3_object/add/v1/\(orgComplianceDocumentId)",
            contentType: .multipartFormData,
            body: request.asMultipartFormData(),
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Deletes an organization compliance document S3 object and metadata. | authz: allowed_org_types=[provider], min_org_role=administrator | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteV1(orgComplianceDocumentS3ObjectMetadataId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/orgs/compliance_documents/s3_object/delete/v1/\(orgComplianceDocumentS3ObjectMetadataId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}