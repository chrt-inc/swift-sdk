import Foundation

public final class ExpandedClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Fetches a single draft order with optional expanded related data for provider operators in the creating org. | authz: allowed_org_types=[provider], min_org_role=operator | (OrderAndTaskGroupExpandedReq) -> (OrderDraftExpandedForCoordinator)
    ///
    /// - Parameter orderRef: Order ID, short ID, or off-chrt reference ID
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func forCoordinatorOperatorsV1(orderRef: String, request: OrderAndTaskGroupExpandedReq, requestOptions: RequestOptions? = nil) async throws -> OrderDraftExpandedForCoordinator {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/order_drafts/expanded/for_coordinator_operators/v1/\(orderRef)",
            body: request,
            requestOptions: requestOptions,
            responseType: OrderDraftExpandedForCoordinator.self
        )
    }

    /// Fetches a single draft order with optional expanded related data for shipper operators in the creating org. | authz: allowed_org_types=[shipper], min_org_role=operator | (OrderAndTaskGroupExpandedReq) -> (OrderDraftExpandedForShipper)
    ///
    /// - Parameter orderRef: Order ID, short ID, or off-chrt reference ID
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func forShipperOperatorsV1(orderRef: String, request: OrderAndTaskGroupExpandedReq, requestOptions: RequestOptions? = nil) async throws -> OrderDraftExpandedForShipper {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/order_drafts/expanded/for_shipper_operators/v1/\(orderRef)",
            body: request,
            requestOptions: requestOptions,
            responseType: OrderDraftExpandedForShipper.self
        )
    }
}