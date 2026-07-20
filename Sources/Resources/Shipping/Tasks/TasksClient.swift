import Foundation

public final class TasksClient: Sendable {
    public let executorOrgNotes: ExecutorOrgNotesClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.executorOrgNotes = ExecutorOrgNotesClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }

    /// Adds a new task to a task group at a specific index. | authz_personas=[lig_owner_operators] | (AddTaskToGroupReq) -> (PydanticObjectId)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func addToTaskGroupV1(taskGroupId: String, request: Requests.AddTaskToGroupReq, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .put,
            path: "/shipping/tasks/add_to_task_group/v1/\(taskGroupId)",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Marks a task as ATTEMPT with an optional executor organization note. | authz_personas=[driver_for_executor, coordinator_org_operators, executor_org_operators] (depending on type) | (AttemptTaskReq) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func attemptV1(taskId: String, request: Requests.AttemptTaskReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .put,
            path: "/shipping/tasks/attempt/v1/\(taskId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Marks a task as COMPLETED. | authz_personas=[driver_for_executor, coordinator_org_operators, executor_org_operators] (depending on type) | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func completeV1(taskId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .put,
            path: "/shipping/tasks/complete/v1/\(taskId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Deletes a task. Task must be in STAGED status. | authz_personas=[lig_owner_operators] | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteV1(taskId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/shipping/tasks/delete/v1/\(taskId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Marks a task as SKIPPED. | authz_personas=[driver_for_executor, coordinator_org_operators, executor_org_operators] (depending on type) | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func skipV1(taskId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .put,
            path: "/shipping/tasks/skip/v1/\(taskId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Updates a task. Operational fields (location, action, datetime_windows) require STAGED status (lig_owner_operators). order_placer_comments can be edited on any non-DRAFT task (order_creator_org_operators). contact_ids can be edited on STAGED/IN_PROGRESS orders for tasks still in STAGED status (order_creator_org_operators OR lig_owner_operators). | (TaskClientUpdate1) -> (PydanticObjectId)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateV1(taskId: String, request: TaskClientUpdate1, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/shipping/tasks/update/v1/\(taskId)",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Ends an active wait-time session for a task. | authz_personas=[driver_for_executor, executor_org_operators] | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func waitTimeEndV1(taskId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .put,
            path: "/shipping/tasks/wait_time/end/v1/\(taskId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Checks whether the assigned driver's available location is inside the task wait-time geofence. | authz_personas=[driver_for_executor, executor_org_operators] | () -> (TaskWaitTimeGeofenceRes)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func waitTimeGeofenceV1(taskId: String, requestOptions: RequestOptions? = nil) async throws -> TaskWaitTimeGeofenceRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping/tasks/wait_time/geofence/v1/\(taskId)",
            requestOptions: requestOptions,
            responseType: TaskWaitTimeGeofenceRes.self
        )
    }

    /// Overrides wait-time timestamps or geofence distance for a task. | authz_personas=[executor_org_operators] | (WaitTimeOverrideReq) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func waitTimeOverrideV1(taskId: String, request: Requests.WaitTimeOverrideReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/shipping/tasks/wait_time/override/v1/\(taskId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Starts wait time for a task and records whether the assigned driver's available location is inside the geofence. | authz_personas=[driver_for_executor, executor_org_operators] | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func waitTimeStartV1(taskId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .put,
            path: "/shipping/tasks/wait_time/start/v1/\(taskId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Validates wait time for a task. | authz_personas=[executor_org_operators] | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func waitTimeValidateV1(taskId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .put,
            path: "/shipping/tasks/wait_time/validate/v1/\(taskId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}