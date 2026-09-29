import Foundation

public final class CargoOnFlightBookingsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Cancels a MANUAL booking, removing the flights it created from the task group and its AWB from its cargos; an integration booking is cancelled through its integration. | authz_personas=[task_group_coordinator_operators] | () -> (CargoOnFlightBooking1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.cargoOnFlightBookings.cancelV1(cargoOnFlightBookingId: "cargo_on_flight_booking_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func cancelV1(cargoOnFlightBookingId: String, requestOptions: RequestOptions? = nil) async throws -> CargoOnFlightBooking1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/cargo_on_flight_bookings/cancel/v1/\(cargoOnFlightBookingId)",
            requestOptions: requestOptions,
            responseType: CargoOnFlightBooking1.self
        )
    }

    /// Creates a booking for a flight task group's cargos: a draft to search and book through an integration, or a MANUAL booking placed outside CHRT, confirmed with its AWB and itinerary, which sets the task group's flights and the cargos' AWB. | authz_personas=[task_group_coordinator_operators] | (CargoOnFlightBookingClientCreate1) -> (CargoOnFlightBooking1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.cargoOnFlightBookings.createV1(request: .init(
    ///         cargoDimensions: [
    ///             CargoOnFlightBookingCargoDimension1(
    ///                 heightInches: 1.1,
    ///                 lengthInches: 1.1,
    ///                 quantity: 1,
    ///                 weightPerPiecePounds: 1.1,
    ///                 widthInches: 1.1
    ///             )
    ///         ],
    ///         cargoIds: [
    ///             "cargo_ids"
    ///         ],
    ///         cargoOnFlightIntegration: .cargoai,
    ///         schemaVersion: 1,
    ///         taskGroupId: "task_group_id"
    ///     ))
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createV1(request: Requests.CargoOnFlightBookingClientCreate1, requestOptions: RequestOptions? = nil) async throws -> CargoOnFlightBooking1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/cargo_on_flight_bookings/create/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: CargoOnFlightBooking1.self
        )
    }

    /// Deletes a draft booking that was never booked, with its searches. | authz_personas=[task_group_coordinator_operators] | () -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.cargoOnFlightBookings.deleteDraftV1(cargoOnFlightBookingId: "cargo_on_flight_booking_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteDraftV1(cargoOnFlightBookingId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/shipping/cargo_on_flight_bookings/delete_draft/v1/\(cargoOnFlightBookingId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Lists a flight task group's cargo-on-flight bookings, active and history. | authz_personas=[task_group_coordinator_operators] | () -> (CargoOnFlightBookingListRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.cargoOnFlightBookings.listV1(
    ///         taskGroupId: "task_group_id",
    ///         filterStatus: [
    ///             .draft
    ///         ],
    ///         filterDraftStartedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterDraftStartedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         sortBy: .draftStartedAtTimestamp,
    ///         sortOrder: .asc,
    ///         page: 1,
    ///         pageSize: 1
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter taskGroupId: The task group whose bookings are listed.
    /// - Parameter filterStatus: Filter by status(es).
    /// - Parameter filterDraftStartedAtTimestampGte: Filter draft_started_at_timestamp >= value.
    /// - Parameter filterDraftStartedAtTimestampLte: Filter draft_started_at_timestamp <= value.
    /// - Parameter sortBy: Field to sort by.
    /// - Parameter sortOrder: Sort order.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(taskGroupId: String, filterStatus: [CargoOnFlightBookingStatusEnum1]? = nil, filterDraftStartedAtTimestampGte: Date? = nil, filterDraftStartedAtTimestampLte: Date? = nil, sortBy: CargoOnFlightBookingSortByEnum? = nil, sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> CargoOnFlightBookingListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping/cargo_on_flight_bookings/list/v1",
            queryParams: [
                "task_group_id": .string(taskGroupId), 
                "filter_status": filterStatus.map { .unknown($0) }, 
                "filter_draft_started_at_timestamp_gte": filterDraftStartedAtTimestampGte.map { .date($0) }, 
                "filter_draft_started_at_timestamp_lte": filterDraftStartedAtTimestampLte.map { .date($0) }, 
                "sort_by": sortBy.map { .unknown($0) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: CargoOnFlightBookingListRes.self
        )
    }

    /// Retrieves a cargo-on-flight booking. | authz_personas=[task_group_coordinator_operators] | () -> (CargoOnFlightBooking1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.cargoOnFlightBookings.getV1(cargoOnFlightBookingId: "cargo_on_flight_booking_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getV1(cargoOnFlightBookingId: String, requestOptions: RequestOptions? = nil) async throws -> CargoOnFlightBooking1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping/cargo_on_flight_bookings/v1/\(cargoOnFlightBookingId)",
            requestOptions: requestOptions,
            responseType: CargoOnFlightBooking1.self
        )
    }
}