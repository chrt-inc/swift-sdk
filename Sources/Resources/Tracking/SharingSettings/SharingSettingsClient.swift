import Foundation

public final class SharingSettingsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Get all tracking datasets and their sharing settings for a given order. | authz_personas=[shipper_org_operators, forwarder_org_operators, courier_org_operators] | () -> (list[TrackingSharingSettingsRes])
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func byOrderV1(orderIdOrShortId: String, requestOptions: RequestOptions? = nil) async throws -> [TrackingSharingSettingsRes] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking/sharing_settings/by_order/v1/\(orderIdOrShortId)",
            requestOptions: requestOptions,
            responseType: [TrackingSharingSettingsRes].self
        )
    }
}