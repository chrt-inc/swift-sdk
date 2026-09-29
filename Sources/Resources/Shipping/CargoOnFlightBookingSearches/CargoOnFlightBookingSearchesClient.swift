import Foundation

public final class CargoOnFlightBookingSearchesClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Lists a cargo-on-flight booking's searches with their results. | authz_personas=[task_group_coordinator_operators] | () -> (CargoOnFlightBookingSearchListRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.cargoOnFlightBookingSearches.listV1(
    ///         cargoOnFlightBookingId: "cargo_on_flight_booking_id",
    ///         filterCreatedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterCreatedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         sortBy: .createdAtTimestamp,
    ///         sortOrder: .asc,
    ///         page: 1,
    ///         pageSize: 1
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter cargoOnFlightBookingId: The booking whose searches are listed.
    /// - Parameter filterCreatedAtTimestampGte: Filter created_at_timestamp >= value.
    /// - Parameter filterCreatedAtTimestampLte: Filter created_at_timestamp <= value.
    /// - Parameter sortBy: Field to sort by.
    /// - Parameter sortOrder: Sort order.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(cargoOnFlightBookingId: String, filterCreatedAtTimestampGte: Date? = nil, filterCreatedAtTimestampLte: Date? = nil, sortBy: CargoOnFlightBookingSearchSortByEnum? = nil, sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> CargoOnFlightBookingSearchListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping/cargo_on_flight_booking_searches/list/v1",
            queryParams: [
                "cargo_on_flight_booking_id": .string(cargoOnFlightBookingId), 
                "filter_created_at_timestamp_gte": filterCreatedAtTimestampGte.map { .date($0) }, 
                "filter_created_at_timestamp_lte": filterCreatedAtTimestampLte.map { .date($0) }, 
                "sort_by": sortBy.map { .unknown($0) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: CargoOnFlightBookingSearchListRes.self
        )
    }

    /// Retrieves a cargo-on-flight booking search with its results. | authz_personas=[task_group_coordinator_operators] | () -> (CargoOnFlightBookingSearch1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.cargoOnFlightBookingSearches.getV1(cargoOnFlightBookingSearchId: "cargo_on_flight_booking_search_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getV1(cargoOnFlightBookingSearchId: String, requestOptions: RequestOptions? = nil) async throws -> CargoOnFlightBookingSearch1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping/cargo_on_flight_booking_searches/v1/\(cargoOnFlightBookingSearchId)",
            requestOptions: requestOptions,
            responseType: CargoOnFlightBookingSearch1.self
        )
    }
}