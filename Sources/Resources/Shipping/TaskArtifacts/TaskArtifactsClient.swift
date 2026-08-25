import Foundation

public final class TaskArtifactsClient: Sendable {
    public let s3Object: TaskArtifactsS3ObjectClient
    public let scan: ScanClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.s3Object = TaskArtifactsS3ObjectClient(config: config)
        self.scan = ScanClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }

    /// Marks a task artifact as COMPLETED. | authz_personas=[driver_for_executor, executor_org_operators, coordinator_org_operators] | () -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.taskArtifacts.completeV1(taskArtifactId: "task_artifact_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func completeV1(taskArtifactId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .put,
            path: "/shipping/task_artifacts/complete/v1/\(taskArtifactId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Updates or clears the parties that provided or received cargo for a task artifact. Contact references must belong to the caller's organization. | authz_personas=[draft_creator_org_operator, driver_for_executor, executor_org_operators, coordinator_org_operators] (depending on status) | (TaskArtifactCustodyPartiesUpdateReq) -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.taskArtifacts.updateCustodyPartiesV1(
    ///         taskArtifactId: "task_artifact_id",
    ///         request: .init()
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateCustodyPartiesV1(taskArtifactId: String, request: Requests.TaskArtifactCustodyPartiesUpdateReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/shipping/task_artifacts/custody_parties/update/v1/\(taskArtifactId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Marks a task artifact as SKIPPED. | authz_personas=[driver_for_executor, executor_org_operators, coordinator_org_operators] | () -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.taskArtifacts.skipV1(taskArtifactId: "task_artifact_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func skipV1(taskArtifactId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .put,
            path: "/shipping/task_artifacts/skip/v1/\(taskArtifactId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}