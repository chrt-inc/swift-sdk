import Foundation

public final class TasksClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Adds a new task to a task group at a specific index. | authz_personas=[lig_owner_operators] | (AddTaskToGroupReq) -> (PydanticObjectId)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func addToTaskGroupV1(taskGroupId: String, request: Requests.AddTaskToGroupReq, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .put,
            path: "/oort/tasks/add_to_task_group/v1/\(taskGroupId)",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Updates a task. Task must be in STAGED status. | authz_personas=[lig_owner_operators] | (TaskClientUpdate1) -> (PydanticObjectId)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateV1(taskId: String, request: TaskClientUpdate1, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/oort/tasks/update/v1/\(taskId)",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Marks a task as COMPLETED. | authz_personas=[courier_driver, forwarder_org_operators, courier_org_operators] (depending on type) | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func completeV1(taskId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .put,
            path: "/oort/tasks/complete/v1/\(taskId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Marks a task as SKIPPED. | authz_personas=[courier_driver, forwarder_org_operators, courier_org_operators] (depending on type) | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func skipV1(taskId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .put,
            path: "/oort/tasks/skip/v1/\(taskId)",
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
            path: "/oort/tasks/delete/v1/\(taskId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}