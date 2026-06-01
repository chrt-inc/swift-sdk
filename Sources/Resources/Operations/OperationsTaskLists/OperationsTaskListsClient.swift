import Foundation

public final class OperationsTaskListsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
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

    /// Updates scalar fields (name, description, tags) on an OperationsTaskList. | authz: min_org_role=operator | (OperationsTaskListClientUpdate1) -> (bool)
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

    /// Appends entries to an OperationsTaskList's `entries` array. | authz: min_org_role=operator | (OperationsTaskListEntriesAdd1) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func addEntriesV1(taskListId: String, request: Requests.OperationsTaskListEntriesAdd1, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/operations/operations_task_lists/entries/add/v1/\(taskListId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Removes entries from an OperationsTaskList by entry id. | authz: min_org_role=operator | (OperationsTaskListEntriesRemove1) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func removeEntriesV1(taskListId: String, request: Requests.OperationsTaskListEntriesRemove1, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/operations/operations_task_lists/entries/remove/v1/\(taskListId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Soft-deletes an OperationsTaskList by setting `archived=True`. Tasks already applied to Cases are unaffected. | authz: min_org_role=operator | () -> (bool)
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

    /// Materializes each entry of an OperationsTaskList into an OperationsTask on the Case (status=not_started, source_task_list_id set). Deadlines: overall_deadline_timestamp wins, else the entry's deadline_offset_seconds, else a positional 20-min stagger. No dedup — applying twice creates duplicate tasks. | authz: min_org_role=operator | () -> (list[PydanticObjectId])
    ///
    /// - Parameter overallDeadlineTimestamp: If set, overrides every materialized task's deadline with this timestamp.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func applyToCaseV1(taskListId: String, caseId: String, overallDeadlineTimestamp: Date? = nil, requestOptions: RequestOptions? = nil) async throws -> [String] {
        return try await httpClient.performRequest(
            method: .post,
            path: "/operations/operations_task_lists/apply_to_case/v1/\(taskListId)/\(caseId)",
            queryParams: [
                "overall_deadline_timestamp": overallDeadlineTimestamp.map { .date($0) }
            ],
            requestOptions: requestOptions,
            responseType: [String].self
        )
    }

    /// Removes the OperationsTasks this OperationsTaskList added to the Case (matched by source_task_list_id). Only untouched (not_started) tasks are deleted; started/completed/skipped tasks are kept. Returns deleted and kept counts. | authz: min_org_role=operator | () -> (OperationsTaskListRemoveFromCaseRes1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func removeFromCaseV1(taskListId: String, caseId: String, requestOptions: RequestOptions? = nil) async throws -> OperationsTaskListRemoveFromCaseRes1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/operations/operations_task_lists/remove_from_case/v1/\(taskListId)/\(caseId)",
            requestOptions: requestOptions,
            responseType: OperationsTaskListRemoveFromCaseRes1.self
        )
    }
}