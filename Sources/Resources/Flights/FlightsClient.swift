import Foundation

public final class FlightsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Returns flight info from an adjacent FLIGHT task group for TENDER_TO_AIRLINE or RECOVER_FROM_AIRLINE tasks. | authz_personas=[courier_driver, forwarder_org_operators, courier_org_operators, shipper_org_operators] | () -> (FlightInfoForTaskRes)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getFlightInfoForTaskV1(taskId: String, requestOptions: RequestOptions? = nil) async throws -> FlightInfoForTaskRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/flights/flight_info/for_task/v1/\(taskId)",
            requestOptions: requestOptions,
            responseType: FlightInfoForTaskRes.self
        )
    }
}