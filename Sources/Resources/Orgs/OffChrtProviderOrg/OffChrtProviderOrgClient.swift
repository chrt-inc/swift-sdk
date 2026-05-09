import Foundation

public final class OffChrtProviderOrgClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Creates an off-platform provider organization shell owned by the caller's org. Used for proxy bidding on Listings. | (OffChrtProviderOrgClientCreate1) -> (PydanticObjectId)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createV1(request: Requests.OffChrtProviderOrgClientCreate1, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/orgs/off_chrt_provider_org/create/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Lists all off-platform provider organizations created by the caller's organization. Pagination only — no search/filter. | () -> (OffChrtProviderOrgListRes)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(page: Int? = nil, pageSize: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> OffChrtProviderOrgListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/orgs/off_chrt_provider_org/list/v1",
            queryParams: [
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: OffChrtProviderOrgListRes.self
        )
    }

    /// Retrieves a specific off-platform provider organization by ID. Scoped to the caller's org. | () -> (OffChrtProviderOrg1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getByIdV1(id: String, requestOptions: RequestOptions? = nil) async throws -> OffChrtProviderOrg1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/orgs/off_chrt_provider_org/v1/\(id)",
            requestOptions: requestOptions,
            responseType: OffChrtProviderOrg1.self
        )
    }

    /// Deletes an off-platform provider organization owned by the caller's organization. Live OrgBiddingGroups + Listings keep their snapshotted membership; deletion does not cascade. | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteByIdV1(id: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/orgs/off_chrt_provider_org/v1/\(id)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Updates an existing off-platform provider organization owned by the caller's organization. | (OffChrtProviderOrgClientUpdate1) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateByIdV1(id: String, request: Requests.OffChrtProviderOrgClientUpdate1, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/orgs/off_chrt_provider_org/v1/\(id)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}