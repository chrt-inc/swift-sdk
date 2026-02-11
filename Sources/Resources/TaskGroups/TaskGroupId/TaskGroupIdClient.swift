import Foundation

public final class TaskGroupIdClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Retrieves the task group IDs for the courier organization assigned to an order's task groups. | authz_personas=[courier_org_operators] | () -> (list[PydanticObjectId])
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func forCourierOperatorsV1(orderIdOrShortId: String, requestOptions: RequestOptions? = nil) async throws -> [String] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/task_groups/task_group_id/for_courier_operators/v1/\(orderIdOrShortId)",
            requestOptions: requestOptions,
            responseType: [String].self
        )
    }

    /// Retrieves the task group IDs for the courier driver assigned to an order's task groups. | authz_personas=[courier_driver] | () -> (list[PydanticObjectId])
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func forCourierDriverV1(orderIdOrShortId: String, requestOptions: RequestOptions? = nil) async throws -> [String] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/task_groups/task_group_id/for_courier_driver/v1/\(orderIdOrShortId)",
            requestOptions: requestOptions,
            responseType: [String].self
        )
    }
}