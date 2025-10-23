import Foundation

public final class OrgConnectionInfosShipperClient: Sendable {
    private let httpClient: HTTPClient

    public init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Retrieves shipper organization connection information for the authenticated organization.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getV1(requestOptions: RequestOptions? = nil) async throws -> ShipperOrgConnectionInfo1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/org_connection_infos/shipper/v1",
            requestOptions: requestOptions,
            responseType: ShipperOrgConnectionInfo1.self
        )
    }

    /// Creates shipper organization connection information. Fails if already exists.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createV1(request: Requests.ShipperOrgConnectionInfoClientCreate1, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/org_connection_infos/shipper/create/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Updates existing shipper organization connection information.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateV1(request: Requests.ShipperOrgConnectionInfoClientUpdate1, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/oort/org_connection_infos/shipper/update/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}