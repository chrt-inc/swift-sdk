import Foundation

public final class DriverClient: Sendable {
    private let httpClient: HTTPClient

    public init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Records driver location updates for a task group. Automatically writes to task group tracking if IN_PROGRESS and cargo tracking if IN_TRANSIT. Updates driver's last seen timestamp and location.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateV1(request: Requests.DriverUpdateReq, requestOptions: RequestOptions? = nil) async throws -> DriverUpdateResp {
        return try await httpClient.performRequest(
            method: .post,
            path: "/tracking/driver/update/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: DriverUpdateResp.self
        )
    }
}