import Foundation

public final class OnboardCourierRateSheetsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Retrieves a specific OnboardCourier rate sheet owned by the caller's organization. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (OnboardCourierRateSheet1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getByIdV1(id: String, requestOptions: RequestOptions? = nil) async throws -> OnboardCourierRateSheet1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/billing/onboard_courier_rate_sheets/by_id/v1/\(id)",
            requestOptions: requestOptions,
            responseType: OnboardCourierRateSheet1.self
        )
    }

    /// Lists all OnboardCourier rate sheets owned by the caller's organization. Pagination only — no search/filter. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (OnboardCourierRateSheetListRes)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(includeArchived: Bool? = nil, page: Int? = nil, pageSize: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> OnboardCourierRateSheetListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/billing/onboard_courier_rate_sheets/list/v1",
            queryParams: [
                "include_archived": includeArchived.map { .bool($0) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: OnboardCourierRateSheetListRes.self
        )
    }

    /// Creates an OnboardCourier rate sheet owned by the caller's org. | authz: allowed_org_types=[provider], min_org_role=operator | (OnboardCourierRateSheetClientCreate1) -> (PydanticObjectId)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createV1(request: Requests.OnboardCourierRateSheetClientCreate1, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/billing/onboard_courier_rate_sheets/create/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Updates an OnboardCourier rate sheet owned by the caller's org. Use the archive/unarchive routes to toggle the `archived` flag. | authz: allowed_org_types=[provider], min_org_role=operator | (OnboardCourierRateSheetClientUpdate1) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateV1(id: String, request: Requests.OnboardCourierRateSheetClientUpdate1, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/billing/onboard_courier_rate_sheets/update/v1/\(id)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Archives an OnboardCourier rate sheet (sets archived=True). Idempotent. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func archiveV1(id: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/billing/onboard_courier_rate_sheets/archive/v1/\(id)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Unarchives an OnboardCourier rate sheet (sets archived=False). Idempotent. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func unarchiveV1(id: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/billing/onboard_courier_rate_sheets/unarchive/v1/\(id)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Hard-deletes an OnboardCourier rate sheet owned by the caller's org. Prefer archiving when the sheet has historical references. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteV1(id: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/billing/onboard_courier_rate_sheets/delete/v1/\(id)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}