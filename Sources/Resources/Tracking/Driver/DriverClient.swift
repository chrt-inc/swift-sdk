import Foundation

public final class DriverClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Records driver location updates. Automatically writes to all IN_PROGRESS task groups and their associated cargos. Updates driver's last seen timestamp and location. | (DriverUpdateReq) -> (DriverUpdateRes)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateV1(request: Requests.DriverUpdateReq, requestOptions: RequestOptions? = nil) async throws -> DriverUpdateRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/tracking/driver/update/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: DriverUpdateRes.self
        )
    }
}