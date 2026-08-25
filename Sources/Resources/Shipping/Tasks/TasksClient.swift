import Foundation

public final class TasksClient: Sendable {
    public let executorOrgNotes: ExecutorOrgNotesClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.executorOrgNotes = ExecutorOrgNotesClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }

    /// Marks a task as ATTEMPT with an optional executor organization note. | authz_personas=[driver_for_executor, coordinator_org_operators, executor_org_operators] (depending on type) | (AttemptTaskReq) -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.tasks.attemptV1(
    ///         taskId: "task_id",
    ///         request: .init()
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
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

    /// Marks a task as COMPLETED, optionally recording a client-supplied completion timestamp no more than five minutes in the future. | authz_personas=[driver_for_executor, coordinator_org_operators, executor_org_operators] (depending on type) | (TaskCompleteReq) -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.tasks.completeV1(
    ///         taskId: "task_id",
    ///         request: .init()
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func completeV1(taskId: String, request: Requests.TaskCompleteReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .put,
            path: "/shipping/tasks/complete/v1/\(taskId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Corrects a completed task's completion timestamp. The driver may correct only their own completion; authorized operators may override it. | authz_personas=[driver_for_executor, coordinator_org_operators, executor_org_operators] (depending on type) | (TaskCompletionTimestampUpdateReq) -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.tasks.updateCompletionTimestampV1(
    ///         taskId: "task_id",
    ///         request: .init(completedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateCompletionTimestampV1(taskId: String, request: Requests.TaskCompletionTimestampUpdateReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/shipping/tasks/completion_timestamp/update/v1/\(taskId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Updates or clears the parties that provided or received cargo for a task. Contact references must belong to the caller's organization. | authz_personas=[draft_creator_org_operator, driver_for_executor, executor_org_operators, coordinator_org_operators] (depending on status) | (TaskCustodyPartiesUpdateReq) -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.tasks.updateCustodyPartiesV1(
    ///         taskId: "task_id",
    ///         request: .init()
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateCustodyPartiesV1(taskId: String, request: Requests.TaskCustodyPartiesUpdateReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/shipping/tasks/custody_parties/update/v1/\(taskId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Overrides a draft or staged task location from a contact or coordinator shipper account and associates the reference. | authz_personas=[draft_creator_org_operator, order_creator_org_operators, task_group_operating_org_operators, coordinator_org_operators] | (TaskLocationFromReferenceReq) -> (PydanticObjectId)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.tasks.locationFromReferenceV1(
    ///         taskId: "task_id",
    ///         request: .init()
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func locationFromReferenceV1(taskId: String, request: Requests.TaskLocationFromReferenceReq, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .put,
            path: "/shipping/tasks/location/from_reference/v1/\(taskId)",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Marks a task as SKIPPED. | authz_personas=[driver_for_executor, coordinator_org_operators, executor_org_operators] (depending on type) | () -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.tasks.skipV1(taskId: "task_id")
    /// }
    ///
    /// try await main()
    /// ```
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

    /// Ends an active wait-time session for a task. | authz_personas=[driver_for_executor, executor_org_operators] | () -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.tasks.waitTimeEndV1(taskId: "task_id")
    /// }
    ///
    /// try await main()
    /// ```
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
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.tasks.waitTimeGeofenceV1(taskId: "task_id")
    /// }
    ///
    /// try await main()
    /// ```
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
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.tasks.waitTimeOverrideV1(
    ///         taskId: "task_id",
    ///         request: .init()
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
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
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.tasks.waitTimeStartV1(taskId: "task_id")
    /// }
    ///
    /// try await main()
    /// ```
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
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.tasks.waitTimeValidateV1(taskId: "task_id")
    /// }
    ///
    /// try await main()
    /// ```
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