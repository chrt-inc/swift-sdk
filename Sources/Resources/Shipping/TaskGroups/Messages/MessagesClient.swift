import Foundation

public final class MessagesClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Lists the caller's org drivers with the newest message across their task group threads, most recently messaged first. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (TaskGroupMessageDriverListRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.taskGroups.messages.listDriversForProviderOperatorsV1(
    ///         includeDriversWithoutMessages: true,
    ///         page: 1,
    ///         pageSize: 1,
    ///         filterStatuses: [
    ///             .draft
    ///         ],
    ///         filterDriverIds: [
    ///             "filter_driver_ids"
    ///         ],
    ///         filterDriverStatuses: [
    ///             .unassigned
    ///         ],
    ///         filterLastMessageAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterLastMessageAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter includeDriversWithoutMessages: Include drivers with no matching messages, listed last
    /// - Parameter filterStatuses: Filter by task group status(es); defaults to staged and in_progress
    /// - Parameter filterDriverIds: Filter by driver id(s)
    /// - Parameter filterDriverStatuses: Filter by driver status(es); assigned and in_progress are drivers with active task groups
    /// - Parameter filterLastMessageAtTimestampGte: Filter last message timestamp >= value
    /// - Parameter filterLastMessageAtTimestampLte: Filter last message timestamp <= value
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listDriversForProviderOperatorsV1(includeDriversWithoutMessages: Bool? = nil, page: Int? = nil, pageSize: Int? = nil, filterStatuses: [TaskGroupStatusEnum1]? = nil, filterDriverIds: [String]? = nil, filterDriverStatuses: [DriverStatusEnum]? = nil, filterLastMessageAtTimestampGte: Date? = nil, filterLastMessageAtTimestampLte: Date? = nil, requestOptions: RequestOptions? = nil) async throws -> TaskGroupMessageDriverListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping/task_groups/messages/drivers/list/for_provider_operators/v1",
            queryParams: [
                "include_drivers_without_messages": includeDriversWithoutMessages.map { .bool($0) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }, 
                "filter_statuses": filterStatuses.map { .unknown($0) }, 
                "filter_driver_ids": filterDriverIds.map { .stringArray($0) }, 
                "filter_driver_statuses": filterDriverStatuses.map { .unknown($0) }, 
                "filter_last_message_at_timestamp_gte": filterLastMessageAtTimestampGte.map { .date($0) }, 
                "filter_last_message_at_timestamp_lte": filterLastMessageAtTimestampLte.map { .date($0) }
            ],
            requestOptions: requestOptions,
            responseType: TaskGroupMessageDriverListRes.self
        )
    }

    /// Marks the caller's messages on a task group as read up to the given message timestamp; clients should batch calls (e.g. every few seconds). | authz_personas=[driver_for_executor, executor_org_operators, coordinator_org_operators, shipper_org_operators] | (TaskGroupMessagesMarkReadReq) -> (TaskGroupMessageReadState1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.taskGroups.messages.markReadV1(
    ///         taskGroupId: "task_group_id",
    ///         request: .init(lastReadMessageTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func markReadV1(taskGroupId: String, request: Requests.TaskGroupMessagesMarkReadReq, requestOptions: RequestOptions? = nil) async throws -> TaskGroupMessageReadState1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/task_groups/messages/mark_read/v1/\(taskGroupId)",
            body: request,
            requestOptions: requestOptions,
            responseType: TaskGroupMessageReadState1.self
        )
    }

    /// Lists every participant's read marker on a task group's messages; a message is seen by a user when their last_read_message_timestamp is at or after it. | authz_personas=[driver_for_executor, executor_org_operators, coordinator_org_operators, shipper_org_operators] | () -> (TaskGroupMessageReadStateListRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.taskGroups.messages.listReadStatesV1(taskGroupId: "task_group_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listReadStatesV1(taskGroupId: String, requestOptions: RequestOptions? = nil) async throws -> TaskGroupMessageReadStateListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping/task_groups/messages/read_states/list/v1/\(taskGroupId)",
            requestOptions: requestOptions,
            responseType: TaskGroupMessageReadStateListRes.self
        )
    }

    /// Lists message threads on task groups assigned to the caller (a driver), newest message first, each with its last message and the caller's unread count. | authz: allowed_org_types=[provider], min_org_role=member | () -> (TaskGroupMessageThreadListRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.taskGroups.messages.listThreadsForDriverV1(
    ///         filterStatuses: [
    ///             .draft
    ///         ],
    ///         filterUnread: true,
    ///         filterLastMessageAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterLastMessageAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         includeThreadsWithoutMessages: true,
    ///         page: 1,
    ///         pageSize: 1
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter filterStatuses: Filter by task group status(es); defaults to staged and in_progress
    /// - Parameter filterUnread: True keeps threads with messages the caller hasn't read; False keeps fully read threads
    /// - Parameter filterLastMessageAtTimestampGte: Filter last message timestamp >= value
    /// - Parameter filterLastMessageAtTimestampLte: Filter last message timestamp <= value
    /// - Parameter includeThreadsWithoutMessages: Include task groups that have no messages yet
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listThreadsForDriverV1(filterStatuses: [TaskGroupStatusEnum1]? = nil, filterUnread: Bool? = nil, filterLastMessageAtTimestampGte: Date? = nil, filterLastMessageAtTimestampLte: Date? = nil, includeThreadsWithoutMessages: Bool? = nil, page: Int? = nil, pageSize: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> TaskGroupMessageThreadListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping/task_groups/messages/threads/list/for_driver/v1",
            queryParams: [
                "filter_statuses": filterStatuses.map { .unknown($0) }, 
                "filter_unread": filterUnread.map { .bool($0) }, 
                "filter_last_message_at_timestamp_gte": filterLastMessageAtTimestampGte.map { .date($0) }, 
                "filter_last_message_at_timestamp_lte": filterLastMessageAtTimestampLte.map { .date($0) }, 
                "include_threads_without_messages": includeThreadsWithoutMessages.map { .bool($0) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: TaskGroupMessageThreadListRes.self
        )
    }

    /// Lists message threads on task groups the caller's provider org coordinates or executes, newest message first, each with its last message. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (TaskGroupMessageThreadListRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.taskGroups.messages.listThreadsForProviderOperatorsV1(
    ///         providerRole: .all,
    ///         includeThreadsWithoutMessages: true,
    ///         page: 1,
    ///         pageSize: 1,
    ///         filterStatuses: [
    ///             .draft
    ///         ],
    ///         filterDriverId: "filter_driver_id",
    ///         filterTaskGroupTypes: [
    ///             .chrtGroundProvider
    ///         ],
    ///         filterOrderIds: [
    ///             "filter_order_ids"
    ///         ],
    ///         filterShipperOrgId: "filter_shipper_org_id",
    ///         filterOffChrtShipperOrgDataId: "filter_off_chrt_shipper_org_data_id",
    ///         filterLastMessageFromDriver: true,
    ///         filterUnread: true,
    ///         filterLastMessageAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterLastMessageAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter includeThreadsWithoutMessages: Include task groups that have no messages yet
    /// - Parameter filterStatuses: Filter by task group status(es); defaults to staged and in_progress
    /// - Parameter filterDriverId: Filter by assigned driver
    /// - Parameter filterTaskGroupTypes: Filter by task group type(s)
    /// - Parameter filterOrderIds: Filter by order id(s)
    /// - Parameter filterShipperOrgId: Filter by on-chrt shipper org
    /// - Parameter filterOffChrtShipperOrgDataId: Filter by off-chrt shipper org
    /// - Parameter filterLastMessageFromDriver: True keeps threads whose last message was sent by the assigned driver (needs reply); False keeps the rest
    /// - Parameter filterUnread: True keeps threads with messages the caller hasn't read; False keeps fully read threads
    /// - Parameter filterLastMessageAtTimestampGte: Filter last message timestamp >= value
    /// - Parameter filterLastMessageAtTimestampLte: Filter last message timestamp <= value
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listThreadsForProviderOperatorsV1(providerRole: TaskGroupProviderRoleFilterEnum? = nil, includeThreadsWithoutMessages: Bool? = nil, page: Int? = nil, pageSize: Int? = nil, filterStatuses: [TaskGroupStatusEnum1]? = nil, filterDriverId: String? = nil, filterTaskGroupTypes: [TaskGroupTypeEnum1]? = nil, filterOrderIds: [String]? = nil, filterShipperOrgId: String? = nil, filterOffChrtShipperOrgDataId: String? = nil, filterLastMessageFromDriver: Bool? = nil, filterUnread: Bool? = nil, filterLastMessageAtTimestampGte: Date? = nil, filterLastMessageAtTimestampLte: Date? = nil, requestOptions: RequestOptions? = nil) async throws -> TaskGroupMessageThreadListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping/task_groups/messages/threads/list/for_provider_operators/v1",
            queryParams: [
                "provider_role": providerRole.map { .string($0.rawValue) }, 
                "include_threads_without_messages": includeThreadsWithoutMessages.map { .bool($0) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }, 
                "filter_statuses": filterStatuses.map { .unknown($0) }, 
                "filter_driver_id": filterDriverId.map { .string($0) }, 
                "filter_task_group_types": filterTaskGroupTypes.map { .unknown($0) }, 
                "filter_order_ids": filterOrderIds.map { .stringArray($0) }, 
                "filter_shipper_org_id": filterShipperOrgId.map { .string($0) }, 
                "filter_off_chrt_shipper_org_data_id": filterOffChrtShipperOrgDataId.map { .string($0) }, 
                "filter_last_message_from_driver": filterLastMessageFromDriver.map { .bool($0) }, 
                "filter_unread": filterUnread.map { .bool($0) }, 
                "filter_last_message_at_timestamp_gte": filterLastMessageAtTimestampGte.map { .date($0) }, 
                "filter_last_message_at_timestamp_lte": filterLastMessageAtTimestampLte.map { .date($0) }
            ],
            requestOptions: requestOptions,
            responseType: TaskGroupMessageThreadListRes.self
        )
    }
}