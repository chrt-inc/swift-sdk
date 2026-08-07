import Foundation

public final class DraftsTaskGroupClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Deletes a task group and all associated entities (tasks, task artifacts, S3 metadata). The task group must belong to a DRAFT order. | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteV1(taskGroupId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/shipping/orders/drafts/task_group/delete/v1/\(taskGroupId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}