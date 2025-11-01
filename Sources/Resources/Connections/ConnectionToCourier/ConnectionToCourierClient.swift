import Foundation

public final class ConnectionToCourierClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Creates a new connection between a shipper and courier organization using the courier's handle. Auto-approves if the courier has enabled auto-approval.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createV1(request: Requests.CreateConnectionReq, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/connections/connection_to_courier/create/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }
}