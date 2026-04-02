import Foundation

public final class ConnectionsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Lists shipper organizations based on the caller's organization type with optional search by company name or handle. | () -> (ShipperConnectionListRes)
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

    /// Lists courier organizations based on the caller's organization type with optional search by company name or handle. | () -> (CourierConnectionListRes)
    ///
    /// - Parameter search: Search by company name or handle
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listCouriersV1(search: String? = nil, page: Int? = nil, pageSize: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> CourierConnectionListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/orgs/connections/couriers/list/v1",
            queryParams: [
                "search": search.map { .string($0) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: CourierConnectionListRes.self
        )
    }

    /// Lists forwarder organizations based on the caller's organization type with optional search by company name or handle. | () -> (ForwarderConnectionListRes)
    ///
    /// - Parameter search: Search by company name or handle
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listForwardersV1(search: String? = nil, page: Int? = nil, pageSize: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> ForwarderConnectionListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/orgs/connections/forwarders/list/v1",
            queryParams: [
                "search": search.map { .string($0) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: ForwarderConnectionListRes.self
        )
    }

    /// Gets connection between caller's org and org with specified handle. | () -> (ShipperCourierConnection1 | ShipperForwarderConnection1 | ForwarderCourierConnection1 | None)
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

    /// Creates a new connection to a courier organization. Shippers and forwarders can initiate connections to couriers. | (CreateConnectionReq) -> (PydanticObjectId)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createConnectionToCourierV1(request: CreateConnectionReq, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/orgs/connections/create_connection_to_courier/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Creates a new connection to a shipper organization. Only forwarders can initiate connections to shippers. | (CreateConnectionReq) -> (PydanticObjectId)
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

    /// Creates a new connection to a forwarder organization. Only shippers can initiate connections to forwarders. | (CreateConnectionReq) -> (PydanticObjectId)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createConnectionToForwarderV1(request: CreateConnectionReq, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/orgs/connections/create_connection_to_forwarder/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }
}