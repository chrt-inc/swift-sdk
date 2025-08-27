import Foundation

public final class CourierPayDriverPayoutsClient: Sendable {
    private let httpClient: HTTPClient

    public init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Retrieves a specific courier driver payout by ID for the authenticated organization.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getById(id: String, requestOptions: RequestOptions? = nil) async throws -> CourierPayDriverPayout1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/courier_pay_driver_payouts/\(id)",
            requestOptions: requestOptions,
            responseType: CourierPayDriverPayout1.self
        )
    }

    /// Lists all payouts for a specific driver within the authenticated organization.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listByDriverId(driverId: String, requestOptions: RequestOptions? = nil) async throws -> [CourierPayDriverPayout1] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/courier_pay_driver_payouts/list/\(driverId)",
            requestOptions: requestOptions,
            responseType: [CourierPayDriverPayout1].self
        )
    }

    /// Creates a new driver payout from selected line item groups.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func create(request: Requests.CourierPayDriverPayoutClientCreate1, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/courier_pay_driver_payouts/create",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Updates the status of a courier driver payout with proper validation.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateStatus(id: String, request: Requests.CourierPayDriverPayoutClientUpdate1, requestOptions: RequestOptions? = nil) async throws -> CourierPayDriverPayout1 {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/oort/courier_pay_driver_payouts/\(id)/status",
            body: request,
            requestOptions: requestOptions,
            responseType: CourierPayDriverPayout1.self
        )
    }
}