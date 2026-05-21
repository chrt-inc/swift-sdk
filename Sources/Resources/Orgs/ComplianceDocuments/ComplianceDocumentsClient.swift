import Foundation

public final class ComplianceDocumentsClient: Sendable {
    public let s3Object: S3ObjectClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.s3Object = S3ObjectClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }

    /// Lists compliance documents for the caller's provider organization. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (list[OrgComplianceDocument1])
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(requestOptions: RequestOptions? = nil) async throws -> [OrgComplianceDocument1] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/orgs/compliance_documents/list/v1",
            requestOptions: requestOptions,
            responseType: [OrgComplianceDocument1].self
        )
    }

    /// Retrieves one compliance document for the caller's provider organization. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (OrgComplianceDocument1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getV1(orgComplianceDocumentId: String, requestOptions: RequestOptions? = nil) async throws -> OrgComplianceDocument1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/orgs/compliance_documents/v1/\(orgComplianceDocumentId)",
            requestOptions: requestOptions,
            responseType: OrgComplianceDocument1.self
        )
    }

    /// Creates a compliance document record for the caller's provider organization. | authz: allowed_org_types=[provider], min_org_role=administrator | (OrgComplianceDocumentClientCreate1) -> (OrgComplianceDocument1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createV1(request: Requests.OrgComplianceDocumentClientCreate1, requestOptions: RequestOptions? = nil) async throws -> OrgComplianceDocument1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/orgs/compliance_documents/create/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: OrgComplianceDocument1.self
        )
    }
}