import Foundation

public final class ShippingClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Retrieves order counts bucketed by time period. | (AnalyticsTimePeriodRequest) -> (AnalyticsTimeBucketResponse)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func retrieveOrdersCountV1(request: Requests.AnalyticsTimePeriodRequest, requestOptions: RequestOptions? = nil) async throws -> AnalyticsTimeBucketResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/analytics/shipping/orders/count/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: AnalyticsTimeBucketResponse.self
        )
    }
}