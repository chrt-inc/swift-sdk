import Foundation

public final class OrgInfoForConnectionsCourierClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Retrieves courier organization connection information for the caller's organization. | () -> (CourierOrgInfoForConnections1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getV1(requestOptions: RequestOptions? = nil) async throws -> CourierOrgInfoForConnections1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/connections/org_info_for_connections/courier/v1",
            requestOptions: requestOptions,
            responseType: CourierOrgInfoForConnections1.self
        )
    }

    /// Retrieves list of connected courier organizations for forwarder or shipper organizations. Not accessible by courier organizations. | () -> (list[CourierOrgInfoForConnections1])
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(requestOptions: RequestOptions? = nil) async throws -> [CourierOrgInfoForConnections1] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/connections/org_info_for_connections/courier/list/v1",
            requestOptions: requestOptions,
            responseType: [CourierOrgInfoForConnections1].self
        )
    }

    /// Creates courier organization connection information. Fails if already exists. | (CourierOrgInfoForConnectionsClientCreate1) -> (PydanticObjectId)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createV1(request: Requests.CourierOrgInfoForConnectionsClientCreate1, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/connections/org_info_for_connections/courier/create/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Updates existing courier organization connection information. | (CourierOrgInfoForConnectionsClientUpdate1) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateV1(request: Requests.CourierOrgInfoForConnectionsClientUpdate1, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/connections/org_info_for_connections/courier/update/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}