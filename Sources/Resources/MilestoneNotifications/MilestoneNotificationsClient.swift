import Foundation

public final class MilestoneNotificationsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Retrieves milestone notification preferences for the authenticated organization.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getPreferencesV1(requestOptions: RequestOptions? = nil) async throws -> MilestoneNotificationPreferences1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/milestone_notification_preferences/v1",
            requestOptions: requestOptions,
            responseType: MilestoneNotificationPreferences1.self
        )
    }

    /// Creates or updates milestone notification preferences for the authenticated organization.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func upsertPreferencesV1(request: Requests.MilestoneNotificationPreferencesClientCreate1, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/milestone_notification_preferences/upsert/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }
}