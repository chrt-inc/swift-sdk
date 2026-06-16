import Foundation

public final class OffChrtVendorClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Creates an off-platform vendor shell owned by the caller's org. Used as an off-CHRT billing payment destination (e.g. an airline). | (OffChrtVendorClientCreate1) -> (PydanticObjectId)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createV1(request: Requests.OffChrtVendorClientCreate1, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/orgs/off_chrt_vendor/create/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Lists all off-chrt vendors created by the caller's organization. Pagination only — no search/filter. | () -> (OffChrtVendorListRes)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(page: Int? = nil, pageSize: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> OffChrtVendorListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/orgs/off_chrt_vendor/list/v1",
            queryParams: [
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: OffChrtVendorListRes.self
        )
    }

    /// Retrieves a specific off-chrt vendor by ID. Scoped to the caller's org. | () -> (OffChrtVendor1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getByIdV1(id: String, requestOptions: RequestOptions? = nil) async throws -> OffChrtVendor1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/orgs/off_chrt_vendor/v1/\(id)",
            requestOptions: requestOptions,
            responseType: OffChrtVendor1.self
        )
    }

    /// Deletes an off-chrt vendor owned by the caller's organization. Existing LineItemGroups / Statements keep their snapshotted destination id; deletion does not cascade. | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteByIdV1(id: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/orgs/off_chrt_vendor/v1/\(id)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Updates an existing off-chrt vendor owned by the caller's organization. | (OffChrtVendorClientUpdate1) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateByIdV1(id: String, request: Requests.OffChrtVendorClientUpdate1, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/orgs/off_chrt_vendor/v1/\(id)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}