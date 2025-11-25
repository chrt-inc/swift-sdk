import Foundation

public final class OrdersClient: Sendable {
    public let expanded: OrdersExpandedClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.expanded = OrdersExpandedClient(config: config)
        self.httpClient = HTTPClient(config: config)
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