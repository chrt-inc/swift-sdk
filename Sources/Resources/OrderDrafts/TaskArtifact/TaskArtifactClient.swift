import Foundation

public final class TaskArtifactClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Adds a task artifact to an existing task in a draft order. | (OrderDraftAddTaskArtifactReq) -> (PydanticObjectId)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func addV1(request: Requests.OrderDraftAddTaskArtifactReq, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/order_drafts/task_artifact/add/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Deletes a task artifact from a draft order and removes it from the associated task. | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteV1(taskArtifactId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/oort/order_drafts/task_artifact/delete/v1/\(taskArtifactId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}