import Foundation

public final class CourierPayDriverRateSheetsClient: Sendable {
    private let httpClient: HTTPClient

    public init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Lists all driver rate sheets for the authenticated courier organization.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listByCourierOrgId(requestOptions: RequestOptions? = nil) async throws -> [CourierPayDriverRateSheet1] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/courier_pay_driver_rate_sheets/list",
            requestOptions: requestOptions,
            responseType: [CourierPayDriverRateSheet1].self
        )
    }

    /// Retrieves all rate sheets assigned to a specific driver.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listByDriverId(driverId: String, requestOptions: RequestOptions? = nil) async throws -> [CourierPayDriverRateSheet1] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/courier_pay_driver_rate_sheets/by_driver_id/\(driverId)",
            requestOptions: requestOptions,
            responseType: [CourierPayDriverRateSheet1].self
        )
    }

    /// Creates a new driver rate sheet for calculating courier payments.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func create(request: Requests.CourierPayDriverRateSheetClientCreate1, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/courier_pay_driver_rate_sheets/create",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Retrieves a single rate sheet by its ID.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func get(id: String, requestOptions: RequestOptions? = nil) async throws -> CourierPayDriverRateSheet1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/courier_pay_driver_rate_sheets/\(id)",
            requestOptions: requestOptions,
            responseType: CourierPayDriverRateSheet1.self
        )
    }

    /// Deletes a driver rate sheet owned by the authenticated organization.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteById(id: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/oort/courier_pay_driver_rate_sheets/\(id)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Updates an existing driver rate sheet owned by the authenticated organization.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateById(id: String, request: Requests.CourierPayDriverRateSheetClientUpdate1, requestOptions: RequestOptions? = nil) async throws -> CourierPayDriverRateSheet1 {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/oort/courier_pay_driver_rate_sheets/\(id)",
            body: request,
            requestOptions: requestOptions,
            responseType: CourierPayDriverRateSheet1.self
        )
    }
}