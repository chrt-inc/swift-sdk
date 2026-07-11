import Foundation

public final class OrderInternalMessagesClient: Sendable {
    public let s3Objects: OrderInternalMessagesS3ObjectsClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.s3Objects = OrderInternalMessagesS3ObjectsClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }

    /// Appends a message to the caller's OrderInternalMessages for this order (lazy-creates the messages doc). | authz_personas=[coordinator_org_operators, order_executor_org_operators] | (OrderInternalMessagesAddMessageReq) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func addMessageV1(orderId: String, request: Requests.OrderInternalMessagesAddMessageReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/operations/order_internal_messages/add_message/v1/\(orderId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Returns the caller's OrderInternalMessages for this order, or 404 if none exist yet. | authz_personas=[coordinator_org_operators, order_executor_org_operators] | () -> (OrderInternalMessages1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getByOrderV1(orderId: String, requestOptions: RequestOptions? = nil) async throws -> OrderInternalMessages1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/operations/order_internal_messages/by_order/v1/\(orderId)",
            requestOptions: requestOptions,
            responseType: OrderInternalMessages1.self
        )
    }

    /// Deletes a message from the caller's OrderInternalMessages for this order. | authz_personas=[coordinator_org_operators, order_executor_org_operators] | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteMessageV1(orderId: String, messageId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/operations/order_internal_messages/delete_message/v1/\(orderId)/\(messageId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}