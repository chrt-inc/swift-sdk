import Foundation

public final class CourierPayDriverPayoutsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Retrieves a specific courier driver payout by ID for the caller's organization.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getByIdV1(id: String, requestOptions: RequestOptions? = nil) async throws -> CourierPayDriverStatement1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/courier_pay_driver_payouts/v1/\(id)",
            requestOptions: requestOptions,
            responseType: CourierPayDriverStatement1.self
        )
    }

    /// Lists all payouts for a specific driver within the caller's organization.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listByDriverIdV1(driverId: String, requestOptions: RequestOptions? = nil) async throws -> [CourierPayDriverStatement1] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/courier_pay_driver_payouts/list/v1/\(driverId)",
            requestOptions: requestOptions,
            responseType: [CourierPayDriverStatement1].self
        )
    }

    /// Creates a new driver payout from selected line item groups and calculates the total amount.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createV1(request: CourierPayDriverStatementClientCreate1, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/courier_pay_driver_payouts/create/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Updates the status of a courier driver payout with validation of allowed state transitions.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateStatusV1(id: String, request: CourierPayDriverStatementClientUpdate1, requestOptions: RequestOptions? = nil) async throws -> CourierPayDriverStatement1 {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/oort/courier_pay_driver_payouts/v1/\(id)/status",
            body: request,
            requestOptions: requestOptions,
            responseType: CourierPayDriverStatement1.self
        )
    }
}