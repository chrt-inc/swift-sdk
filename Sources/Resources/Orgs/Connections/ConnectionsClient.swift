import Foundation

public final class ConnectionsClient: Sendable {
    public let coordinators: CoordinatorsClient
    public let executors: ExecutorsClient
    public let shippers: ShippersClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.coordinators = CoordinatorsClient(config: config)
        self.executors = ExecutorsClient(config: config)
        self.shippers = ShippersClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }

    /// Gets the connection between caller's org and the org with the specified handle. | () -> (ShipperCoordinatorConnection1 | CoordinatorExecutorConnection1 | None)
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

    /// Lists the caller's coordinator connections with filtering, pagination, and identity search. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (CoordinatorExecutorConnectionsForExecutorListRes)
    ///
    /// - Parameter search: Search by organization identity details
    /// - Parameter filterAutoAssignEnabled: Filter by executor auto-assign consent
    /// - Parameter filterConnected: Filter by connection status
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listCoordinatorsForExecutorV1(search: String? = nil, page: Int? = nil, pageSize: Int? = nil, filterAutoAssignEnabled: Bool? = nil, filterConnected: Bool? = nil, requestOptions: RequestOptions? = nil) async throws -> CoordinatorExecutorConnectionsForExecutorListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/orgs/connections/coordinators/list/for_executor/v1",
            queryParams: [
                "search": search.map { .string($0) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }, 
                "filter_auto_assign_enabled": filterAutoAssignEnabled.map { .bool($0) }, 
                "filter_connected": filterConnected.map { .bool($0) }
            ],
            requestOptions: requestOptions,
            responseType: CoordinatorExecutorConnectionsForExecutorListRes.self
        )
    }

    /// Lists the caller's coordinator connections with filtering, pagination, and identity search. | authz: allowed_org_types=[shipper] | () -> (ShipperCoordinatorConnectionsForShipperListRes)
    ///
    /// - Parameter search: Search by organization identity details
    /// - Parameter filterConnected: Filter by connection status
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listCoordinatorsForShipperV1(search: String? = nil, page: Int? = nil, pageSize: Int? = nil, filterConnected: Bool? = nil, requestOptions: RequestOptions? = nil) async throws -> ShipperCoordinatorConnectionsForShipperListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/orgs/connections/coordinators/list/for_shipper/v1",
            queryParams: [
                "search": search.map { .string($0) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }, 
                "filter_connected": filterConnected.map { .bool($0) }
            ],
            requestOptions: requestOptions,
            responseType: ShipperCoordinatorConnectionsForShipperListRes.self
        )
    }

    /// Creates a shipper-coordinator or coordinator-executor connection to an on-CHRT provider. | (CreateConnectionReq) -> (PydanticObjectId)
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

    /// Creates a shipper-coordinator connection to an on-CHRT shipper. | authz: allowed_org_types=[provider] | (CreateConnectionReq) -> (PydanticObjectId)
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

    /// Lists the caller's executor connections nearest to a location, with filtering and pagination. Executors without registered addresses follow geocoded results. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (CoordinatorExecutorConnectionsForCoordinatorGeoSearchListRes)
    ///
    /// - Parameter nearLatitude: Geo-search latitude
    /// - Parameter nearLongitude: Geo-search longitude
    /// - Parameter filterAutoAssignEnabled: Filter by executor auto-assign consent
    /// - Parameter filterConnected: Filter by connection status
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listExecutorsGeoSearchForCoordinatorV1(nearLatitude: Double, nearLongitude: Double, page: Int? = nil, pageSize: Int? = nil, filterAutoAssignEnabled: Bool? = nil, filterConnected: Bool? = nil, requestOptions: RequestOptions? = nil) async throws -> CoordinatorExecutorConnectionsForCoordinatorGeoSearchListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/orgs/connections/executors/geo_search/list/for_coordinator/v1",
            queryParams: [
                "near_latitude": .double(nearLatitude), 
                "near_longitude": .double(nearLongitude), 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }, 
                "filter_auto_assign_enabled": filterAutoAssignEnabled.map { .bool($0) }, 
                "filter_connected": filterConnected.map { .bool($0) }
            ],
            requestOptions: requestOptions,
            responseType: CoordinatorExecutorConnectionsForCoordinatorGeoSearchListRes.self
        )
    }

    /// Lists the caller's executor connections with filtering, pagination, and identity search. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (CoordinatorExecutorConnectionsForCoordinatorListRes)
    ///
    /// - Parameter search: Search by organization identity details
    /// - Parameter filterAutoAssignEnabled: Filter by executor auto-assign consent
    /// - Parameter filterConnected: Filter by connection status
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listExecutorsForCoordinatorV1(search: String? = nil, page: Int? = nil, pageSize: Int? = nil, filterAutoAssignEnabled: Bool? = nil, filterConnected: Bool? = nil, requestOptions: RequestOptions? = nil) async throws -> CoordinatorExecutorConnectionsForCoordinatorListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/orgs/connections/executors/list/for_coordinator/v1",
            queryParams: [
                "search": search.map { .string($0) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }, 
                "filter_auto_assign_enabled": filterAutoAssignEnabled.map { .bool($0) }, 
                "filter_connected": filterConnected.map { .bool($0) }
            ],
            requestOptions: requestOptions,
            responseType: CoordinatorExecutorConnectionsForCoordinatorListRes.self
        )
    }

    /// Sets an executor's consent to direct task-group assignment. | authz: allowed_org_types=[provider], min_org_role=administrator | (CoordinatorExecutorUpdateAutoAssignReq) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func setCoordinatorExecutorAutoAssignV1(connectionId: String, request: Requests.CoordinatorExecutorUpdateAutoAssignReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/orgs/connections/set_coordinator_executor_auto_assign/v1/\(connectionId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Sets or clears the coordinator's default department for a shipper-coordinator connection. | authz: allowed_org_types=[provider], min_org_role=operator | (ShipperCoordinatorConnectionClientUpdate1) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func setShipperCoordinatorDefaultDepartmentV1(connectionId: String, request: Requests.ShipperCoordinatorConnectionClientUpdate1, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/orgs/connections/set_shipper_coordinator_default_department/v1/\(connectionId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Lists the caller's shipper connections with filtering, pagination, and identity search. | authz: allowed_org_types=[provider] | () -> (ShipperCoordinatorConnectionsForCoordinatorListRes)
    ///
    /// - Parameter search: Search by organization identity details
    /// - Parameter filterConnected: Filter by connection status
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listShippersForCoordinatorV1(search: String? = nil, page: Int? = nil, pageSize: Int? = nil, filterConnected: Bool? = nil, requestOptions: RequestOptions? = nil) async throws -> ShipperCoordinatorConnectionsForCoordinatorListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/orgs/connections/shippers/list/for_coordinator/v1",
            queryParams: [
                "search": search.map { .string($0) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }, 
                "filter_connected": filterConnected.map { .bool($0) }
            ],
            requestOptions: requestOptions,
            responseType: ShipperCoordinatorConnectionsForCoordinatorListRes.self
        )
    }
}