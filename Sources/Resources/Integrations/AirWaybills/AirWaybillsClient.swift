import Foundation

public final class AirWaybillsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Creates a CHAMP air waybill pre-populated from the stored WebCargo booking record. The booking must be synced first via the webcargo_bookings sync route. Returns 409 if an air waybill already exists for this task group. | (AirWaybillCreateReq) -> (ChampAirWaybill1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createV1(request: Requests.AirWaybillCreateReq, requestOptions: RequestOptions? = nil) async throws -> ChampAirWaybill1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/integrations/air_waybills/create/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: ChampAirWaybill1.self
        )
    }

    /// Retrieves the stored CHAMP air waybill for a task group. | () -> (ChampAirWaybill1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func retrieveV1(taskGroupId: String, requestOptions: RequestOptions? = nil) async throws -> ChampAirWaybill1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/integrations/air_waybills/retrieve/v1/\(taskGroupId)",
            requestOptions: requestOptions,
            responseType: ChampAirWaybill1.self
        )
    }

    /// Updates fields on an existing CHAMP air waybill. Any editable field can be set — only fields included in the request body are changed. | (ChampAirWaybillClientUpdate1) -> (ChampAirWaybill1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateV1(taskGroupId: String, request: Requests.ChampAirWaybillClientUpdate1, requestOptions: RequestOptions? = nil) async throws -> ChampAirWaybill1 {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/integrations/air_waybills/update/v1/\(taskGroupId)",
            body: request,
            requestOptions: requestOptions,
            responseType: ChampAirWaybill1.self
        )
    }

    /// Submits a draft CHAMP air waybill to Traxon cargoHUB. Requires shipper, consignee, and charge_declarations to be filled in. Returns 422 if the AWB is not in draft status or required fields are missing. | () -> (ChampAirWaybill1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func submitV1(taskGroupId: String, requestOptions: RequestOptions? = nil) async throws -> ChampAirWaybill1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/integrations/air_waybills/submit/v1/\(taskGroupId)",
            requestOptions: requestOptions,
            responseType: ChampAirWaybill1.self
        )
    }

    /// Converts a CHAMP air waybill to PDF via CHAMP's conversion API. Requires shipper, consignee, and charge_declarations to be filled in. Returns the PDF file as application/pdf. | () -> (PDF binary)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func pdfV1(taskGroupId: String, requestOptions: RequestOptions? = nil) async throws -> JSONValue {
        return try await httpClient.performRequest(
            method: .post,
            path: "/integrations/air_waybills/pdf/v1/\(taskGroupId)",
            requestOptions: requestOptions,
            responseType: JSONValue.self
        )
    }

    /// Retrieves all CHAMP confirmation receipts linked to the air waybill for a task group. | () -> (list[ChampConfirmationReceipt1])
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func confirmationsV1(taskGroupId: String, requestOptions: RequestOptions? = nil) async throws -> [ChampConfirmationReceipt1] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/integrations/air_waybills/confirmations/v1/\(taskGroupId)",
            requestOptions: requestOptions,
            responseType: [ChampConfirmationReceipt1].self
        )
    }

    /// Retrieves all CHAMP flight status updates linked to the air waybill for a task group. | () -> (list[ChampFlightStatus1])
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func flightStatusesV1(taskGroupId: String, requestOptions: RequestOptions? = nil) async throws -> [ChampFlightStatus1] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/integrations/air_waybills/flight_statuses/v1/\(taskGroupId)",
            requestOptions: requestOptions,
            responseType: [ChampFlightStatus1].self
        )
    }
}