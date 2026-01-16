import Foundation

public final class TaskArtifactsClient: Sendable {
    public let s3Object: S3ObjectClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.s3Object = S3ObjectClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }

    /// Adds a new task artifact to a task. | authz_personas=[courier_driver, courier_org_operators, forwarder_org_operators] | (AddTaskArtifactReq) -> (PydanticObjectId)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func addToTaskV1(taskId: String, request: Requests.AddTaskArtifactReq, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .put,
            path: "/oort/task_artifacts/add_to_task/v1/\(taskId)",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Marks a task artifact as COMPLETED. | authz_personas=[courier_driver, courier_org_operators, forwarder_org_operators] | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func completeV1(taskArtifactId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .put,
            path: "/oort/task_artifacts/complete/v1/\(taskArtifactId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Marks a task artifact as SKIPPED. | authz_personas=[courier_driver, courier_org_operators, forwarder_org_operators] | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func skipV1(taskArtifactId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .put,
            path: "/oort/task_artifacts/skip/v1/\(taskArtifactId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Deletes a task artifact. | authz_personas=[lig_owner_operators] | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteV1(taskArtifactId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/oort/task_artifacts/delete/v1/\(taskArtifactId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}