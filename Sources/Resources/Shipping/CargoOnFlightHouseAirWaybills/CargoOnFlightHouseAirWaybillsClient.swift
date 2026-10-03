import Foundation

public final class CargoOnFlightHouseAirWaybillsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Adds a house air waybill to an air waybill's consolidation, sent to the airline in its FHL. | authz_personas=[task_group_coordinator_operators] | (CargoOnFlightHouseAirWaybillClientCreate1) -> (CargoOnFlightHouseAirWaybill1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.cargoOnFlightHouseAirWaybills.createV1(request: .init(
    ///         cargoOnFlightAirWaybillId: "cargo_on_flight_air_waybill_id",
    ///         destinationIata: "destination_iata",
    ///         grossWeightKilograms: 1.1,
    ///         houseAirWaybillNumber: "house_air_waybill_number",
    ///         manifestDescriptionOfGoods: "manifest_description_of_goods",
    ///         numberOfPieces: 1,
    ///         originIata: "origin_iata",
    ///         schemaVersion: 1
    ///     ))
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createV1(request: Requests.CargoOnFlightHouseAirWaybillClientCreate1, requestOptions: RequestOptions? = nil) async throws -> CargoOnFlightHouseAirWaybill1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/cargo_on_flight_house_air_waybills/create/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: CargoOnFlightHouseAirWaybill1.self
        )
    }

    /// Deletes a house air waybill that has never been sent to the airline. | authz_personas=[task_group_coordinator_operators] | () -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.cargoOnFlightHouseAirWaybills.deleteV1(cargoOnFlightHouseAirWaybillId: "cargo_on_flight_house_air_waybill_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteV1(cargoOnFlightHouseAirWaybillId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/shipping/cargo_on_flight_house_air_waybills/delete/v1/\(cargoOnFlightHouseAirWaybillId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Lists the house air waybills consolidated under an air waybill. | authz_personas=[task_group_coordinator_operators] | () -> (CargoOnFlightHouseAirWaybillListRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.cargoOnFlightHouseAirWaybills.listV1(
    ///         cargoOnFlightAirWaybillId: "cargo_on_flight_air_waybill_id",
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
    /// - Parameter cargoOnFlightAirWaybillId: The air waybill whose houses are listed.
    /// - Parameter sortBy: Field to sort by.
    /// - Parameter sortOrder: Sort order.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(cargoOnFlightAirWaybillId: String, sortBy: CargoOnFlightHouseAirWaybillSortByEnum? = nil, sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> CargoOnFlightHouseAirWaybillListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping/cargo_on_flight_house_air_waybills/list/v1",
            queryParams: [
                "cargo_on_flight_air_waybill_id": .string(cargoOnFlightAirWaybillId), 
                "sort_by": sortBy.map { .string($0.rawValue) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: CargoOnFlightHouseAirWaybillListRes.self
        )
    }

    /// Updates a house air waybill, all but its number; one already sent is replaced at the airline only when it is sent again. | authz_personas=[task_group_coordinator_operators] | (CargoOnFlightHouseAirWaybillClientUpdate1) -> (CargoOnFlightHouseAirWaybill1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.cargoOnFlightHouseAirWaybills.updateV1(
    ///         cargoOnFlightHouseAirWaybillId: "cargo_on_flight_house_air_waybill_id",
    ///         request: .init()
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateV1(cargoOnFlightHouseAirWaybillId: String, request: Requests.CargoOnFlightHouseAirWaybillClientUpdate1, requestOptions: RequestOptions? = nil) async throws -> CargoOnFlightHouseAirWaybill1 {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/shipping/cargo_on_flight_house_air_waybills/update/v1/\(cargoOnFlightHouseAirWaybillId)",
            body: request,
            requestOptions: requestOptions,
            responseType: CargoOnFlightHouseAirWaybill1.self
        )
    }

    /// Retrieves a house air waybill. | authz_personas=[task_group_coordinator_operators] | () -> (CargoOnFlightHouseAirWaybill1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.cargoOnFlightHouseAirWaybills.getV1(cargoOnFlightHouseAirWaybillId: "cargo_on_flight_house_air_waybill_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getV1(cargoOnFlightHouseAirWaybillId: String, requestOptions: RequestOptions? = nil) async throws -> CargoOnFlightHouseAirWaybill1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping/cargo_on_flight_house_air_waybills/v1/\(cargoOnFlightHouseAirWaybillId)",
            requestOptions: requestOptions,
            responseType: CargoOnFlightHouseAirWaybill1.self
        )
    }
}