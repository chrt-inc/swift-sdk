import Foundation

public final class ConnectionsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Lists shipper organizations connected to the caller (caller must be a provider) with optional search by company name or handle. | () -> (ShipperConnectionListRes)
    ///
    /// - Parameter search: Search by company name or handle
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listShippersV1(search: String? = nil, page: Int? = nil, pageSize: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> ShipperConnectionListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/orgs/connections/shippers/list/v1",
            queryParams: [
                "search": search.map { .string($0) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: ShipperConnectionListRes.self
        )
    }

    /// Lists provider organizations connected to the caller. Shippers see providers from shipper_provider_connections; providers see other providers from provider_provider_connections (in either direction). | () -> (ProviderConnectionListRes)
    ///
    /// - Parameter search: Search by company name or handle
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listProvidersV1(search: String? = nil, page: Int? = nil, pageSize: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> ProviderConnectionListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/orgs/connections/providers/list/v1",
            queryParams: [
                "search": search.map { .string($0) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: ProviderConnectionListRes.self
        )
    }

    /// Gets the connection between caller's org and the org with the specified handle. | () -> (ShipperProviderConnection1 | ProviderProviderConnection1 | None)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getByHandleV1(handle: String, requestOptions: RequestOptions? = nil) async throws -> ConnectionsGetByHandleV1Response? {
        return try await httpClient.performRequest(
            method: .get,
            path: "/orgs/connections/by_handle/\(handle)/v1",
            requestOptions: requestOptions,
            responseType: ConnectionsGetByHandleV1Response?.self
        )
    }

    /// Creates a new connection to a provider organization. Shippers create a shipper-provider connection. Providers create a provider-provider connection where the initiator is the coordinator (payer) and the target is the executor (payee). | (CreateConnectionReq) -> (PydanticObjectId)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createConnectionToProviderV1(request: CreateConnectionReq, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/orgs/connections/create_connection_to_provider/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Creates a new connection to a shipper organization. Only providers can initiate connections to shippers. | (CreateConnectionReq) -> (PydanticObjectId)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createConnectionToShipperV1(request: CreateConnectionReq, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/orgs/connections/create_connection_to_shipper/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Toggles `auto_assign_enabled` on a provider-provider connection — the executor org's opt-in for receiving direct (non-bidding) task-group assignments. Executor org only, min role: administrator. | (ProviderProviderUpdateAutoAssignReq) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func setProviderProviderAutoAssignV1(connectionId: String, request: Requests.ProviderProviderUpdateAutoAssignReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/orgs/connections/set_provider_provider_auto_assign/v1/\(connectionId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}