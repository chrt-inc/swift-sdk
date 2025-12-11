import Foundation

public final class TaskGroupByDriverSharingClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Updates the sharing settings for a task group by driver tracking dataset. | authz_personas=[forwarder_org_operators, shipper_org_operators, courier_org_operators, courier_driver] | (TaskGroupByDriverSharingSettingsUpdateReq) -> (TaskGroupByDriverSharingSettings1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func postSharingSettingsV1(request: Requests.TaskGroupByDriverSharingSettingsUpdateReq, requestOptions: RequestOptions? = nil) async throws -> TaskGroupByDriverSharingSettings1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/tracking/task_group_by_driver/sharing_settings/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: TaskGroupByDriverSharingSettings1.self
        )
    }
}