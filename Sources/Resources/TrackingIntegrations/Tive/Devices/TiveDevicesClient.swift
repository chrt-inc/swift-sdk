import Foundation

public final class TiveDevicesClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Lists Tive devices with filtering, sorting, and pagination. Scoped to the caller's organization. | authz: min_org_role=operator | () -> (TiveDeviceListRes)
    ///
    /// - Parameter sortBy: Field to sort by
    /// - Parameter sortOrder: Sort order (asc or desc)
    /// - Parameter filterTiveAccountId: Filter by Tive account ID
    /// - Parameter filterTiveDeviceId: Filter by Tive device ID (exact match)
    /// - Parameter filterChrtCreatedAtTimestampGte: Filter by chrt_created_at_timestamp >= value
    /// - Parameter filterChrtCreatedAtTimestampLte: Filter by chrt_created_at_timestamp <= value
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(sortBy: TiveDeviceSortByEnum? = nil, sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, filterTiveAccountId: Int? = nil, filterTiveDeviceId: String? = nil, filterChrtCreatedAtTimestampGte: Date? = nil, filterChrtCreatedAtTimestampLte: Date? = nil, requestOptions: RequestOptions? = nil) async throws -> TiveDeviceListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking_integrations/tive/devices/list/v1",
            queryParams: [
                "sort_by": sortBy.map { .string($0.rawValue) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }, 
                "filter_tive_account_id": filterTiveAccountId.map { .int($0) }, 
                "filter_tive_device_id": filterTiveDeviceId.map { .string($0) }, 
                "filter_chrt_created_at_timestamp_gte": filterChrtCreatedAtTimestampGte.map { .date($0) }, 
                "filter_chrt_created_at_timestamp_lte": filterChrtCreatedAtTimestampLte.map { .date($0) }
            ],
            requestOptions: requestOptions,
            responseType: TiveDeviceListRes.self
        )
    }

    /// Retrieves a single Tive device by its ID. Scoped to the caller's organization. | authz: min_org_role=operator | () -> (TiveDevice1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getV1(tiveDeviceId: String, requestOptions: RequestOptions? = nil) async throws -> TiveDevice1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking_integrations/tive/devices/get/v1",
            queryParams: [
                "tive_device_id": .string(tiveDeviceId)
            ],
            requestOptions: requestOptions,
            responseType: TiveDevice1.self
        )
    }
}