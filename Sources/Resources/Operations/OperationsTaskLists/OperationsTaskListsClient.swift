import Foundation

public final class OperationsTaskListsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Materializes each entry of an OperationsTaskList into an OperationsTask on the Order (status=not_started, source_task_list_id set). Deadlines resolve per-entry from its anchor+offset; initial_deadline_timestamp, if set, pins the first entry and the chain follows. department_id overrides the caller's Order department when supplied. No dedup — applying twice creates duplicate tasks. | authz: min_org_role=operator | () -> (list[PydanticObjectId])
    ///
    /// - Parameter departmentId: Overrides the Order department for tasks materialized by this application.
    /// - Parameter initialDeadlineTimestamp: If set, pins the first entry's deadline; later FROM_PREVIOUS_TASK entries cascade from it.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func applyToOrderV1(taskListId: String, orderId: String, departmentId: String? = nil, initialDeadlineTimestamp: Date? = nil, requestOptions: RequestOptions? = nil) async throws -> [String] {
        return try await httpClient.performRequest(
            method: .post,
            path: "/operations/operations_task_lists/apply_to_order/v1/\(taskListId)/\(orderId)",
            queryParams: [
                "department_id": departmentId.map { .string($0) }, 
                "initial_deadline_timestamp": initialDeadlineTimestamp.map { .date($0) }
            ],
            requestOptions: requestOptions,
            responseType: [String].self
        )
    }

    /// Soft-deletes an OperationsTaskList by setting `archived=True`. Tasks already applied to Orders are unaffected. | authz: min_org_role=operator | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func archiveV1(taskListId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/operations/operations_task_lists/archive/v1/\(taskListId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Appends a new entry to an OperationsTaskList's `entries` array. The server assigns a fresh UUID and returns it. Order is load-bearing for from_previous_task-anchored deadlines. | authz: min_org_role=operator | (OperationsTaskListEntryClientCreate1) -> (str)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func addEntryV1(taskListId: String, request: OperationsTaskListEntryClientCreate1, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/operations/operations_task_lists/entries/add/v1/\(taskListId)",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Replaces the entry with the given uuid in an OperationsTaskList's `entries` array. The stored uuid is preserved regardless of the request body. 404 if no entry matches. | authz: min_org_role=operator | (OperationsTaskListEntryClientCreate1) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func editEntryV1(taskListId: String, entryUuid: String, request: OperationsTaskListEntryClientCreate1, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/operations/operations_task_lists/entries/edit/v1/\(taskListId)/\(entryUuid)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Removes the entry with the given uuid from an OperationsTaskList's `entries` array, closing the gap in order. 404 if no entry matches. | authz: min_org_role=operator | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func removeEntryV1(taskListId: String, entryUuid: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/operations/operations_task_lists/entries/remove/v1/\(taskListId)/\(entryUuid)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Reorders an OperationsTaskList's existing entries. `entry_uuids` must be an exact permutation of the list's current entry uuids (every uuid present, no extras, no duplicates), so a reorder can never drop, add, or mutate an entry. | authz: min_org_role=operator | (OperationsTaskListReorderEntries1) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func reorderEntriesV1(taskListId: String, request: Requests.OperationsTaskListReorderEntries1, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/operations/operations_task_lists/entries/reorder/v1/\(taskListId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Lists OperationsTaskLists for the caller's organization with filtering, sorting, and pagination. | authz: min_org_role=operator | () -> (OperationsTaskListListRes)
    ///
    /// - Parameter sortBy: Field to sort by
    /// - Parameter sortOrder: Sort order (asc or desc)
    /// - Parameter filterArchived: Filter by archived flag. None=all, True=archived only, False=unarchived only.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(sortBy: OperationsTaskListSortByEnum? = nil, sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, filterArchived: Bool? = nil, requestOptions: RequestOptions? = nil) async throws -> OperationsTaskListListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/operations/operations_task_lists/list/v1",
            queryParams: [
                "sort_by": sortBy.map { .string($0.rawValue) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }, 
                "filter_archived": filterArchived.map { .bool($0) }
            ],
            requestOptions: requestOptions,
            responseType: OperationsTaskListListRes.self
        )
    }

    /// Removes the OperationsTasks this OperationsTaskList added to the Order (matched by source_task_list_id). Only untouched (not_started) tasks are deleted; started/completed/skipped/cancelled tasks are kept. Returns deleted and kept counts. | authz: min_org_role=operator | () -> (OperationsTaskListRemoveFromOrderRes1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func removeNotStartedTasksFromOrderV1(taskListId: String, orderId: String, requestOptions: RequestOptions? = nil) async throws -> OperationsTaskListRemoveFromOrderRes1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/operations/operations_task_lists/remove_not_started_tasks_from_order/v1/\(taskListId)/\(orderId)",
            requestOptions: requestOptions,
            responseType: OperationsTaskListRemoveFromOrderRes1.self
        )
    }

    /// Restores an archived OperationsTaskList by setting `archived=False`. | authz: min_org_role=operator | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func unarchiveV1(taskListId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/operations/operations_task_lists/unarchive/v1/\(taskListId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Creates a new OperationsTaskList for the caller's organization. | authz: min_org_role=operator | (OperationsTaskListClientCreate1) -> (PydanticObjectId)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createV1(request: Requests.OperationsTaskListClientCreate1, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/operations/operations_task_lists/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Retrieves a single OperationsTaskList by id. | authz: min_org_role=operator | () -> (OperationsTaskList1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getV1(taskListId: String, requestOptions: RequestOptions? = nil) async throws -> OperationsTaskList1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/operations/operations_task_lists/v1/\(taskListId)",
            requestOptions: requestOptions,
            responseType: OperationsTaskList1.self
        )
    }

    /// Updates scalar fields (name, description) on an OperationsTaskList. | authz: min_org_role=operator | (OperationsTaskListClientUpdate1) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateV1(taskListId: String, request: Requests.OperationsTaskListClientUpdate1, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/operations/operations_task_lists/v1/\(taskListId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}