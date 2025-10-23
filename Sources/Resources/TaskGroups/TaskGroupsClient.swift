import Foundation

public final class TaskGroupsClient: Sendable {
    public let full: TaskGroupsFullClient
    public let togglePause: TogglePauseClient
    private let httpClient: HTTPClient

    public init(config: ClientConfig) {
        self.full = TaskGroupsFullClient(config: config)
        self.togglePause = TogglePauseClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }

    /// Lists all task groups assigned to the authenticated courier organization with their associated tasks.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listByCourierOrgId(requestOptions: RequestOptions? = nil) async throws -> MultipleTaskGroupsWithTasks {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/task_groups/by_courier_org_id/list",
            requestOptions: requestOptions,
            responseType: MultipleTaskGroupsWithTasks.self
        )
    }

    /// Retrieves a specific task group by ID with its associated tasks.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getById(id: String, requestOptions: RequestOptions? = nil) async throws -> TaskGroupWithTasks {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/task_groups/\(id)",
            requestOptions: requestOptions,
            responseType: TaskGroupWithTasks.self
        )
    }

    /// Updates task group driver assignments by adding or removing drivers.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func update(request: Requests.UpdateTaskGroupReq, requestOptions: RequestOptions? = nil) async throws -> UpdateTaskGroupRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/task_groups/update",
            body: request,
            requestOptions: requestOptions,
            responseType: UpdateTaskGroupRes.self
        )
    }

    /// Lists all task groups assigned to a specific driver.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listByDriverId(driverId: String, requestOptions: RequestOptions? = nil) async throws -> [TaskGroup1] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/task_groups/list/\(driverId)",
            requestOptions: requestOptions,
            responseType: [TaskGroup1].self
        )
    }

    /// Starts a task group by changing its status to in-progress and updating the order status.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func start(id: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .put,
            path: "/oort/task_groups/start/\(id)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Fetches task groups by driver with optional expanded data
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getByDriverExpanded(request: Requests.TaskGroupsExpandedReq, requestOptions: RequestOptions? = nil) async throws -> TaskGroupsExpandedRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/task_groups/by_driver/expanded",
            body: request,
            requestOptions: requestOptions,
            responseType: TaskGroupsExpandedRes.self
        )
    }
}