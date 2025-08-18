import Foundation

public final class OrdersClient: Sendable {
    public let full: FullClient
    private let httpClient: HTTPClient

    public init(config: ClientConfig) {
        self.full = FullClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }

    /// Retrieves an order by its full ID or short ID.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getByOrderIdOrShortId(orderIdOrShortId: String, requestOptions: RequestOptions? = nil) async throws -> GetOrderRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/orders/\(orderIdOrShortId)",
            requestOptions: requestOptions,
            responseType: GetOrderRes.self
        )
    }

    /// Cancels an order and all associated task groups and line item groups.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func cancelByOrderIdOrShortId(orderIdOrShortId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/oort/orders/cancel/\(orderIdOrShortId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Creates a comprehensive order with task groups, tasks, milestones, and cargo.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func create(request: CreateOrderReq, requestOptions: RequestOptions? = nil) async throws -> CreateOrderRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/orders/create",
            body: request,
            requestOptions: requestOptions,
            responseType: CreateOrderRes.self
        )
    }

    /// Lists all orders for the authenticated shipper organization.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listByShipperOrgId(requestOptions: RequestOptions? = nil) async throws -> [Order1] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/orders/list/by_shipper_org_id",
            requestOptions: requestOptions,
            responseType: [Order1].self
        )
    }

    /// Lists all orders assigned to the authenticated courier organization.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listByCourierOrgId(requestOptions: RequestOptions? = nil) async throws -> [Order1] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/orders/list/by_courier_org_id",
            requestOptions: requestOptions,
            responseType: [Order1].self
        )
    }
}