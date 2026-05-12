import Foundation

public final class RateSheetMappingsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Retrieves a specific rate sheet mapping owned by the caller's org (`owned_by_org_id == caller.org_id`). | authz: allowed_org_types=[provider], min_org_role=operator | () -> (RateSheetMapping1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getByIdV1(id: String, requestOptions: RequestOptions? = nil) async throws -> RateSheetMapping1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/billing/rate_sheet_mappings/by_id/v1/\(id)",
            requestOptions: requestOptions,
            responseType: RateSheetMapping1.self
        )
    }

    /// Lists rate sheet mappings owned by the caller's org. Pagination only — no search/filter. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (RateSheetMappingListRes)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(page: Int? = nil, pageSize: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> RateSheetMappingListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/billing/rate_sheet_mappings/list/v1",
            queryParams: [
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: RateSheetMappingListRes.self
        )
    }

    /// Lists rate sheet IDs mapped to a counterparty for the requested task group type. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (list[PydanticObjectId])
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listRateSheetIdsByCounterpartyV1(tgType: String, counterpartyOrgId: String? = nil, counterpartyDriverId: String? = nil, counterpartyOffChrtProviderOrgId: String? = nil, counterpartyOffChrtShipperOrgId: String? = nil, requestOptions: RequestOptions? = nil) async throws -> [String] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/billing/rate_sheet_mappings/rate_sheet_ids/by_counterparty/v1/\(tgType)",
            queryParams: [
                "counterparty_org_id": counterpartyOrgId.map { .string($0) }, 
                "counterparty_driver_id": counterpartyDriverId.map { .string($0) }, 
                "counterparty_off_chrt_provider_org_id": counterpartyOffChrtProviderOrgId.map { .string($0) }, 
                "counterparty_off_chrt_shipper_org_id": counterpartyOffChrtShipperOrgId.map { .string($0) }
            ],
            requestOptions: requestOptions,
            responseType: [String].self
        )
    }

    /// Creates a rate sheet mapping owned by the caller's org. The caller becomes `owned_by_org_id`. Body must set exactly one of `counterparty_org_id` / `counterparty_driver_id` (XOR). | authz: allowed_org_types=[provider], min_org_role=operator | (RateSheetMappingClientCreate1) -> (PydanticObjectId)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createV1(request: Requests.RateSheetMappingClientCreate1, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/billing/rate_sheet_mappings/create/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Deletes a rate sheet mapping owned by the caller's org. Does not cascade — rate sheet documents themselves are untouched. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteV1(id: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/billing/rate_sheet_mappings/delete/v1/\(id)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Appends `rate_sheet_id` to the per-TG-type list on a mapping. Idempotent — already-present ids are a no-op. The 0-index entry remains the default; use the set_default route to promote a different sheet. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func appendRateSheetV1(id: String, tgType: String, rateSheetId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/billing/rate_sheet_mappings/append_rate_sheet/v1/\(id)/\(tgType)/\(rateSheetId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Removes `rate_sheet_id` from the per-TG-type list on a mapping. Idempotent — absent ids are a no-op. If the removed id was the 0-index default, the next id (if any) becomes the new default. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func removeRateSheetV1(id: String, tgType: String, rateSheetId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/billing/rate_sheet_mappings/remove_rate_sheet/v1/\(id)/\(tgType)/\(rateSheetId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Promotes `rate_sheet_id` to the 0-index (default) slot of the per-TG-type list, preserving the relative order of the other ids. If the id isn't already in the list it is added at index 0. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func setDefaultRateSheetV1(id: String, tgType: String, rateSheetId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/billing/rate_sheet_mappings/set_default_rate_sheet/v1/\(id)/\(tgType)/\(rateSheetId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}