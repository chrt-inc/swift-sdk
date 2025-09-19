import Foundation

public final class DriverClient: Sendable {
    private let httpClient: HTTPClient

    public init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Unified endpoint for driver location updates. Automatically determines whether to update task group tracking (if IN_PROGRESS) and/or cargo tracking (if IN_TRANSIT) based on current states.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func update(request: Requests.DriverUpdateReq, requestOptions: RequestOptions? = nil) async throws -> DriverUpdateResp {
        return try await httpClient.performRequest(
            method: .post,
            path: "/tracking/driver/update",
            body: request,
            requestOptions: requestOptions,
            responseType: DriverUpdateResp.self
        )
    }
}