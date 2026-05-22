import Foundation

public final class DriversComplianceDocumentsClient: Sendable {
    public let s3Object: ComplianceDocumentsS3ObjectClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.s3Object = ComplianceDocumentsS3ObjectClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }

    /// Lists compliance documents for one driver in the caller's provider organization. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (list[DriverComplianceDocument1])
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(driverId: String, requestOptions: RequestOptions? = nil) async throws -> [DriverComplianceDocument1] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping/drivers/compliance_documents/list/v1/\(driverId)",
            requestOptions: requestOptions,
            responseType: [DriverComplianceDocument1].self
        )
    }

    /// Retrieves one driver compliance document in the caller's provider organization. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (DriverComplianceDocument1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getV1(driverComplianceDocumentId: String, requestOptions: RequestOptions? = nil) async throws -> DriverComplianceDocument1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping/drivers/compliance_documents/v1/\(driverComplianceDocumentId)",
            requestOptions: requestOptions,
            responseType: DriverComplianceDocument1.self
        )
    }

    /// Creates a compliance document record for a driver in the caller's provider organization. | authz: allowed_org_types=[provider], min_org_role=administrator | (DriverComplianceDocumentClientCreate1) -> (DriverComplianceDocument1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createV1(driverId: String, request: Requests.DriverComplianceDocumentClientCreate1, requestOptions: RequestOptions? = nil) async throws -> DriverComplianceDocument1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/drivers/compliance_documents/create/v1/\(driverId)",
            body: request,
            requestOptions: requestOptions,
            responseType: DriverComplianceDocument1.self
        )
    }

    /// Updates a driver compliance document in the caller's provider organization. | authz: allowed_org_types=[provider], min_org_role=administrator | (DriverComplianceDocumentClientUpdate1) -> (DriverComplianceDocument1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateV1(driverComplianceDocumentId: String, request: Requests.DriverComplianceDocumentClientUpdate1, requestOptions: RequestOptions? = nil) async throws -> DriverComplianceDocument1 {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/shipping/drivers/compliance_documents/update/v1/\(driverComplianceDocumentId)",
            body: request,
            requestOptions: requestOptions,
            responseType: DriverComplianceDocument1.self
        )
    }
}