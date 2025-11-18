import Foundation

public final class TaskGroupsExpandedClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Fetches an expanded task group for the courier org with expanded related data. | (TaskGroupExpandedForCourierAdministratorReq) -> (TaskGroupExpandedForCourierAdministrator)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func forCourierAdministratorByIdV1(id: String, request: TaskGroupExpandedForCourierAdministratorReq, requestOptions: RequestOptions? = nil) async throws -> TaskGroupExpandedForCourierAdministrator {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/task_groups/expanded/for_courier_administrator/v1/\(id)",
            body: request,
            requestOptions: requestOptions,
            responseType: TaskGroupExpandedForCourierAdministrator.self
        )
    }

    /// Fetches an expanded task group assigned to a courier driver with optional expanded related data. | (TaskGroupExpandedForCourierDriverReq) -> (TaskGroupExpandedForCourierDriver)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func forCourierDriverByIdV1(id: String, request: TaskGroupExpandedForCourierDriverReq, requestOptions: RequestOptions? = nil) async throws -> TaskGroupExpandedForCourierDriver {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/task_groups/expanded/for_courier_driver/v1/\(id)",
            body: request,
            requestOptions: requestOptions,
            responseType: TaskGroupExpandedForCourierDriver.self
        )
    }

    /// Fetches an expanded task group for the shipper org with expanded related data. | (TaskGroupExpandedForShipperReq) -> (TaskGroupExpandedForShipper)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func forShipperByIdV1(id: String, request: Requests.TaskGroupExpandedForShipperReq, requestOptions: RequestOptions? = nil) async throws -> TaskGroupExpandedForShipper {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/task_groups/expanded/for_shipper/v1/\(id)",
            body: request,
            requestOptions: requestOptions,
            responseType: TaskGroupExpandedForShipper.self
        )
    }
}