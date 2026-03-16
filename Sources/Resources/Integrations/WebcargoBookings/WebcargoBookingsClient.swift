import Foundation

public final class WebcargoBookingsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Fetches the latest booking record from WebCargo for a task group and upserts it in the database. Creates the record on first call, updates on subsequent calls. | () -> (WebcargoBookingRecord1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func syncV1(taskGroupId: String, requestOptions: RequestOptions? = nil) async throws -> WebcargoBookingRecord1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/integrations/webcargo_bookings/sync/v1/\(taskGroupId)",
            requestOptions: requestOptions,
            responseType: WebcargoBookingRecord1.self
        )
    }

    /// Retrieves the stored WebCargo booking record for a task group. Returns 404 if the booking has never been synced. | () -> (WebcargoBookingRecord1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func retrieveV1(taskGroupId: String, requestOptions: RequestOptions? = nil) async throws -> WebcargoBookingRecord1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/integrations/webcargo_bookings/retrieve/v1/\(taskGroupId)",
            requestOptions: requestOptions,
            responseType: WebcargoBookingRecord1.self
        )
    }
}