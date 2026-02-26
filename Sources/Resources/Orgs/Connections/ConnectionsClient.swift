import Foundation

public final class ConnectionsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Lists shipper organizations based on the caller's organization type. Couriers see connected shippers, forwarders see connected shippers. | () -> (list[ShipperConnectionRes])
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listShippersV1(requestOptions: RequestOptions? = nil) async throws -> [ShipperConnectionRes] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/orgs/connections/shippers/list/v1",
            requestOptions: requestOptions,
            responseType: [ShipperConnectionRes].self
        )
    }

    /// Lists courier organizations based on the caller's organization type. Shippers see connected couriers, forwarders see connected couriers. | () -> (list[CourierConnectionRes])
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listCouriersV1(requestOptions: RequestOptions? = nil) async throws -> [CourierConnectionRes] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/orgs/connections/couriers/list/v1",
            requestOptions: requestOptions,
            responseType: [CourierConnectionRes].self
        )
    }

    /// Lists forwarder organizations based on the caller's organization type. Shippers see connected forwarders, couriers see connected forwarders. | () -> (list[ForwarderConnectionRes])
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listForwardersV1(requestOptions: RequestOptions? = nil) async throws -> [ForwarderConnectionRes] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/orgs/connections/forwarders/list/v1",
            requestOptions: requestOptions,
            responseType: [ForwarderConnectionRes].self
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