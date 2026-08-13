import Foundation

public final class ShipmentsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Retrieves a single Tive shipment by its ID. Scoped to the caller's organization. | auth: api_key | authz: min_org_role=operator | () -> (TiveShipment1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.trackingIntegrations.tive.shipments.getV1(tiveShipmentId: "tive_shipment_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getV1(tiveShipmentId: String, requestOptions: RequestOptions? = nil) async throws -> TiveShipment1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking_integrations/tive/shipments/get/v1",
            queryParams: [
                "tive_shipment_id": .string(tiveShipmentId)
            ],
            requestOptions: requestOptions,
            responseType: TiveShipment1.self
        )
    }

    /// Lists Tive shipments with filtering, sorting, and pagination. Scoped to the caller's organization. | auth: api_key | authz: min_org_role=operator | () -> (TiveShipmentListRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.trackingIntegrations.tive.shipments.listV1(
    ///         sortBy: .chrtCreatedAtTimestamp,
    ///         sortOrder: .asc,
    ///         page: 1,
    ///         pageSize: 1,
    ///         filterTiveDeviceObjectId: "filter_tive_device_object_id",
    ///         filterTiveShipmentId: "filter_tive_shipment_id",
    ///         filterChrtCreatedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterChrtCreatedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter sortBy: Field to sort by
    /// - Parameter sortOrder: Sort order (asc or desc)
    /// - Parameter filterTiveDeviceObjectId: Filter by Tive device object ID
    /// - Parameter filterTiveShipmentId: Filter by Tive shipment ID (exact match)
    /// - Parameter filterChrtCreatedAtTimestampGte: Filter by chrt_created_at_timestamp >= value
    /// - Parameter filterChrtCreatedAtTimestampLte: Filter by chrt_created_at_timestamp <= value
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(sortBy: TiveShipmentSortByEnum? = nil, sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, filterTiveDeviceObjectId: String? = nil, filterTiveShipmentId: String? = nil, filterChrtCreatedAtTimestampGte: Date? = nil, filterChrtCreatedAtTimestampLte: Date? = nil, requestOptions: RequestOptions? = nil) async throws -> TiveShipmentListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking_integrations/tive/shipments/list/v1",
            queryParams: [
                "sort_by": sortBy.map { .string($0.rawValue) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }, 
                "filter_tive_device_object_id": filterTiveDeviceObjectId.map { .string($0) }, 
                "filter_tive_shipment_id": filterTiveShipmentId.map { .string($0) }, 
                "filter_chrt_created_at_timestamp_gte": filterChrtCreatedAtTimestampGte.map { .date($0) }, 
                "filter_chrt_created_at_timestamp_lte": filterChrtCreatedAtTimestampLte.map { .date($0) }
            ],
            requestOptions: requestOptions,
            responseType: TiveShipmentListRes.self
        )
    }
}