import Foundation

public final class FullClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// (DEPRECATED) Retrieves an order with all related task groups, tasks, milestones, and cargo information.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getByOrderIdOrShortIdV1(orderIdOrShortId: String, requestOptions: RequestOptions? = nil) async throws -> GetOrderFullRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/orders/v1/\(orderIdOrShortId)/full",
            requestOptions: requestOptions,
            responseType: GetOrderFullRes.self
        )
    }

    /// Lists all orders for the authenticated shipper organization with complete task groups, tasks, milestones, and cargo details.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listByShipperOrgIdV1(requestOptions: RequestOptions? = nil) async throws -> [GetOrderFullRes] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/orders/list/by_shipper_org_id/full/v1",
            requestOptions: requestOptions,
            responseType: [GetOrderFullRes].self
        )
    }

    /// Lists all orders assigned to the authenticated courier organization with complete task groups, tasks, milestones, and cargo details.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listByCourierOrgIdV1(requestOptions: RequestOptions? = nil) async throws -> [GetOrderFullRes] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/orders/list/by_courier_org_id/full/v1",
            requestOptions: requestOptions,
            responseType: [GetOrderFullRes].self
        )
    }
}