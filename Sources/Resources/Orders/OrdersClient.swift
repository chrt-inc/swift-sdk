import Foundation

public final class OrdersClient: Sendable {
    public let expanded: ExpandedClient
    public let expandedList: ExpandedListClient
    public let draft: DraftClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.expanded = ExpandedClient(config: config)
        self.expandedList = ExpandedListClient(config: config)
        self.draft = DraftClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }

    /// Validates a draft order and stages all related entities in a transaction.
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