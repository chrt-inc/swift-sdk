import Foundation

public final class MilestoneNotificationsClient: Sendable {
    private let httpClient: HTTPClient

    public init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Retrieves milestone notification preferences for the authenticated organization.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getPreferences(requestOptions: RequestOptions? = nil) async throws -> MilestoneNotificationPreferences1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/milestone_notification_preferences",
            requestOptions: requestOptions,
            responseType: MilestoneNotificationPreferences1.self
        )
    }

    /// Creates or updates milestone notification preferences for the authenticated organization.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func upsertPreferences(request: Requests.MilestoneNotificationPreferencesClientCreate1, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/milestone_notification_preferences/upsert",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }
}