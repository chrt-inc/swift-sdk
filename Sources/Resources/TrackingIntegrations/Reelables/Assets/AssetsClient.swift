import Foundation

public final class AssetsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Refreshes and retrieves a Reelables asset by its external ID. | authz: min_org_role=operator | () -> (ReelablesAsset1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getV1(assetId: String, requestOptions: RequestOptions? = nil) async throws -> ReelablesAsset1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking_integrations/reelables/assets/get/v1/\(assetId)",
            requestOptions: requestOptions,
            responseType: ReelablesAsset1.self
        )
    }

    /// Lists cached Reelables assets for a workspace. | authz: min_org_role=operator | () -> (ReelablesAssetListRes)
    ///
    /// - Parameter sortBy: Field to sort by
    /// - Parameter sortOrder: Sort order (asc or desc)
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(workspaceId: String, sortBy: ReelablesAssetSortByEnum? = nil, sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> ReelablesAssetListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking_integrations/reelables/assets/list/v1/\(workspaceId)",
            queryParams: [
                "sort_by": sortBy.map { .string($0.rawValue) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: ReelablesAssetListRes.self
        )
    }

    /// Synchronizes all Reelables assets for a cached workspace. | authz: min_org_role=operator | () -> (ReelablesAssetSyncRes)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func syncV1(workspaceId: String, requestOptions: RequestOptions? = nil) async throws -> ReelablesAssetSyncRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/tracking_integrations/reelables/assets/sync/v1/\(workspaceId)",
            requestOptions: requestOptions,
            responseType: ReelablesAssetSyncRes.self
        )
    }

    /// Updates a Reelables asset, applying name changes upstream before updating CHRT. | authz: min_org_role=operator | (ReelablesAssetClientUpdate1) -> (ReelablesAsset1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateV1(assetId: String, request: Requests.ReelablesAssetClientUpdate1, requestOptions: RequestOptions? = nil) async throws -> ReelablesAsset1 {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/tracking_integrations/reelables/assets/update/v1/\(assetId)",
            body: request,
            requestOptions: requestOptions,
            responseType: ReelablesAsset1.self
        )
    }
}