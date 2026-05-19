import Foundation

public final class ExecutorOrgNotesClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Adds an executor-side note to a task. | authz_personas=[driver_for_executor, executor_org_operators] | (AddExecutorOrgNoteReq) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func addV1(taskId: String, request: Requests.AddExecutorOrgNoteReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/tasks/executor_org_notes/add/v1/\(taskId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}