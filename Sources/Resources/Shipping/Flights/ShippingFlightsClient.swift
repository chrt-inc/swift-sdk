import Foundation

public final class ShippingFlightsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Returns flight info from an adjacent FLIGHT task group for TENDER_TO_AIRLINE or RECOVER_FROM_AIRLINE tasks. | authz_personas=[driver_for_executor, coordinator_org_operators, executor_org_operators, shipper_org_operators] | () -> (FlightInfoForTaskRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.flights.getFlightInfoForTaskV1(taskId: "task_id")
    /// }
    ///
    /// try await main()
    /// ```
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
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.flights.getFlightLegsForTaskGroupV1(taskGroupId: "task_group_id")
    /// }
    ///
    /// try await main()
    /// ```
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
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.flights.getFlightStatusForFlightLegV1(flightLegId: "flight_leg_id")
    /// }
    ///
    /// try await main()
    /// ```
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

    /// Returns the Cirium positional track for a flight leg; pass force_refresh=true to bypass the cache. | authz_personas=[driver_for_executor, coordinator_org_operators, executor_org_operators, order_executor_org_operators, shipper_org_operators] | () -> (FlightTrackRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.flights.getFlightTrackForFlightLegV1(
    ///         flightLegId: "flight_leg_id",
    ///         forceRefresh: true
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter forceRefresh: Bypass the cache and fetch the latest flight track.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getFlightTrackForFlightLegV1(flightLegId: String, forceRefresh: Bool? = nil, requestOptions: RequestOptions? = nil) async throws -> FlightTrackRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping/flights/track/for_flight_leg/v1/\(flightLegId)",
            queryParams: [
                "force_refresh": forceRefresh.map { .bool($0) }
            ],
            requestOptions: requestOptions,
            responseType: FlightTrackRes.self
        )
    }
}