import Foundation

public final class OrdersClient: Sendable {
    public let expanded: ExpandedClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.expanded = ExpandedClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }

    /// Retrieves a list of expanded orders with optional filters and related data for shipper operators. | authz_personas=[shipper_org_operators] | (OrdersExpandedListForShipperReq) -> (OrdersExpandedListRes)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func postExpandedListForShipperOperatorsV1(request: Requests.OrdersExpandedListForShipperReq, requestOptions: RequestOptions? = nil) async throws -> OrdersExpandedListRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/orders/orders/expanded/list/for_shipper_operators/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: OrdersExpandedListRes.self
        )
    }

    /// Retrieves a list of expanded orders with optional filters and related data for forwarder operators. | authz_personas=[forwarder_org_operators] | (OrdersExpandedListForForwarderReq) -> (OrdersExpandedListRes)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func postExpandedListForForwarderOperatorsV1(request: Requests.OrdersExpandedListForForwarderReq, requestOptions: RequestOptions? = nil) async throws -> OrdersExpandedListRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/orders/orders/expanded/list/for_forwarder_operators/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: OrdersExpandedListRes.self
        )
    }

    /// Validates a draft order and stages all related entities in a transaction. | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func stageV1(orderId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/oort/orders/stage/v1/\(orderId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}