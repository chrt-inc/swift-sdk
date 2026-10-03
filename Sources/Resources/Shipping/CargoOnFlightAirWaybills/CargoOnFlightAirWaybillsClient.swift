import Foundation

public final class CargoOnFlightAirWaybillsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Creates the air waybill for a confirmed cargo-on-flight booking: the parties, rating, charges, and security declaration sent to the airline as an FWB. | authz_personas=[task_group_coordinator_operators] | (CargoOnFlightAirWaybillClientCreate1) -> (CargoOnFlightAirWaybill1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.cargoOnFlightAirWaybills.createV1(request: .init(
    ///         cargoOnFlightBookingId: "cargo_on_flight_booking_id",
    ///         carriersExecution: CargoOnFlightAirWaybillCarriersExecution1(
    ///             authorisationSignature: "authorisation_signature",
    ///             executedOnDate: "executed_on_date",
    ///             place: "place"
    ///         ),
    ///         chargesDeclaration: CargoOnFlightAirWaybillChargesDeclaration1(
    ///             chargeCode: .ca,
    ///             currencyCode: "currency_code"
    ///         ),
    ///         consignee: CargoOnFlightAirWaybillParty1(
    ///             addressLine1: "address_line_1",
    ///             cityName: "city_name",
    ///             countryCode: "country_code",
    ///             name: "name"
    ///         ),
    ///         rateLines: [
    ///             CargoOnFlightAirWaybillRateLine1(
    ///                 grossWeightKilograms: 1.1,
    ///                 natureAndQuantityOfGoods: "nature_and_quantity_of_goods",
    ///                 numberOfPieces: 1,
    ///                 rateClassCode: .b
    ///             )
    ///         ],
    ///         schemaVersion: 1,
    ///         shipper: CargoOnFlightAirWaybillParty1(
    ///             addressLine1: "address_line_1",
    ///             cityName: "city_name",
    ///             countryCode: "country_code",
    ///             name: "name"
    ///         ),
    ///         shippersCertification: "shippers_certification"
    ///     ))
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createV1(request: Requests.CargoOnFlightAirWaybillClientCreate1, requestOptions: RequestOptions? = nil) async throws -> CargoOnFlightAirWaybill1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/cargo_on_flight_air_waybills/create/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: CargoOnFlightAirWaybill1.self
        )
    }

    /// Deletes an air waybill and its house air waybills, while none of them has been sent to the airline. | authz_personas=[task_group_coordinator_operators] | () -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.cargoOnFlightAirWaybills.deleteV1(cargoOnFlightAirWaybillId: "cargo_on_flight_air_waybill_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteV1(cargoOnFlightAirWaybillId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/shipping/cargo_on_flight_air_waybills/delete/v1/\(cargoOnFlightAirWaybillId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Lists a flight task group's air waybills, one per cargo-on-flight booking. | authz_personas=[task_group_coordinator_operators] | () -> (CargoOnFlightAirWaybillListRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.cargoOnFlightAirWaybills.listV1(
    ///         taskGroupId: "task_group_id",
    ///         filterCargoOnFlightBookingId: "filter_cargo_on_flight_booking_id",
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
    /// - Parameter taskGroupId: The task group whose air waybills are listed.
    /// - Parameter filterCargoOnFlightBookingId: Filter by booking.
    /// - Parameter sortBy: Field to sort by.
    /// - Parameter sortOrder: Sort order.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(taskGroupId: String, filterCargoOnFlightBookingId: String? = nil, sortBy: CargoOnFlightAirWaybillSortByEnum? = nil, sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> CargoOnFlightAirWaybillListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping/cargo_on_flight_air_waybills/list/v1",
            queryParams: [
                "task_group_id": .string(taskGroupId), 
                "filter_cargo_on_flight_booking_id": filterCargoOnFlightBookingId.map { .string($0) }, 
                "sort_by": sortBy.map { .string($0.rawValue) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: CargoOnFlightAirWaybillListRes.self
        )
    }

    /// Marks a sent FWB and/or the FHLs of chosen house air waybills accepted, for an airline that never answered; a later airline answer replaces it. | authz_personas=[task_group_coordinator_operators] | (CargoOnFlightAirWaybillsMarkAcceptedReq) -> (CargoOnFlightAirWaybillsMarkAcceptedRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.cargoOnFlightAirWaybills.markAcceptedV1(
    ///         cargoOnFlightAirWaybillId: "cargo_on_flight_air_waybill_id",
    ///         request: .init(markFwb: true)
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func markAcceptedV1(cargoOnFlightAirWaybillId: String, request: Requests.CargoOnFlightAirWaybillsMarkAcceptedReq, requestOptions: RequestOptions? = nil) async throws -> CargoOnFlightAirWaybillsMarkAcceptedRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/cargo_on_flight_air_waybills/mark_accepted/v1/\(cargoOnFlightAirWaybillId)",
            body: request,
            requestOptions: requestOptions,
            responseType: CargoOnFlightAirWaybillsMarkAcceptedRes.self
        )
    }

    /// Updates an air waybill; an FWB already sent is replaced at the airline only when it is sent again. | authz_personas=[task_group_coordinator_operators] | (CargoOnFlightAirWaybillClientUpdate1) -> (CargoOnFlightAirWaybill1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.cargoOnFlightAirWaybills.updateV1(
    ///         cargoOnFlightAirWaybillId: "cargo_on_flight_air_waybill_id",
    ///         request: .init()
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateV1(cargoOnFlightAirWaybillId: String, request: Requests.CargoOnFlightAirWaybillClientUpdate1, requestOptions: RequestOptions? = nil) async throws -> CargoOnFlightAirWaybill1 {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/shipping/cargo_on_flight_air_waybills/update/v1/\(cargoOnFlightAirWaybillId)",
            body: request,
            requestOptions: requestOptions,
            responseType: CargoOnFlightAirWaybill1.self
        )
    }

    /// Retrieves an air waybill. | authz_personas=[task_group_coordinator_operators] | () -> (CargoOnFlightAirWaybill1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.cargoOnFlightAirWaybills.getV1(cargoOnFlightAirWaybillId: "cargo_on_flight_air_waybill_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getV1(cargoOnFlightAirWaybillId: String, requestOptions: RequestOptions? = nil) async throws -> CargoOnFlightAirWaybill1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping/cargo_on_flight_air_waybills/v1/\(cargoOnFlightAirWaybillId)",
            requestOptions: requestOptions,
            responseType: CargoOnFlightAirWaybill1.self
        )
    }
}