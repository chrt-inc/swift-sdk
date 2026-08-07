import Foundation

public final class TaskGroupClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Adds a task group to a non-terminal order. Groups added to DRAFT orders are DRAFT; groups added to STAGED or IN_PROGRESS orders are STAGED. | authz_personas=[draft_creator_org_operator, coordinator_org_operators] | (OrdersAddTaskGroupReq) -> (PydanticObjectId)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func addV1(request: Requests.OrdersAddTaskGroupReq, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/orders/task_group/add/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Assigns an on-platform or off-platform executor organization to an order task group. DRAFT task groups require task_group_coordinator_operators; operational task groups require coordinator_org_operators and STAGED or IN_PROGRESS status. | authz_personas=[task_group_coordinator_operators, coordinator_org_operators] | (OrdersAddTaskGroupExecutorReq) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func addExecutorV1(taskGroupId: String, request: Requests.OrdersAddTaskGroupExecutorReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/shipping/orders/task_group/add_executor/v1/\(taskGroupId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Clears the driver from an order task group. DRAFT task groups require executor_org_operators; operational task groups require executor_org_operators or driver_for_executor and STAGED or IN_PROGRESS status. | authz_personas=[executor_org_operators, driver_for_executor] | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func removeDriverV1(taskGroupId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/shipping/orders/task_group/remove_driver/v1/\(taskGroupId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Clears the executor and assigned driver from an order task group. DRAFT task groups require task_group_coordinator_operators; operational task groups require coordinator_org_operators and STAGED or IN_PROGRESS status. | authz_personas=[task_group_coordinator_operators, coordinator_org_operators] | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func removeExecutorV1(taskGroupId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/shipping/orders/task_group/remove_executor/v1/\(taskGroupId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Replaces the ordered flight legs on an order task group. | (OrdersSetTaskGroupFlightInfoReq) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func setFlightInfoV1(taskGroupId: String, request: Requests.OrdersSetTaskGroupFlightInfoReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/shipping/orders/task_group/set_flight_info/v1/\(taskGroupId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Sets the ordering of tasks within an order task group and recalculates estimated mileage. DRAFT orders require draft_creator_org_operator; operational orders require task_group_operating_org_operators and a STAGED or IN_PROGRESS task group. | authz_personas=[draft_creator_org_operator, task_group_operating_org_operators] | (OrdersSetTaskGroupTaskOrderingReq) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func setTaskOrderingV1(taskGroupId: String, request: Requests.OrdersSetTaskGroupTaskOrderingReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .put,
            path: "/shipping/orders/task_group/set_task_ordering/v1/\(taskGroupId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Sets the vehicle type until the task group reaches a terminal status. | authz_personas=[draft_creator_org_operator, task_group_coordinator_operators] | (OrdersSetTaskGroupVehicleTypeReq) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func setVehicleTypeV1(taskGroupId: String, request: Requests.OrdersSetTaskGroupVehicleTypeReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/shipping/orders/task_group/set_vehicle_type/v1/\(taskGroupId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Assigns or swaps the driver on an order task group. The driver must belong to the task group's executor organization and permit direct assignment. | authz_personas=[executor_org_operators] | (OrdersUpdateTaskGroupDriverReq) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateDriverV1(taskGroupId: String, request: Requests.OrdersUpdateTaskGroupDriverReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/shipping/orders/task_group/update_driver/v1/\(taskGroupId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}