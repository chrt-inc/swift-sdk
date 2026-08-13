import Foundation

public final class UserPreferencesClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Creates a new notification preferences record for the caller. Returns existing preferences if already created. | () -> (NotificationUserPreferences1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.notifications.userPreferences.createV1()
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createV1(requestOptions: RequestOptions? = nil) async throws -> NotificationUserPreferences1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/notifications/user_preferences/create/v1",
            requestOptions: requestOptions,
            responseType: NotificationUserPreferences1.self
        )
    }

    /// Retrieves the caller's notification preferences. | () -> (NotificationUserPreferences1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.notifications.userPreferences.getV1()
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getV1(requestOptions: RequestOptions? = nil) async throws -> NotificationUserPreferences1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/notifications/user_preferences/get/v1",
            requestOptions: requestOptions,
            responseType: NotificationUserPreferences1.self
        )
    }

    /// Updates notification preferences with explicit events, opt-in, or opt-out operations. | (UserNotificationPreferencesUpdateRequest) -> (NotificationUserPreferences1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.notifications.userPreferences.updateV1(request: .init())
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateV1(request: Requests.UserNotificationPreferencesUpdateRequest, requestOptions: RequestOptions? = nil) async throws -> NotificationUserPreferences1 {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/notifications/user_preferences/update/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: NotificationUserPreferences1.self
        )
    }
}