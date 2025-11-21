import Foundation

public final class OrgInfoForConnectionsShipperClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Retrieves shipper organization connection information for the authenticated organization. | () -> (ShipperOrgInfoForConnections1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getV1(requestOptions: RequestOptions? = nil) async throws -> ShipperOrgInfoForConnections1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/connections/org_info_for_connections/shipper/v1",
            requestOptions: requestOptions,
            responseType: ShipperOrgInfoForConnections1.self
        )
    }

    /// Creates shipper organization connection information. Fails if already exists. | (ShipperOrgInfoForConnectionsClientCreate1) -> (PydanticObjectId)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createV1(request: Requests.ShipperOrgInfoForConnectionsClientCreate1, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/connections/org_info_for_connections/shipper/create/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Updates existing shipper organization connection information. | (ShipperOrgInfoForConnectionsClientUpdate1) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateV1(request: Requests.ShipperOrgInfoForConnectionsClientUpdate1, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/connections/org_info_for_connections/shipper/update/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}