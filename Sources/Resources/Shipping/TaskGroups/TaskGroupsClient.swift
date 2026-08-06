import Foundation

public final class TaskGroupsClient: Sendable {
    public let expanded: TaskGroupsExpandedClient
    public let s3Object: TaskGroupsS3ObjectClient
    public let taskGroupId: TaskGroupIdClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.expanded = TaskGroupsExpandedClient(config: config)
        self.s3Object = TaskGroupsS3ObjectClient(config: config)
        self.taskGroupId = TaskGroupIdClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }

    /// Assigns an executor organization (on-chrt or off-chrt) to a task group. Coordinator-only. Requires both executor_org_id and off_chrt_executor_org_data_id to be None (use remove_executor/v1 first to swap). | authz_personas=[coordinator_org_operators] | (AddExecutorReq) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func addExecutorV1(taskGroupId: String, request: Requests.AddExecutorReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/shipping/task_groups/add_executor/v1/\(taskGroupId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Adds a message to a task group's message log. | authz_personas=[driver_for_executor, executor_org_operators, coordinator_org_operators, shipper_org_operators] | (AddMessageReq) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func addMessageV1(taskGroupId: String, request: Requests.AddMessageReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/task_groups/add_message/v1/\(taskGroupId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Removes the driver from a task group (sets driver_id to null). Allowed when STAGED or IN_PROGRESS (if no tasks have reached a terminal status). | authz_personas=[executor_org_operators, driver_for_executor] | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func removeDriverV1(taskGroupId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/shipping/task_groups/remove_driver/v1/\(taskGroupId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Clears the executor and assigned driver on a task group. | authz_personas=[coordinator_org_operators] | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func removeExecutorV1(taskGroupId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/shipping/task_groups/remove_executor/v1/\(taskGroupId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Replaces the ordered list of flights on a task group. | authz_personas=[task_group_operating_org_operators] | (SetFlightInfoReq) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func setFlightInfoV1(taskGroupId: String, request: SetFlightInfoReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/shipping/task_groups/set_flight_info/v1/\(taskGroupId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Sets the ordering of tasks within a task group. Requires complete list of task IDs in desired order. Completed tasks must be before staged tasks. | authz_personas=[task_group_operating_org_operators] | (SetTaskOrderingReq) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func setTaskOrderingV1(taskGroupId: String, request: Requests.SetTaskOrderingReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .put,
            path: "/shipping/task_groups/set_task_ordering/v1/\(taskGroupId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Starts a task group by transitioning it from STAGED to IN_PROGRESS and syncing related order state. | authz_personas=[driver_for_executor, executor_org_operators, coordinator_org_operators] | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func startV1(taskGroupId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .put,
            path: "/shipping/task_groups/start/v1/\(taskGroupId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Returns distinct order_short_id and order_off_chrt_reference_id values matching the query via case-insensitive regex. Searches non-draft task groups where the caller's provider org is the executor. | authz: allowed_org_types=[provider], min_org_role=driver | () -> (list[TaskGroupTypeaheadResult])
    ///
    /// - Parameter query: Typeahead search query
    /// - Parameter limit: Max results per field
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func typeaheadV1(query: String, limit: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> [TaskGroupTypeaheadResult] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping/task_groups/typeahead/v1",
            queryParams: [
                "query": .string(query), 
                "limit": limit.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: [TaskGroupTypeaheadResult].self
        )
    }

    /// Assigns or swaps the driver on a task group. Driver must belong to the task group's executor organization. | authz_personas=[executor_org_operators] | (UpdateDriverReq) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateDriverV1(taskGroupId: String, request: Requests.UpdateDriverReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/shipping/task_groups/update_driver/v1/\(taskGroupId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}