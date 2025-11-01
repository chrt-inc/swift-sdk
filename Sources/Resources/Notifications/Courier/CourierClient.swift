import Foundation

public final class CourierClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Retrieves notification preferences for the authenticated courier organization.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getPreferencesV1(requestOptions: RequestOptions? = nil) async throws -> CourierNotificationPreferences1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/notifications/courier_preferences/v1",
            requestOptions: requestOptions,
            responseType: CourierNotificationPreferences1.self
        )
    }

    /// Creates or updates notification preferences for the authenticated courier organization.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func upsertPreferencesV1(request: Requests.CourierNotificationPreferencesClientCreate1, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/notifications/courier_preferences/upsert/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }
}