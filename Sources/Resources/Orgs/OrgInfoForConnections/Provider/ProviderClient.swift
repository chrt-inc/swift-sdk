import Foundation

public final class ProviderClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Retrieves provider organization connection information for the caller's organization. | () -> (ProviderOrgInfoForConnections1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getV1(requestOptions: RequestOptions? = nil) async throws -> ProviderOrgInfoForConnections1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/orgs/org_info_for_connections/provider/v1",
            requestOptions: requestOptions,
            responseType: ProviderOrgInfoForConnections1.self
        )
    }

    /// Retrieves list of provider org info documents for providers connected to the caller. Shippers see providers via shipper_provider_connections; providers see other providers via provider_provider_connections (in either direction). | () -> (list[ProviderOrgInfoForConnections1])
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(requestOptions: RequestOptions? = nil) async throws -> [ProviderOrgInfoForConnections1] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/orgs/org_info_for_connections/provider/list/v1",
            requestOptions: requestOptions,
            responseType: [ProviderOrgInfoForConnections1].self
        )
    }

    /// Creates provider organization connection information. Fails if already exists. | (ProviderOrgInfoForConnectionsClientCreate1) -> (PydanticObjectId)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createV1(request: Requests.ProviderOrgInfoForConnectionsClientCreate1, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/orgs/org_info_for_connections/provider/create/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Updates existing provider organization connection information. | (ProviderOrgInfoForConnectionsClientUpdate1) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateV1(request: Requests.ProviderOrgInfoForConnectionsClientUpdate1, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/orgs/org_info_for_connections/provider/update/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}