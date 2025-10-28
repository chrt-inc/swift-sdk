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
    public func getByOrderIdOrShortIdV1(orderIdOrShortId: String, requestOptions: RequestOptions? = nil) async throws -> GetOrderRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/orders/v1/\(orderIdOrShortId)",
            requestOptions: requestOptions,
            responseType: GetOrderRes.self
        )
    }

    /// Cancels an order and all associated task groups and line item groups.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func cancelByOrderIdOrShortIdV1(orderIdOrShortId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/oort/orders/cancel/v1/\(orderIdOrShortId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Creates a comprehensive order with task groups, tasks, milestones, and cargo.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createV1(request: Requests.CreateOrderReq, requestOptions: RequestOptions? = nil) async throws -> CreateOrderRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/orders/create/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: CreateOrderRes.self
        )
    }

    /// Fetches an order with optional expanded data for task groups, tasks, milestones, and cargos.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func postExpandedV1(request: Requests.OrdersExpandedReq, requestOptions: RequestOptions? = nil) async throws -> OrdersExpandedRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/orders/expanded/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: OrdersExpandedRes.self
        )
    }

    /// Lists all orders for the authenticated shipper organization.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listByShipperOrgIdV1(requestOptions: RequestOptions? = nil) async throws -> [Order1] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/orders/list/by_shipper_org_id/v1",
            requestOptions: requestOptions,
            responseType: [Order1].self
        )
    }

    /// Lists all orders assigned to the authenticated courier organization.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listByCourierOrgIdV1(requestOptions: RequestOptions? = nil) async throws -> [Order1] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/orders/list/by_courier_org_id/v1",
            requestOptions: requestOptions,
            responseType: [Order1].self
        )
    }
}