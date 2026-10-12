import Foundation

public final class AirCanadaClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Books a draft booking on Air Canada with one result and rate of one of its searches, with the user's Air Canada AWB or one Air Canada assigns. | authz_personas=[task_group_coordinator_operators] | (CargoOnFlightIntegrationsAirCanadaBookReq) -> (CargoOnFlightBooking1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.cargoOnFlightIntegrations.airCanada.bookV1(
    ///         cargoOnFlightBookingId: "cargo_on_flight_booking_id",
    ///         request: .init(
    ///             cargoOnFlightBookingSearchId: "cargo_on_flight_booking_search_id",
    ///             integrationRateId: "integration_rate_id",
    ///             integrationResultId: "integration_result_id"
    ///         )
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func bookV1(cargoOnFlightBookingId: String, request: Requests.CargoOnFlightIntegrationsAirCanadaBookReq, requestOptions: RequestOptions? = nil) async throws -> CargoOnFlightBooking1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/cargo_on_flight_integrations/air_canada/book/v1/\(cargoOnFlightBookingId)",
            body: request,
            requestOptions: requestOptions,
            responseType: CargoOnFlightBooking1.self
        )
    }

    /// Deletes a booking on Air Canada and cancels it: a confirmed or requested one with an AWB, Air Canada's or else the requested one. | authz_personas=[task_group_coordinator_operators] | (CargoOnFlightIntegrationsAirCanadaCancelReq) -> (CargoOnFlightBooking1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.cargoOnFlightIntegrations.airCanada.cancelV1(
    ///         cargoOnFlightBookingId: "cargo_on_flight_booking_id",
    ///         request: .init(cancellationReason: "cancellation_reason")
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func cancelV1(cargoOnFlightBookingId: String, request: Requests.CargoOnFlightIntegrationsAirCanadaCancelReq, requestOptions: RequestOptions? = nil) async throws -> CargoOnFlightBooking1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/cargo_on_flight_integrations/air_canada/cancel/v1/\(cargoOnFlightBookingId)",
            body: request,
            requestOptions: requestOptions,
            responseType: CargoOnFlightBooking1.self
        )
    }

    /// Quotes Air Canada flights with space and rates for a draft booking's cargos on a route and dates, and stores the search. | authz_personas=[task_group_coordinator_operators] | (CargoOnFlightBookingSearchClientCreate1) -> (CargoOnFlightBookingSearch1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.cargoOnFlightIntegrations.airCanada.searchV1(
    ///         cargoOnFlightBookingId: "cargo_on_flight_booking_id",
    ///         request: CargoOnFlightBookingSearchClientCreate1(
    ///             destinationIata: "destination_iata",
    ///             earliestDepartureDate: "earliest_departure_date",
    ///             iataCassOfficeId: "iata_cass_office_id",
    ///             originIata: "origin_iata",
    ///             schemaVersion: 1
    ///         )
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func searchV1(cargoOnFlightBookingId: String, request: CargoOnFlightBookingSearchClientCreate1, requestOptions: RequestOptions? = nil) async throws -> CargoOnFlightBookingSearch1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/cargo_on_flight_integrations/air_canada/search/v1/\(cargoOnFlightBookingId)",
            body: request,
            requestOptions: requestOptions,
            responseType: CargoOnFlightBookingSearch1.self
        )
    }
}