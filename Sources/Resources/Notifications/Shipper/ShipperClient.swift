import Foundation

public final class ShipperClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Retrieves notification preferences for the caller's shipper organization. | () -> (ShipperNotificationPreferences1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getPreferencesV1(requestOptions: RequestOptions? = nil) async throws -> ShipperNotificationPreferences1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/notifications/shipper_preferences/v1",
            requestOptions: requestOptions,
            responseType: ShipperNotificationPreferences1.self
        )
    }

    /// Creates or updates notification preferences for the caller's shipper organization. | (ShipperNotificationPreferencesClientCreate1) -> (PydanticObjectId)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func upsertPreferencesV1(request: Requests.ShipperNotificationPreferencesClientCreate1, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/notifications/shipper_preferences/upsert/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }
}