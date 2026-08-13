import Foundation

public final class ShippingClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Retrieves order counts bucketed by time period. | (AnalyticsTimePeriodReq) -> (AnalyticsTimeBucketRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.analytics.shipping.retrieveOrdersCountV1(request: .init(
    ///         end: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         start: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
    ///     ))
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func retrieveOrdersCountV1(request: Requests.AnalyticsTimePeriodReq, requestOptions: RequestOptions? = nil) async throws -> AnalyticsTimeBucketRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/analytics/shipping/orders/count/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: AnalyticsTimeBucketRes.self
        )
    }
}