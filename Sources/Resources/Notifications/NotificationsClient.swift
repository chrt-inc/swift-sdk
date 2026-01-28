import Foundation

public final class NotificationsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Development notification endpoint that returns the caller's ID for testing. | () -> (str)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getNotificationV1(requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .get,
            path: "/notifications/v1",
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Send a notification email to a chrt.com recipient. | (NotificationReq) -> (NotificationRes)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createNotificationV1(request: Requests.NotificationReq, requestOptions: RequestOptions? = nil) async throws -> NotificationRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/notifications/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: NotificationRes.self
        )
    }
}