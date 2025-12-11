import Foundation

public final class CargoByDriverSharingClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Updates the sharing settings for a cargo by driver tracking dataset. | authz_personas=[forwarder_org_operators, shipper_org_operators, courier_org_operators, courier_driver] | (CargoByDriverSharingSettingsUpdateReq) -> (CargoByDriverSharingSettings1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func postSharingSettingsV1(request: Requests.CargoByDriverSharingSettingsUpdateReq, requestOptions: RequestOptions? = nil) async throws -> CargoByDriverSharingSettings1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/tracking/cargo_by_driver/sharing_settings/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: CargoByDriverSharingSettings1.self
        )
    }
}