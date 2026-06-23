import Foundation

public final class FlightsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Searches Cirium for cargo flight connections between two airports, anchored on a departure or arrival time. | (FlightConnectionsSearchReq) -> (FlightConnectionsSearchRes)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func searchConnectionsV1(request: Requests.FlightConnectionsSearchReq, requestOptions: RequestOptions? = nil) async throws -> FlightConnectionsSearchRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/flights/connections/search/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: FlightConnectionsSearchRes.self
        )
    }
}