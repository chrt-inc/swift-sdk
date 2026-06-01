import Foundation

public final class OperationsTasksClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Lists OperationsTasks for the caller's organization, with order/department/type/status/tag/assignee/deadline filtering, sorting, and pagination. | authz: min_org_role=operator | () -> (OperationsTaskListRes)
    ///
    /// - Parameter sortBy: Field to sort by
    /// - Parameter sortOrder: Sort order (asc or desc)
    /// - Parameter filterOrderId: Filter by order id
    /// - Parameter filterDepartmentId: Filter to tasks routed to this department (desk queue)
    /// - Parameter filterTaskType: Filter by task type(s). Defaults to all types.
    /// - Parameter filterStatus: Filter by status(es). Defaults to all statuses.
    /// - Parameter filterTag: Filter to tasks carrying ANY of these tags
    /// - Parameter filterAssignedUserId: Filter to tasks this user is directly assigned to
    /// - Parameter filterDeadlineGte: Filter to tasks with deadline >= this timestamp
    /// - Parameter filterDeadlineLte: Filter to tasks with deadline <= this timestamp
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(sortBy: OperationsTaskSortByEnum? = nil, sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, filterOrderId: String? = nil, filterDepartmentId: String? = nil, filterTaskType: OperationsTaskTypeEnum? = nil, filterStatus: OperationsTaskStatusEnum? = nil, filterTag: String? = nil, filterAssignedUserId: String? = nil, filterDeadlineGte: Date? = nil, filterDeadlineLte: Date? = nil, requestOptions: RequestOptions? = nil) async throws -> OperationsTaskListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/operations/operations_tasks/list/v1",
            queryParams: [
                "sort_by": sortBy.map { .string($0.rawValue) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }, 
                "filter_order_id": filterOrderId.map { .string($0) }, 
                "filter_department_id": filterDepartmentId.map { .string($0) }, 
                "filter_task_type": filterTaskType.map { .string($0.rawValue) }, 
                "filter_status": filterStatus.map { .string($0.rawValue) }, 
                "filter_tag": filterTag.map { .string($0) }, 
                "filter_assigned_user_id": filterAssignedUserId.map { .string($0) }, 
                "filter_deadline_gte": filterDeadlineGte.map { .date($0) }, 
                "filter_deadline_lte": filterDeadlineLte.map { .date($0) }
            ],
            requestOptions: requestOptions,
            responseType: OperationsTaskListRes.self
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

    /// Updates scalar fields (title, description, deadline_timestamp) on an OperationsTask. | authz: min_org_role=operator | (OperationsTaskClientUpdate1) -> (bool)
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

    /// Creates a new OperationsTask on an Order the caller's organization has a Case for. | authz: min_org_role=operator | (OperationsTaskClientCreate1) -> (PydanticObjectId)
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

    /// Marks an OperationsTask as completed. Idempotent — calling on an already-completed task is a no-op that returns False. | authz: min_org_role=operator | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func completeV1(taskId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/operations/operations_tasks/complete/v1/\(taskId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Marks a previously-completed OperationsTask as incomplete and clears its completion timestamps. Idempotent — calling on an already-incomplete task is a no-op that returns False. | authz: min_org_role=operator | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func uncompleteV1(taskId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/operations/operations_tasks/uncomplete/v1/\(taskId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Sets an OperationsTask's status (not_started / in_progress / completed / skipped). Setting COMPLETED stamps completed_at/by; any other status clears them. | authz: min_org_role=operator | (OperationsTaskStatusReq) -> (bool)
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
}