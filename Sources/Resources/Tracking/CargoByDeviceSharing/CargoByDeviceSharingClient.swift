import Foundation

public final class CargoByDeviceSharingClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Updates the sharing settings for a cargo by device tracking dataset. | authz_personas=[forwarder_org_operators, shipper_org_operators, order_creator_org_operators] | (CargoByDeviceSharingSettingsUpdateReq) -> (CargoByDeviceSharingSettings1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func postSharingSettingsV1(request: Requests.CargoByDeviceSharingSettingsUpdateReq, requestOptions: RequestOptions? = nil) async throws -> CargoByDeviceSharingSettings1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/tracking/cargo_by_device/sharing_settings/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: CargoByDeviceSharingSettings1.self
        )
    }
}