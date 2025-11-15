import Foundation

public final class TaskArtifactsClient: Sendable {
    public let images: ImagesClient
    public let blurhash: BlurhashClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.images = ImagesClient(config: config)
        self.blurhash = BlurhashClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }

    /// Completes a task_artifact and updates all related task, cargo, task group, and order statuses.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func completeV1(taskArtifactId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/task_artifacts/complete/v1/\(taskArtifactId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Updates the completor comments on a task_artifact without affecting completion status.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateCommentsV1(request: Requests.TaskArtifactUpdateCommentsReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/task_artifacts/update_comments/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Adds a new task_artifact to an existing task
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func addToTaskV1(request: Requests.TaskArtifactAddToTaskReq, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/task_artifacts/add_to_task/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }
}