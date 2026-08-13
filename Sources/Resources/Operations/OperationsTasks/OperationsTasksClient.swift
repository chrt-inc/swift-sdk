import Foundation

public final class OperationsTasksClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Appends a comment to an OperationsTask's comment thread. Returns the new comment id. | authz: min_org_role=operator | (OperationsTaskAddCommentReq1) -> (str)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.operations.operationsTasks.addCommentV1(
    ///         taskId: "task_id",
    ///         request: .init(comment: "comment")
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func addCommentV1(taskId: String, request: Requests.OperationsTaskAddCommentReq1, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/operations/operations_tasks/add_comment/v1/\(taskId)",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Adds the same ISO 8601 duration to every selected OperationsTask's deadline_timestamp. Missing or cross-org task ids are skipped and reported through updated_count. | authz: min_org_role=operator | (OperationsTasksApplyTimeDeltaToDeadlineTimestampsReq1) -> (OperationsTasksDeadlineTimestampsUpdateRes1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.operations.operationsTasks.applyTimeDeltaToDeadlineTimestampsV1(request: .init(
    ///         operationsTaskIds: [
    ///             "operations_task_ids"
    ///         ],
    ///         timeDelta: "time_delta"
    ///     ))
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func applyTimeDeltaToDeadlineTimestampsV1(request: Requests.OperationsTasksApplyTimeDeltaToDeadlineTimestampsReq1, requestOptions: RequestOptions? = nil) async throws -> OperationsTasksDeadlineTimestampsUpdateRes1 {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/operations/operations_tasks/apply_time_delta_to_deadline_timestamps/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: OperationsTasksDeadlineTimestampsUpdateRes1.self
        )
    }

    /// Deletes a comment from an OperationsTask's comment thread. 404 if the comment isn't found. | authz: min_org_role=operator | () -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.operations.operationsTasks.deleteCommentV1(
    ///         taskId: "task_id",
    ///         commentId: "comment_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteCommentV1(taskId: String, commentId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/operations/operations_tasks/delete_comment/v1/\(taskId)/\(commentId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Lists OperationsTasks with task-list, department, and assigned-user details. | authz: min_org_role=operator | () -> (OperationsTaskExpandedListRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.operations.operationsTasks.expandedListV1(
    ///         sortBy: .deadlineTimestamp,
    ///         sortOrder: .asc,
    ///         page: 1,
    ///         pageSize: 1,
    ///         search: "search",
    ///         filterOrderIds: [
    ///             "filter_order_ids"
    ///         ],
    ///         filterOrderShortId: "filter_order_short_id",
    ///         filterOrderOffChrtReferenceId: "filter_order_off_chrt_reference_id",
    ///         filterDepartmentId: "filter_department_id",
    ///         filterTaskType: [
    ///             .reviewOrderDetails
    ///         ],
    ///         filterStatus: [
    ///             .notStarted
    ///         ],
    ///         filterAssignedUserId: "filter_assigned_user_id",
    ///         filterSourceTaskListId: "filter_source_task_list_id",
    ///         filterDeadlineGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterDeadlineLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter sortBy: Field to sort by
    /// - Parameter sortOrder: Sort order (asc or desc)
    /// - Parameter search: Search by title or description
    /// - Parameter filterOrderIds: Filter to tasks on any of these order ids (e.g. the order_ids returned by the orders typeahead for a chosen short_id / off-chrt reference id)
    /// - Parameter filterOrderShortId: Filter to tasks for this order short ID
    /// - Parameter filterOrderOffChrtReferenceId: Filter to tasks for this order off-CHRT reference ID
    /// - Parameter filterDepartmentId: Filter to tasks routed to this department (desk queue)
    /// - Parameter filterTaskType: Filter by task type(s). Defaults to all types.
    /// - Parameter filterStatus: Filter by status(es). Defaults to all statuses.
    /// - Parameter filterAssignedUserId: Filter to tasks this user is directly assigned to
    /// - Parameter filterSourceTaskListId: Filter to tasks created from this OperationsTaskList
    /// - Parameter filterDeadlineGte: Filter to tasks with deadline >= this timestamp
    /// - Parameter filterDeadlineLte: Filter to tasks with deadline <= this timestamp
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func expandedListV1(sortBy: OperationsTaskSortByEnum? = nil, sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, search: String? = nil, filterOrderIds: [String]? = nil, filterOrderShortId: String? = nil, filterOrderOffChrtReferenceId: String? = nil, filterDepartmentId: String? = nil, filterTaskType: [OperationsTaskTypeEnum]? = nil, filterStatus: [OperationsTaskStatusEnum]? = nil, filterAssignedUserId: String? = nil, filterSourceTaskListId: String? = nil, filterDeadlineGte: Date? = nil, filterDeadlineLte: Date? = nil, requestOptions: RequestOptions? = nil) async throws -> OperationsTaskExpandedListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/operations/operations_tasks/expanded/list/v1",
            queryParams: [
                "sort_by": sortBy.map { .string($0.rawValue) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }, 
                "search": search.map { .string($0) }, 
                "filter_order_ids": filterOrderIds.map { .stringArray($0) }, 
                "filter_order_short_id": filterOrderShortId.map { .string($0) }, 
                "filter_order_off_chrt_reference_id": filterOrderOffChrtReferenceId.map { .string($0) }, 
                "filter_department_id": filterDepartmentId.map { .string($0) }, 
                "filter_task_type": filterTaskType.map { .unknown($0) }, 
                "filter_status": filterStatus.map { .unknown($0) }, 
                "filter_assigned_user_id": filterAssignedUserId.map { .string($0) }, 
                "filter_source_task_list_id": filterSourceTaskListId.map { .string($0) }, 
                "filter_deadline_gte": filterDeadlineGte.map { .date($0) }, 
                "filter_deadline_lte": filterDeadlineLte.map { .date($0) }
            ],
            requestOptions: requestOptions,
            responseType: OperationsTaskExpandedListRes.self
        )
    }

    /// Lists OperationsTasks for the caller's organization, with order ids / order short id / order off-CHRT reference id / department / type / status / assignee / source task list / deadline filtering, sorting, and pagination. | authz: min_org_role=operator | () -> (OperationsTaskListRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.operations.operationsTasks.listV1(
    ///         sortBy: .deadlineTimestamp,
    ///         sortOrder: .asc,
    ///         page: 1,
    ///         pageSize: 1,
    ///         search: "search",
    ///         filterOrderIds: [
    ///             "filter_order_ids"
    ///         ],
    ///         filterOrderShortId: "filter_order_short_id",
    ///         filterOrderOffChrtReferenceId: "filter_order_off_chrt_reference_id",
    ///         filterDepartmentId: "filter_department_id",
    ///         filterTaskType: [
    ///             .reviewOrderDetails
    ///         ],
    ///         filterStatus: [
    ///             .notStarted
    ///         ],
    ///         filterAssignedUserId: "filter_assigned_user_id",
    ///         filterSourceTaskListId: "filter_source_task_list_id",
    ///         filterDeadlineGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterDeadlineLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter sortBy: Field to sort by
    /// - Parameter sortOrder: Sort order (asc or desc)
    /// - Parameter search: Search by title or description
    /// - Parameter filterOrderIds: Filter to tasks on any of these order ids (e.g. the order_ids returned by the orders typeahead for a chosen short_id / off-chrt reference id)
    /// - Parameter filterOrderShortId: Filter to tasks for this order short ID
    /// - Parameter filterOrderOffChrtReferenceId: Filter to tasks for this order off-CHRT reference ID
    /// - Parameter filterDepartmentId: Filter to tasks routed to this department (desk queue)
    /// - Parameter filterTaskType: Filter by task type(s). Defaults to all types.
    /// - Parameter filterStatus: Filter by status(es). Defaults to all statuses.
    /// - Parameter filterAssignedUserId: Filter to tasks this user is directly assigned to
    /// - Parameter filterSourceTaskListId: Filter to tasks created from this OperationsTaskList
    /// - Parameter filterDeadlineGte: Filter to tasks with deadline >= this timestamp
    /// - Parameter filterDeadlineLte: Filter to tasks with deadline <= this timestamp
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(sortBy: OperationsTaskSortByEnum? = nil, sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, search: String? = nil, filterOrderIds: [String]? = nil, filterOrderShortId: String? = nil, filterOrderOffChrtReferenceId: String? = nil, filterDepartmentId: String? = nil, filterTaskType: [OperationsTaskTypeEnum]? = nil, filterStatus: [OperationsTaskStatusEnum]? = nil, filterAssignedUserId: String? = nil, filterSourceTaskListId: String? = nil, filterDeadlineGte: Date? = nil, filterDeadlineLte: Date? = nil, requestOptions: RequestOptions? = nil) async throws -> OperationsTaskListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/operations/operations_tasks/list/v1",
            queryParams: [
                "sort_by": sortBy.map { .string($0.rawValue) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }, 
                "search": search.map { .string($0) }, 
                "filter_order_ids": filterOrderIds.map { .stringArray($0) }, 
                "filter_order_short_id": filterOrderShortId.map { .string($0) }, 
                "filter_order_off_chrt_reference_id": filterOrderOffChrtReferenceId.map { .string($0) }, 
                "filter_department_id": filterDepartmentId.map { .string($0) }, 
                "filter_task_type": filterTaskType.map { .unknown($0) }, 
                "filter_status": filterStatus.map { .unknown($0) }, 
                "filter_assigned_user_id": filterAssignedUserId.map { .string($0) }, 
                "filter_source_task_list_id": filterSourceTaskListId.map { .string($0) }, 
                "filter_deadline_gte": filterDeadlineGte.map { .date($0) }, 
                "filter_deadline_lte": filterDeadlineLte.map { .date($0) }
            ],
            requestOptions: requestOptions,
            responseType: OperationsTaskListRes.self
        )
    }

    /// Sets each selected OperationsTask's deadline_timestamp to its requested timestamp. Missing or cross-org task ids are skipped and reported through updated_count. | authz: min_org_role=operator | (OperationsTasksSetDeadlineTimestampsReq1) -> (OperationsTasksDeadlineTimestampsUpdateRes1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.operations.operationsTasks.setDeadlineTimestampsV1(request: .init(updates: [
    ///         OperationsTaskDeadlineTimestampUpdate1(
    ///             deadlineTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///             operationsTaskId: "operations_task_id"
    ///         )
    ///     ]))
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func setDeadlineTimestampsV1(request: Requests.OperationsTasksSetDeadlineTimestampsReq1, requestOptions: RequestOptions? = nil) async throws -> OperationsTasksDeadlineTimestampsUpdateRes1 {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/operations/operations_tasks/set_deadline_timestamps/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: OperationsTasksDeadlineTimestampsUpdateRes1.self
        )
    }

    /// Sets the same status on each selected OperationsTask. Completing tasks stamps completed_at/by while other statuses clear them; missing or cross-org ids are skipped. | authz: min_org_role=operator | (OperationsTasksSetStatusReq1) -> (OperationsTasksStatusUpdateRes1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.operations.operationsTasks.setStatusV1(request: .init(
    ///         operationsTaskIds: [
    ///             "operations_task_ids"
    ///         ],
    ///         status: .notStarted
    ///     ))
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func setStatusV1(request: Requests.OperationsTasksSetStatusReq1, requestOptions: RequestOptions? = nil) async throws -> OperationsTasksStatusUpdateRes1 {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/operations/operations_tasks/set_status/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: OperationsTasksStatusUpdateRes1.self
        )
    }

    /// Creates a new OperationsTask on an Order where the caller is coordinator or executor. Seeds department_id from the caller's Order department fields. | authz: min_org_role=operator | (OperationsTaskClientCreate1) -> (PydanticObjectId)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.operations.operationsTasks.createV1(request: .init(
    ///         description: "description",
    ///         orderId: "order_id",
    ///         schemaVersion: 1,
    ///         taskType: .reviewOrderDetails,
    ///         title: "title"
    ///     ))
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createV1(request: Requests.OperationsTaskClientCreate1, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/operations/operations_tasks/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Retrieves a single OperationsTask by id. | authz: min_org_role=operator | () -> (OperationsTask1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.operations.operationsTasks.getV1(taskId: "task_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getV1(taskId: String, requestOptions: RequestOptions? = nil) async throws -> OperationsTask1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/operations/operations_tasks/v1/\(taskId)",
            requestOptions: requestOptions,
            responseType: OperationsTask1.self
        )
    }

    /// Hard-deletes an OperationsTask. | authz: min_org_role=operator | () -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.operations.operationsTasks.deleteV1(taskId: "task_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteV1(taskId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/operations/operations_tasks/v1/\(taskId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Updates editable fields (task_type, title, description, deadline_timestamp, assigned_user_ids) on an OperationsTask. | authz: min_org_role=operator | (OperationsTaskClientUpdate1) -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.operations.operationsTasks.updateV1(
    ///         taskId: "task_id",
    ///         request: .init()
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateV1(taskId: String, request: Requests.OperationsTaskClientUpdate1, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/operations/operations_tasks/v1/\(taskId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}