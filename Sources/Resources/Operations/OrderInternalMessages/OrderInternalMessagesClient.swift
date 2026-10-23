import Foundation

public final class OrderInternalMessagesClient: Sendable {
    public let s3Objects: S3ObjectsClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.s3Objects = S3ObjectsClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }

    /// Appends a message to the caller's OrderInternalMessages for this order (lazy-creates the messages doc). | authz_personas=[coordinator_org_operators, order_executor_org_operators] | (OrderInternalMessagesAddMessageReq) -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.operations.orderInternalMessages.addMessageV1(
    ///         orderId: "order_id",
    ///         request: .init(message: "message")
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
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
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.operations.orderInternalMessages.getByOrderV1(orderId: "order_id")
    /// }
    ///
    /// try await main()
    /// ```
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
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.operations.orderInternalMessages.deleteMessageV1(
    ///         orderId: "order_id",
    ///         messageId: "message_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
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

    /// Marks the caller's org internal messages on this order as read by the caller up to the given message timestamp; clients should batch calls. | authz_personas=[coordinator_org_operators, order_executor_org_operators] | (OrderInternalMessagesMarkReadReq) -> (OrderInternalMessagesReadState1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.operations.orderInternalMessages.markReadV1(
    ///         orderId: "order_id",
    ///         request: .init(lastReadMessageTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func markReadV1(orderId: String, request: Requests.OrderInternalMessagesMarkReadReq, requestOptions: RequestOptions? = nil) async throws -> OrderInternalMessagesReadState1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/operations/order_internal_messages/mark_read/v1/\(orderId)",
            body: request,
            requestOptions: requestOptions,
            responseType: OrderInternalMessagesReadState1.self
        )
    }

    /// Lists each of the caller's org users' read markers on the org's internal messages for this order; a message is seen by a user when their last_read_message_timestamp is at or after it. | authz_personas=[coordinator_org_operators, order_executor_org_operators] | () -> (OrderInternalMessagesReadStateListRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.operations.orderInternalMessages.listReadStatesV1(orderId: "order_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listReadStatesV1(orderId: String, requestOptions: RequestOptions? = nil) async throws -> OrderInternalMessagesReadStateListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/operations/order_internal_messages/read_states/list/v1/\(orderId)",
            requestOptions: requestOptions,
            responseType: OrderInternalMessagesReadStateListRes.self
        )
    }

    /// Lists the caller's org internal message threads across orders, newest message first, each with its last message and the caller's unread count. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (OrderInternalMessageThreadListRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.operations.orderInternalMessages.listThreadsV1(
    ///         filterOrderStatuses: [
    ///             .draft
    ///         ],
    ///         filterOrderIds: [
    ///             "filter_order_ids"
    ///         ],
    ///         filterUnread: true,
    ///         filterLastMessageAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterLastMessageAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         page: 1,
    ///         pageSize: 1
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter filterOrderStatuses: Filter by order status(es); defaults to draft, staged, and in_progress
    /// - Parameter filterOrderIds: Filter by order id(s)
    /// - Parameter filterUnread: True keeps threads with messages the caller hasn't read; False keeps fully read threads
    /// - Parameter filterLastMessageAtTimestampGte: Filter last message timestamp >= value
    /// - Parameter filterLastMessageAtTimestampLte: Filter last message timestamp <= value
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listThreadsV1(filterOrderStatuses: [OrderStatusEnum1]? = nil, filterOrderIds: [String]? = nil, filterUnread: Bool? = nil, filterLastMessageAtTimestampGte: Date? = nil, filterLastMessageAtTimestampLte: Date? = nil, page: Int? = nil, pageSize: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> OrderInternalMessageThreadListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/operations/order_internal_messages/threads/list/v1",
            queryParams: [
                "filter_order_statuses": filterOrderStatuses.map { .unknown($0) }, 
                "filter_order_ids": filterOrderIds.map { .stringArray($0) }, 
                "filter_unread": filterUnread.map { .bool($0) }, 
                "filter_last_message_at_timestamp_gte": filterLastMessageAtTimestampGte.map { .date($0) }, 
                "filter_last_message_at_timestamp_lte": filterLastMessageAtTimestampLte.map { .date($0) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: OrderInternalMessageThreadListRes.self
        )
    }
}