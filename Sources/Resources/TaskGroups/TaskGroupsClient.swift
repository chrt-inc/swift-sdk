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
    public func listByCourierOrgIdV1(requestOptions: RequestOptions? = nil) async throws -> MultipleTaskGroupsWithTasks {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/task_groups/by_courier_org_id/list/v1",
            requestOptions: requestOptions,
            responseType: MultipleTaskGroupsWithTasks.self
        )
    }

    /// Retrieves a specific task group by ID with its associated tasks.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getByIdV1(id: String, requestOptions: RequestOptions? = nil) async throws -> TaskGroupWithTasks {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/task_groups/v1/\(id)",
            requestOptions: requestOptions,
            responseType: TaskGroupWithTasks.self
        )
    }

    /// Updates task group driver assignments by adding or removing drivers.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateV1(request: Requests.UpdateTaskGroupReq, requestOptions: RequestOptions? = nil) async throws -> UpdateTaskGroupRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/task_groups/update/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: UpdateTaskGroupRes.self
        )
    }

    /// Lists all task groups assigned to a specific driver.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listByDriverIdV1(driverId: String, requestOptions: RequestOptions? = nil) async throws -> [TaskGroup1] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/task_groups/list/v1/\(driverId)",
            requestOptions: requestOptions,
            responseType: [TaskGroup1].self
        )
    }

    /// Starts a task group by changing its status to in-progress and updating the order status.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func startV1(id: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .put,
            path: "/oort/task_groups/start/v1/\(id)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Fetches task groups by driver with optional expanded data for tasks, milestones, cargo, and payment information.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func postByDriverExpandedV1(request: Requests.TaskGroupsExpandedReq, requestOptions: RequestOptions? = nil) async throws -> TaskGroupsExpandedRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/task_groups/by_driver/expanded/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: TaskGroupsExpandedRes.self
        )
    }
}