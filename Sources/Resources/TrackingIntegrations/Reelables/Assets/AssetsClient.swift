import Foundation

public final class AssetsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Creates and links a labeled Reelables asset for the caller's organization. | authz: min_org_role=operator | (ReelablesAssetClientCreate1) -> (ReelablesAsset1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.trackingIntegrations.reelables.assets.createV1(request: .init(
    ///         name: "name",
    ///         nfcId: "nfc_id",
    ///         schemaVersion: 1
    ///     ))
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createV1(request: Requests.ReelablesAssetClientCreate1, requestOptions: RequestOptions? = nil) async throws -> ReelablesAsset1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/tracking_integrations/reelables/assets/create/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: ReelablesAsset1.self
        )
    }

    /// Retrieves a Reelables asset owned by the caller's organization from CHRT. | auth: api_key | authz: min_org_role=operator | () -> (ReelablesAsset1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.trackingIntegrations.reelables.assets.getV1(assetId: "asset_id")
    /// }
    ///
    /// try await main()
    /// ```
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

    /// Links a label to an unlinked Reelables asset and starts tracking. Existing labels must be unlinked first. | authz: min_org_role=operator | (ReelablesAssetLabelLinkReq) -> (ReelablesAsset1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.trackingIntegrations.reelables.assets.linkLabelV1(
    ///         assetId: "asset_id",
    ///         request: .init(nfcId: "nfc_id")
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func linkLabelV1(assetId: String, request: Requests.ReelablesAssetLabelLinkReq, requestOptions: RequestOptions? = nil) async throws -> ReelablesAsset1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/tracking_integrations/reelables/assets/labels/link/v1/\(assetId)",
            body: request,
            requestOptions: requestOptions,
            responseType: ReelablesAsset1.self
        )
    }

    /// Unlinks the current label from a Reelables asset and stops tracking while retaining the asset and its history. | authz: min_org_role=operator | (None) -> (ReelablesAsset1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.trackingIntegrations.reelables.assets.unlinkLabelV1(assetId: "asset_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func unlinkLabelV1(assetId: String, requestOptions: RequestOptions? = nil) async throws -> ReelablesAsset1 {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/tracking_integrations/reelables/assets/labels/unlink/v1/\(assetId)",
            requestOptions: requestOptions,
            responseType: ReelablesAsset1.self
        )
    }

    /// Lists Reelables assets owned by the caller's organization. | auth: api_key | authz: min_org_role=operator | () -> (ReelablesAssetListRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.trackingIntegrations.reelables.assets.listV1(
    ///         sortBy: .assetId,
    ///         sortOrder: .asc,
    ///         page: 1,
    ///         pageSize: 1
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter sortBy: Field to sort by
    /// - Parameter sortOrder: Sort order (asc or desc)
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(sortBy: ReelablesAssetSortByEnum? = nil, sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> ReelablesAssetListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking_integrations/reelables/assets/list/v1",
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

    /// Updates a Reelables asset, applying name changes upstream before updating CHRT. | authz: min_org_role=operator | (ReelablesAssetClientUpdate1) -> (ReelablesAsset1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.trackingIntegrations.reelables.assets.updateV1(
    ///         assetId: "asset_id",
    ///         request: .init()
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
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