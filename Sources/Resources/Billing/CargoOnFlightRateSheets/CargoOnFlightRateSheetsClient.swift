import Foundation

public final class CargoOnFlightRateSheetsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Retrieves a specific CargoOnFlight rate sheet owned by the caller's organization. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (CargoOnFlightRateSheet1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getByIdV1(id: String, requestOptions: RequestOptions? = nil) async throws -> CargoOnFlightRateSheet1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/billing/cargo_on_flight_rate_sheets/by_id/v1/\(id)",
            requestOptions: requestOptions,
            responseType: CargoOnFlightRateSheet1.self
        )
    }

    /// Lists all CargoOnFlight rate sheets owned by the caller's organization. Pagination only — no search/filter. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (CargoOnFlightRateSheetListRes)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(includeArchived: Bool? = nil, page: Int? = nil, pageSize: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> CargoOnFlightRateSheetListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/billing/cargo_on_flight_rate_sheets/list/v1",
            queryParams: [
                "include_archived": includeArchived.map { .bool($0) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: CargoOnFlightRateSheetListRes.self
        )
    }

    /// Creates a CargoOnFlight rate sheet owned by the caller's org. | authz: allowed_org_types=[provider], min_org_role=operator | (CargoOnFlightRateSheetClientCreate1) -> (PydanticObjectId)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createV1(request: Requests.CargoOnFlightRateSheetClientCreate1, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/billing/cargo_on_flight_rate_sheets/create/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Updates a CargoOnFlight rate sheet owned by the caller's org. Use the archive/unarchive routes to toggle the `archived` flag. | authz: allowed_org_types=[provider], min_org_role=operator | (CargoOnFlightRateSheetClientUpdate1) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateV1(id: String, request: Requests.CargoOnFlightRateSheetClientUpdate1, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/billing/cargo_on_flight_rate_sheets/update/v1/\(id)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Archives a CargoOnFlight rate sheet (sets archived=True). Idempotent. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func archiveV1(id: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/billing/cargo_on_flight_rate_sheets/archive/v1/\(id)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Unarchives a CargoOnFlight rate sheet (sets archived=False). Idempotent. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func unarchiveV1(id: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/billing/cargo_on_flight_rate_sheets/unarchive/v1/\(id)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Hard-deletes a CargoOnFlight rate sheet owned by the caller's org. Prefer archiving when the sheet has historical references. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteV1(id: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/billing/cargo_on_flight_rate_sheets/delete/v1/\(id)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}