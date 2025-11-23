import Foundation

public final class TaskGroupsExpandedClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Retrieves an expanded task group with optional related data for courier operators. | authz_personas=[courier_org_operators] | (OrderAndTaskGroupExpandedReq) -> (TaskGroupExpanded)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func forCourierOperatorsV1(taskGroupId: String, request: OrderAndTaskGroupExpandedReq, requestOptions: RequestOptions? = nil) async throws -> TaskGroupExpanded {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/task_groups/expanded/for_courier_operators/v1/\(taskGroupId)",
            body: request,
            requestOptions: requestOptions,
            responseType: TaskGroupExpanded.self
        )
    }

    /// Retrieves an expanded task group with optional related data for courier drivers. | authz_personas=[courier_driver] | (OrderAndTaskGroupExpandedReq) -> (TaskGroupExpanded)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func forCourierDriverV1(taskGroupId: String, request: OrderAndTaskGroupExpandedReq, requestOptions: RequestOptions? = nil) async throws -> TaskGroupExpanded {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/task_groups/expanded/for_courier_driver/v1/\(taskGroupId)",
            body: request,
            requestOptions: requestOptions,
            responseType: TaskGroupExpanded.self
        )
    }

    /// Retrieves an expanded task group with optional related data for shipper operators. | authz_personas=[shipper_org_operators] | (OrderAndTaskGroupExpandedReq) -> (TaskGroupExpanded)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func forShipperOperatorsV1(taskGroupId: String, request: OrderAndTaskGroupExpandedReq, requestOptions: RequestOptions? = nil) async throws -> TaskGroupExpanded {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/task_groups/expanded/for_shipper_operators/v1/\(taskGroupId)",
            body: request,
            requestOptions: requestOptions,
            responseType: TaskGroupExpanded.self
        )
    }

    /// Retrieves an expanded task group with optional related data for forwarder operators. | authz_personas=[forwarder_org_operators] | (OrderAndTaskGroupExpandedReq) -> (TaskGroupExpanded)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func forForwarderOperatorsV1(taskGroupId: String, request: OrderAndTaskGroupExpandedReq, requestOptions: RequestOptions? = nil) async throws -> TaskGroupExpanded {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/task_groups/expanded/for_forwarder_operators/v1/\(taskGroupId)",
            body: request,
            requestOptions: requestOptions,
            responseType: TaskGroupExpanded.self
        )
    }
}