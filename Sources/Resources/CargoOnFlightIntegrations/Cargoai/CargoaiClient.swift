import Foundation

public final class CargoaiClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Lists what was sent to CargoAi for an air waybill and every airline answer received for each send. | authz_personas=[task_group_coordinator_operators] | () -> (CargoOnFlightIntegrationsCargoAiAirWaybillMessageListRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.cargoOnFlightIntegrations.cargoai.listAirWaybillMessagesV1(
    ///         cargoOnFlightAirWaybillId: "cargo_on_flight_air_waybill_id",
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
    /// - Parameter cargoOnFlightAirWaybillId: The air waybill whose sends are listed.
    /// - Parameter filterCreatedAtTimestampGte: Only sends created at or after this timestamp.
    /// - Parameter filterCreatedAtTimestampLte: Only sends created at or before this timestamp.
    /// - Parameter sortBy: Field to sort by.
    /// - Parameter sortOrder: Sort order.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listAirWaybillMessagesV1(cargoOnFlightAirWaybillId: String, filterCreatedAtTimestampGte: Date? = nil, filterCreatedAtTimestampLte: Date? = nil, sortBy: CargoAiAirWaybillMessageSortByEnum? = nil, sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> CargoOnFlightIntegrationsCargoAiAirWaybillMessageListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/cargo_on_flight_integrations/cargoai/air_waybills/messages/list/v1",
            queryParams: [
                "cargo_on_flight_air_waybill_id": .string(cargoOnFlightAirWaybillId), 
                "filter_created_at_timestamp_gte": filterCreatedAtTimestampGte.map { .date($0) }, 
                "filter_created_at_timestamp_lte": filterCreatedAtTimestampLte.map { .date($0) }, 
                "sort_by": sortBy.map { .unknown($0) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: CargoOnFlightIntegrationsCargoAiAirWaybillMessageListRes.self
        )
    }

    /// Sends an air waybill's FWB and/or the FHL for chosen house air waybills to the airline through CargoAi; the airline answers later. | authz_personas=[task_group_coordinator_operators] | (CargoOnFlightIntegrationsCargoAiSendAirWaybillReq) -> (CargoAiAirWaybillMessage1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.cargoOnFlightIntegrations.cargoai.sendAirWaybillV1(
    ///         cargoOnFlightAirWaybillId: "cargo_on_flight_air_waybill_id",
    ///         request: .init(sendFwb: true)
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func sendAirWaybillV1(cargoOnFlightAirWaybillId: String, request: Requests.CargoOnFlightIntegrationsCargoAiSendAirWaybillReq, requestOptions: RequestOptions? = nil) async throws -> CargoAiAirWaybillMessage1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/cargo_on_flight_integrations/cargoai/air_waybills/send/v1/\(cargoOnFlightAirWaybillId)",
            body: request,
            requestOptions: requestOptions,
            responseType: CargoAiAirWaybillMessage1.self
        )
    }

    /// For demos and testing: answers a sent FWB and/or the FHLs of chosen house air waybills as the airline would, accepted or rejected, for a demo AWB (prefix 000) whose Mock Airline never answers. | authz_personas=[task_group_coordinator_operators] | (CargoOnFlightIntegrationsCargoAiSimulateAirlineResponseReq) -> (CargoOnFlightIntegrationsCargoAiSimulateAirlineResponseRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.cargoOnFlightIntegrations.cargoai.simulateAirlineResponseV1(
    ///         cargoOnFlightAirWaybillId: "cargo_on_flight_air_waybill_id",
    ///         request: .init()
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func simulateAirlineResponseV1(cargoOnFlightAirWaybillId: String, request: Requests.CargoOnFlightIntegrationsCargoAiSimulateAirlineResponseReq, requestOptions: RequestOptions? = nil) async throws -> CargoOnFlightIntegrationsCargoAiSimulateAirlineResponseRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/cargo_on_flight_integrations/cargoai/air_waybills/simulate_airline_response/v1/\(cargoOnFlightAirWaybillId)",
            body: request,
            requestOptions: requestOptions,
            responseType: CargoOnFlightIntegrationsCargoAiSimulateAirlineResponseRes.self
        )
    }

    /// Books a draft booking on CargoAi with one result and rate of one of its searches, with the user's AWB or one from the airline's stock. | authz_personas=[task_group_coordinator_operators] | (CargoOnFlightIntegrationsCargoAiBookReq) -> (CargoOnFlightBooking1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.cargoOnFlightIntegrations.cargoai.bookV1(
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
    public func bookV1(cargoOnFlightBookingId: String, request: Requests.CargoOnFlightIntegrationsCargoAiBookReq, requestOptions: RequestOptions? = nil) async throws -> CargoOnFlightBooking1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/cargo_on_flight_integrations/cargoai/book/v1/\(cargoOnFlightBookingId)",
            body: request,
            requestOptions: requestOptions,
            responseType: CargoOnFlightBooking1.self
        )
    }

    /// Asks CargoAi to cancel a confirmed booking; it is CANCELLATION_REQUESTED until the airline answers. | authz_personas=[task_group_coordinator_operators] | (CargoOnFlightIntegrationsCargoAiCancelReq) -> (CargoOnFlightBooking1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.cargoOnFlightIntegrations.cargoai.cancelV1(
    ///         cargoOnFlightBookingId: "cargo_on_flight_booking_id",
    ///         request: .init(cancellationReason: "cancellation_reason")
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func cancelV1(cargoOnFlightBookingId: String, request: Requests.CargoOnFlightIntegrationsCargoAiCancelReq, requestOptions: RequestOptions? = nil) async throws -> CargoOnFlightBooking1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/cargo_on_flight_integrations/cargoai/cancel/v1/\(cargoOnFlightBookingId)",
            body: request,
            requestOptions: requestOptions,
            responseType: CargoOnFlightBooking1.self
        )
    }

    /// Asks CargoAi for an active booking's current status and AWB and applies them, e.g. when its book answer was lost. | authz_personas=[task_group_coordinator_operators] | () -> (CargoOnFlightBooking1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.cargoOnFlightIntegrations.cargoai.refreshV1(cargoOnFlightBookingId: "cargo_on_flight_booking_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func refreshV1(cargoOnFlightBookingId: String, requestOptions: RequestOptions? = nil) async throws -> CargoOnFlightBooking1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/cargo_on_flight_integrations/cargoai/refresh/v1/\(cargoOnFlightBookingId)",
            requestOptions: requestOptions,
            responseType: CargoOnFlightBooking1.self
        )
    }

    /// Collects the remaining CargoAi results of an unfinished search and stores them; a completed search is returned as is. | authz_personas=[task_group_coordinator_operators] | () -> (CargoOnFlightBookingSearch1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.cargoOnFlightIntegrations.cargoai.searchContinueV1(cargoOnFlightBookingSearchId: "cargo_on_flight_booking_search_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func searchContinueV1(cargoOnFlightBookingSearchId: String, requestOptions: RequestOptions? = nil) async throws -> CargoOnFlightBookingSearch1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/cargo_on_flight_integrations/cargoai/search/continue/v1/\(cargoOnFlightBookingSearchId)",
            requestOptions: requestOptions,
            responseType: CargoOnFlightBookingSearch1.self
        )
    }

    /// Starts a CargoAi search for flights with space and rates for a draft booking's cargos on a route and date, and stores it. | authz_personas=[task_group_coordinator_operators] | (CargoOnFlightBookingSearchClientCreate1) -> (CargoOnFlightBookingSearch1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.cargoOnFlightIntegrations.cargoai.searchV1(
    ///         cargoOnFlightBookingId: "cargo_on_flight_booking_id",
    ///         request: .init(
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
    public func searchV1(cargoOnFlightBookingId: String, request: Requests.CargoOnFlightBookingSearchClientCreate1, requestOptions: RequestOptions? = nil) async throws -> CargoOnFlightBookingSearch1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/cargo_on_flight_integrations/cargoai/search/v1/\(cargoOnFlightBookingId)",
            body: request,
            requestOptions: requestOptions,
            responseType: CargoOnFlightBookingSearch1.self
        )
    }
}