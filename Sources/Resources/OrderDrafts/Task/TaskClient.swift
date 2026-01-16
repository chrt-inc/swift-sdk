import Foundation

public final class TaskClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Adds a task to an existing task group in a draft order. Validates task action type matches task group type. | authz_personas=[draft_creator_org_operator] | (OrderDraftAddTaskReqV1) -> (PydanticObjectId)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func addV1(request: Requests.OrderDraftAddTaskReqV1, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/order_drafts/task/add/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Updates a task in an existing draft order. | authz_personas=[draft_creator_org_operator] | (OrderDraftUpdateTaskReq) -> (PydanticObjectId)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateV1(request: Requests.OrderDraftUpdateTaskReq, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/oort/order_drafts/task/update/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Deletes a task from a draft order, including all task artifacts. Cargo is preserved. Task is removed from task group. | authz_personas=[draft_creator_org_operator] | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteV1(taskId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/oort/order_drafts/task/delete/v1/\(taskId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}