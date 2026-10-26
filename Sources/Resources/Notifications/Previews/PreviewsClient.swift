import Foundation

public final class PreviewsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Gets a shipping notification's email, SMS, and push as one audience receives them for a sample order. | () -> (NotificationPreviewRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.notifications.previews.getV1(
    ///         event: .shippingOrderStaged,
    ///         audience: .wholeOrder
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getV1(event: NotificationEventsForOrgsEnum, audience: NotificationPreviewAudienceEnum, requestOptions: RequestOptions? = nil) async throws -> NotificationPreviewRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/notifications/previews/get/v1",
            queryParams: [
                "event": .string(event.rawValue), 
                "audience": .string(audience.rawValue)
            ],
            requestOptions: requestOptions,
            responseType: NotificationPreviewRes.self
        )
    }
}