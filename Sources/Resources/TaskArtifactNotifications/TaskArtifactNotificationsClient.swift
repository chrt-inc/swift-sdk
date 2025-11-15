import Foundation

public final class TaskArtifactNotificationsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Retrieves task_artifact notification preferences for the authenticated organization.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getPreferencesV1(requestOptions: RequestOptions? = nil) async throws -> TaskArtifactNotificationPreferences1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/task_artifact_notification_preferences/v1",
            requestOptions: requestOptions,
            responseType: TaskArtifactNotificationPreferences1.self
        )
    }

    /// Creates or updates task_artifact notification preferences for the authenticated organization.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func upsertPreferencesV1(request: Requests.TaskArtifactNotificationPreferencesClientCreate1, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/task_artifact_notification_preferences/upsert/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }
}