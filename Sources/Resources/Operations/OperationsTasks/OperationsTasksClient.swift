import Foundation

public final class OperationsTasksClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Appends a comment to an OperationsTask's comment thread. Returns the new comment id. | authz: min_org_role=operator | (OperationsTaskAddCommentReq1) -> (str)
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
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteCommentV1(taskId: String, commentId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/operations/operations_tasks/delete_comment/v1/\(taskId)/\(commentId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Lists OperationsTasks with department and assigned-user details. | authz: min_org_role=operator | () -> (OperationsTaskExpandedListRes)
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
    /// - Parameter filterDeadlineGte: Filter to tasks with deadline >= this timestamp
    /// - Parameter filterDeadlineLte: Filter to tasks with deadline <= this timestamp
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func expandedListV1(sortBy: OperationsTaskSortByEnum? = nil, sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, search: String? = nil, filterOrderIds: String? = nil, filterOrderShortId: String? = nil, filterOrderOffChrtReferenceId: String? = nil, filterDepartmentId: String? = nil, filterTaskType: OperationsTaskTypeEnum? = nil, filterStatus: OperationsTaskStatusEnum? = nil, filterAssignedUserId: String? = nil, filterDeadlineGte: Date? = nil, filterDeadlineLte: Date? = nil, requestOptions: RequestOptions? = nil) async throws -> OperationsTaskExpandedListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/operations/operations_tasks/expanded/list/v1",
            queryParams: [
                "sort_by": sortBy.map { .string($0.rawValue) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }, 
                "search": search.map { .string($0) }, 
                "filter_order_ids": filterOrderIds.map { .string($0) }, 
                "filter_order_short_id": filterOrderShortId.map { .string($0) }, 
                "filter_order_off_chrt_reference_id": filterOrderOffChrtReferenceId.map { .string($0) }, 
                "filter_department_id": filterDepartmentId.map { .string($0) }, 
                "filter_task_type": filterTaskType.map { .string($0.rawValue) }, 
                "filter_status": filterStatus.map { .string($0.rawValue) }, 
                "filter_assigned_user_id": filterAssignedUserId.map { .string($0) }, 
                "filter_deadline_gte": filterDeadlineGte.map { .date($0) }, 
                "filter_deadline_lte": filterDeadlineLte.map { .date($0) }
            ],
            requestOptions: requestOptions,
            responseType: OperationsTaskExpandedListRes.self
        )
    }

    /// Lists OperationsTasks for the caller's organization, with order ids / order short id / order off-CHRT reference id / department / type / status / assignee / deadline filtering, sorting, and pagination. | authz: min_org_role=operator | () -> (OperationsTaskListRes)
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
    /// - Parameter filterDeadlineGte: Filter to tasks with deadline >= this timestamp
    /// - Parameter filterDeadlineLte: Filter to tasks with deadline <= this timestamp
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(sortBy: OperationsTaskSortByEnum? = nil, sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, search: String? = nil, filterOrderIds: String? = nil, filterOrderShortId: String? = nil, filterOrderOffChrtReferenceId: String? = nil, filterDepartmentId: String? = nil, filterTaskType: OperationsTaskTypeEnum? = nil, filterStatus: OperationsTaskStatusEnum? = nil, filterAssignedUserId: String? = nil, filterDeadlineGte: Date? = nil, filterDeadlineLte: Date? = nil, requestOptions: RequestOptions? = nil) async throws -> OperationsTaskListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/operations/operations_tasks/list/v1",
            queryParams: [
                "sort_by": sortBy.map { .string($0.rawValue) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }, 
                "search": search.map { .string($0) }, 
                "filter_order_ids": filterOrderIds.map { .string($0) }, 
                "filter_order_short_id": filterOrderShortId.map { .string($0) }, 
                "filter_order_off_chrt_reference_id": filterOrderOffChrtReferenceId.map { .string($0) }, 
                "filter_department_id": filterDepartmentId.map { .string($0) }, 
                "filter_task_type": filterTaskType.map { .string($0.rawValue) }, 
                "filter_status": filterStatus.map { .string($0.rawValue) }, 
                "filter_assigned_user_id": filterAssignedUserId.map { .string($0) }, 
                "filter_deadline_gte": filterDeadlineGte.map { .date($0) }, 
                "filter_deadline_lte": filterDeadlineLte.map { .date($0) }
            ],
            requestOptions: requestOptions,
            responseType: OperationsTaskListRes.self
        )
    }

    /// Sets each selected OperationsTask's deadline_timestamp to its requested timestamp. Missing or cross-org task ids are skipped and reported through updated_count. | authz: min_org_role=operator | (OperationsTasksSetDeadlineTimestampsReq1) -> (OperationsTasksDeadlineTimestampsUpdateRes1)
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

    /// Sets an OperationsTask's status (not_started / in_progress / completed / skipped / cancelled). Setting COMPLETED stamps completed_at/by; any other status clears them. | authz: min_org_role=operator | (OperationsTaskStatusReq) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateStatusV1(taskId: String, request: Requests.OperationsTaskStatusReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/operations/operations_tasks/status/v1/\(taskId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Creates a new OperationsTask on an Order where the caller is coordinator or executor. Seeds department_id from the caller's Order department fields. | authz: min_org_role=operator | (OperationsTaskClientCreate1) -> (PydanticObjectId)
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