import Foundation

public final class ShippingFlightsClient: Sendable {
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

    /// Returns the flight leg with its Cirium-sourced status, lazily resolving the Cirium flightId and refreshing the cached status on read. | authz_personas=[driver_for_executor, coordinator_org_operators, executor_org_operators, order_executor_org_operators, shipper_org_operators] | () -> (FlightLeg1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getFlightStatusForFlightLegV1(flightLegId: String, requestOptions: RequestOptions? = nil) async throws -> FlightLeg1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping/flights/status/for_flight_leg/v1/\(flightLegId)",
            requestOptions: requestOptions,
            responseType: FlightLeg1.self
        )
    }

    /// Returns the Cirium-sourced positional track for a flight leg — the live breadcrumb trail plus the planned path (waypoints + legacy route) in one read-through call, cached on read. | authz_personas=[driver_for_executor, coordinator_org_operators, executor_org_operators, order_executor_org_operators, shipper_org_operators] | () -> (FlightTrackRes)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getFlightTrackForFlightLegV1(flightLegId: String, requestOptions: RequestOptions? = nil) async throws -> FlightTrackRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping/flights/track/for_flight_leg/v1/\(flightLegId)",
            requestOptions: requestOptions,
            responseType: FlightTrackRes.self
        )
    }
}