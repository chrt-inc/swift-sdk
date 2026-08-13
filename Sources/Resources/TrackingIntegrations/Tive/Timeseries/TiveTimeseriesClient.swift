import Foundation

public final class TiveTimeseriesClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Returns raw Tive data points for a shipment within the given time range. Scoped to the caller's organization. | auth: api_key | authz: min_org_role=operator | () -> (TiveTimeseriesRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.trackingIntegrations.tive.timeseries.dataPointsV1(
    ///         tiveShipmentId: "tive_shipment_id",
    ///         startTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         endTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func dataPointsV1(tiveShipmentId: String, startTimestamp: Date, endTimestamp: Date, requestOptions: RequestOptions? = nil) async throws -> TiveTimeseriesRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking_integrations/tive/timeseries/data_points/v1",
            queryParams: [
                "tive_shipment_id": .string(tiveShipmentId), 
                "start_timestamp": .date(startTimestamp), 
                "end_timestamp": .date(endTimestamp)
            ],
            requestOptions: requestOptions,
            responseType: TiveTimeseriesRes.self
        )
    }

    /// Returns the most recent Tive data point for a shipment. Scoped to the caller's organization. | auth: api_key | authz: min_org_role=operator | () -> (TiveDataPoint1 | None)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.trackingIntegrations.tive.timeseries.lastSeenV1(tiveShipmentId: "tive_shipment_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func lastSeenV1(tiveShipmentId: String, requestOptions: RequestOptions? = nil) async throws -> TiveDataPoint1? {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking_integrations/tive/timeseries/last_seen/v1",
            queryParams: [
                "tive_shipment_id": .string(tiveShipmentId)
            ],
            requestOptions: requestOptions,
            responseType: TiveDataPoint1?.self
        )
    }

    /// Fetches new Tive tracker data points from the Tive API for a shipment and stores them in our timeseries collection. Uses a high-water-mark strategy with overlap dedup to prevent duplicate inserts. | authz: min_org_role=operator | () -> (TiveTimeseriesSyncRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.trackingIntegrations.tive.timeseries.syncV1(tiveShipmentId: "tive_shipment_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func syncV1(tiveShipmentId: String, requestOptions: RequestOptions? = nil) async throws -> TiveTimeseriesSyncRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/tracking_integrations/tive/timeseries/sync/v1",
            queryParams: [
                "tive_shipment_id": .string(tiveShipmentId)
            ],
            requestOptions: requestOptions,
            responseType: TiveTimeseriesSyncRes.self
        )
    }
}