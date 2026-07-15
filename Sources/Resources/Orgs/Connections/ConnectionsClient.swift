import Foundation

public final class ConnectionsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Gets the connection between caller's org and the org with the specified handle. | () -> (ShipperProviderConnection1 | ProviderProviderConnection1 | None)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getByHandleV1(handle: String, requestOptions: RequestOptions? = nil) async throws -> ConnectionsGetByHandleV1Response? {
        return try await httpClient.performRequest(
            method: .get,
            path: "/orgs/connections/by_handle/v1/\(handle)",
            requestOptions: requestOptions,
            responseType: ConnectionsGetByHandleV1Response?.self
        )
    }

    /// Creates a connection to an on-CHRT provider; provider callers become the paying coordinator. | (CreateConnectionReq) -> (PydanticObjectId)
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

    /// Creates a connection to an on-CHRT shipper. | authz: allowed_org_types=[provider] | (CreateConnectionReq) -> (PydanticObjectId)
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

    /// Lists provider-provider connections with the caller's coordinator or executor role, optionally sorted by counterparty proximity. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (ProviderProviderConnectionListRes)
    ///
    /// - Parameter search: Search counterparty company name or handle
    /// - Parameter latitude: Latitude for proximity sorting
    /// - Parameter longitude: Longitude for proximity sorting
    /// - Parameter filterCallerConnectionRole: Filter by the caller's role in the connection
    /// - Parameter filterConnected: Filter by connection status
    /// - Parameter filterAutoAssignEnabled: Filter by executor auto-assign consent
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listProviderProviderV1(search: String? = nil, page: Int? = nil, pageSize: Int? = nil, latitude: Double? = nil, longitude: Double? = nil, filterCallerConnectionRole: ProviderProviderConnectionCallerRoleEnum? = nil, filterConnected: Bool? = nil, filterAutoAssignEnabled: Bool? = nil, requestOptions: RequestOptions? = nil) async throws -> ProviderProviderConnectionListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/orgs/connections/provider_provider/list/v1",
            queryParams: [
                "search": search.map { .string($0) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }, 
                "latitude": latitude.map { .double($0) }, 
                "longitude": longitude.map { .double($0) }, 
                "filter_caller_connection_role": filterCallerConnectionRole.map { .string($0.rawValue) }, 
                "filter_connected": filterConnected.map { .bool($0) }, 
                "filter_auto_assign_enabled": filterAutoAssignEnabled.map { .bool($0) }
            ],
            requestOptions: requestOptions,
            responseType: ProviderProviderConnectionListRes.self
        )
    }

    /// Lists coordinator connections for the calling shipper. | authz: allowed_org_types=[shipper] | () -> (ShipperProviderConnectionsForShipperListRes)
    ///
    /// - Parameter search: Search by company name or handle
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listProvidersV1(search: String? = nil, page: Int? = nil, pageSize: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> ShipperProviderConnectionsForShipperListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/orgs/connections/providers/list/v1",
            queryParams: [
                "search": search.map { .string($0) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: ShipperProviderConnectionsForShipperListRes.self
        )
    }

    /// Sets an executor's consent to direct task-group assignment. | authz: allowed_org_types=[provider], min_org_role=administrator | (ProviderProviderUpdateAutoAssignReq) -> (bool)
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

    /// Sets or clears the coordinator's default department for a shipper connection. | authz: allowed_org_types=[provider], min_org_role=operator | (ShipperProviderConnectionClientUpdate1) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func setShipperProviderDefaultDepartmentV1(connectionId: String, request: Requests.ShipperProviderConnectionClientUpdate1, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/orgs/connections/set_shipper_provider_default_department/v1/\(connectionId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Lists on- and off-CHRT shipper connections owned by the caller. | authz: allowed_org_types=[provider] | () -> (ShipperProviderConnectionsForCoordinatorListRes)
    ///
    /// - Parameter search: Search by company name or handle
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listShippersV1(search: String? = nil, page: Int? = nil, pageSize: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> ShipperProviderConnectionsForCoordinatorListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/orgs/connections/shippers/list/v1",
            queryParams: [
                "search": search.map { .string($0) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: ShipperProviderConnectionsForCoordinatorListRes.self
        )
    }
}