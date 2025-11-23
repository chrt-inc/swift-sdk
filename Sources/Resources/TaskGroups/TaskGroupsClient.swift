import Foundation

public final class TaskGroupsClient: Sendable {
    public let expanded: TaskGroupsExpandedClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.expanded = TaskGroupsExpandedClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }

    /// Retrieves a list of expanded task groups with optional filters and related data for courier operators. | authz_personas=[courier_org_operators] | (TaskGroupExpandedListReq) -> (TaskGroupExpandedListRes)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func postExpandedListForCourierOperatorsV1(request: TaskGroupExpandedListReq, requestOptions: RequestOptions? = nil) async throws -> TaskGroupExpandedListRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/task_groups/task_groups/expanded/list/for_courier_operators/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: TaskGroupExpandedListRes.self
        )
    }

    /// Retrieves a list of expanded task groups with optional filters and related data for courier drivers. | authz_personas=[courier_driver] | (TaskGroupExpandedListReq) -> (TaskGroupExpandedListRes)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func postExpandedListForCourierDriverV1(request: TaskGroupExpandedListReq, requestOptions: RequestOptions? = nil) async throws -> TaskGroupExpandedListRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/task_groups/task_groups/expanded/list/for_courier_driver/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: TaskGroupExpandedListRes.self
        )
    }

    /// Retrieves a list of expanded task groups with optional filters and related data for forwarder operators. | authz_personas=[forwarder_org_operators] | (TaskGroupExpandedListReq) -> (TaskGroupExpandedListRes)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func postExpandedListForForwarderOperatorsV1(request: TaskGroupExpandedListReq, requestOptions: RequestOptions? = nil) async throws -> TaskGroupExpandedListRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/task_groups/task_groups/expanded/list/for_forwarder_operators/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: TaskGroupExpandedListRes.self
        )
    }

    /// Updates the ordering of tasks in a task group. Task group must be in STAGED or IN_PROGRESS status. | authz_personas=[lig_org_operators] | (SetTaskOrderingReq) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func setTaskOrderingV1(taskGroupId: String, request: Requests.SetTaskOrderingReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/task_groups/set_task_ordering/v1/\(taskGroupId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Updates the flight number on both task group and all its tasks. Task group must be in STAGED or IN_PROGRESS status. | authz_personas=[lig_org_operators] | (SetFlightNumberReq) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func setFlightNumberV1(taskGroupId: String, request: Requests.SetFlightNumberReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/task_groups/set_flight_number/v1/\(taskGroupId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Sets or removes the driver assigned to a task group. | authz_personas=[courier_org_operators] | (UpdateTaskGroupDriverReq) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateDriverV1(taskGroupId: String, request: Requests.UpdateTaskGroupDriverReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/task_groups/update_driver/v1/\(taskGroupId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Sets or removes the courier organization assigned to a task group. | authz_personas=[forwarder_org_operators] | (UpdateTaskGroupCourierOrgReq) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateCourierOrgV1(taskGroupId: String, request: Requests.UpdateTaskGroupCourierOrgReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/task_groups/update_courier_org/v1/\(taskGroupId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Starts a task group by changing its status to in-progress and updating the order status. | authz_personas=[courier_driver, lig_org_operators] | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func startV1(taskGroupId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .put,
            path: "/oort/task_groups/start/v1/\(taskGroupId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}