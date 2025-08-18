import Foundation

public final class ShipperClient: Sendable {
    private let httpClient: HTTPClient

    public init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Retrieves notification preferences for the authenticated shipper organization.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getPreferences(requestOptions: RequestOptions? = nil) async throws -> ShipperNotificationPreferences1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/notifications/shipper_preferences",
            requestOptions: requestOptions,
            responseType: ShipperNotificationPreferences1.self
        )
    }

    /// Creates or updates notification preferences for the authenticated shipper organization.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func upsertPreferences(request: ShipperNotificationPreferencesClientCreate1, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/notifications/shipper_preferences/upsert",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }
}