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
}