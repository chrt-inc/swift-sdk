import Foundation

public final class FlightsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Returns flight info from an adjacent FLIGHT task group for TENDER_TO_AIRLINE or RECOVER_FROM_AIRLINE tasks. | authz_personas=[driver_for_executor, coordinator_org_operators, executor_org_operators, shipper_org_operators] | () -> (FlightInfoForTaskRes)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getFlightInfoForTaskV1(taskId: String, requestOptions: RequestOptions? = nil) async throws -> FlightInfoForTaskRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping/flights/flight_info/for_task/v1/\(taskId)",
            requestOptions: requestOptions,
            responseType: FlightInfoForTaskRes.self
        )
    }

    /// Returns the ordered list of flight legs for a task group. | authz_personas=[driver_for_executor, coordinator_org_operators, executor_org_operators, shipper_org_operators] | () -> (FlightInfoForTaskRes)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getFlightLegsForTaskGroupV1(taskGroupId: String, requestOptions: RequestOptions? = nil) async throws -> FlightInfoForTaskRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping/flights/for_task_group/v1/\(taskGroupId)",
            requestOptions: requestOptions,
            responseType: FlightInfoForTaskRes.self
        )
    }
}