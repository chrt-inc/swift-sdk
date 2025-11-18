import Foundation

public final class UtilsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Returns the IANA timezone identifier (e.g., 'America/Los_Angeles') for the given latitude and longitude coordinates. Falls back to closest timezone if the point is in the ocean or at an edge. | () -> (TimezoneResponse)
    ///
    /// - Parameter lat: Latitude in decimal degrees (range: -90 to 90)
    /// - Parameter lng: Longitude in decimal degrees (range: -180 to 180)
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getTimezoneV1(lat: Double, lng: Double, requestOptions: RequestOptions? = nil) async throws -> TimezoneResponse {
        return try await httpClient.performRequest(
            method: .get,
            path: "/utils/timezone/v1",
            queryParams: [
                "lat": .double(lat), 
                "lng": .double(lng)
            ],
            requestOptions: requestOptions,
            responseType: TimezoneResponse.self
        )
    }
}