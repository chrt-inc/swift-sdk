import Foundation

public final class ExpandedClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Fetches a single order for the shipper organization with optional expanded related data.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func postForShipperByOrderIdV1(orderIdOrShortId: String, request: OrderExpandedForShipperReq, requestOptions: RequestOptions? = nil) async throws -> OrderExpandedForShipper {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/orders/expanded/for_shipper/v1/\(orderIdOrShortId)",
            body: request,
            requestOptions: requestOptions,
            responseType: OrderExpandedForShipper.self
        )
    }

    /// Fetches a single order for the organization that created it with optional expanded related data.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func postForOrderCreatorByOrderIdV1(orderIdOrShortId: String, request: OrderExpandedForOrderCreatorReq, requestOptions: RequestOptions? = nil) async throws -> OrderExpandedForOrderCreator {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/orders/expanded/for_order_creator/v1/\(orderIdOrShortId)",
            body: request,
            requestOptions: requestOptions,
            responseType: OrderExpandedForOrderCreator.self
        )
    }
}