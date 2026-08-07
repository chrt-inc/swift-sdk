import Foundation

public final class TaskClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Adds a task to an order task group. Draft tasks default to append and DRAFT status; operational tasks require an index and STAGED or COMPLETED status. | (OrdersAddTaskReq) -> (PydanticObjectId)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func addV1(request: Requests.OrdersAddTaskReq, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/orders/task/add/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Deletes a task, recalculates task-group mileage, and rejects operational deletion while artifacts remain. | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteV1(taskId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/shipping/orders/task/delete/v1/\(taskId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Updates task details with lifecycle-specific authorization and synchronizes task-group mileage and order account references. | (TaskClientUpdate1) -> (PydanticObjectId)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateV1(taskId: String, request: Requests.TaskClientUpdate1, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/shipping/orders/task/update/v1/\(taskId)",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }
}