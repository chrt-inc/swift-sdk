import Foundation

public final class ReelablesTimeseriesClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Refreshes and returns Reelables location data points within the requested time range. | authz: min_org_role=operator | () -> (ReelablesTimeseriesRes)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func dataPointsV1(assetId: String, startTimestamp: Date, endTimestamp: Date, requestOptions: RequestOptions? = nil) async throws -> ReelablesTimeseriesRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking_integrations/reelables/timeseries/data_points/v1/\(assetId)",
            queryParams: [
                "start_timestamp": .date(startTimestamp), 
                "end_timestamp": .date(endTimestamp)
            ],
            requestOptions: requestOptions,
            responseType: ReelablesTimeseriesRes.self
        )
    }
}