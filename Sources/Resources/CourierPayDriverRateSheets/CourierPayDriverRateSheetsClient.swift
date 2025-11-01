import Foundation

public final class CourierPayDriverRateSheetsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Lists all driver rate sheets for the authenticated courier organization.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listByCourierOrgIdV1(requestOptions: RequestOptions? = nil) async throws -> [CourierPayDriverRateSheet1] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/courier_pay_driver_rate_sheets/list/v1",
            requestOptions: requestOptions,
            responseType: [CourierPayDriverRateSheet1].self
        )
    }

    /// Retrieves all rate sheets assigned to a specific driver.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listByDriverIdV1(driverId: String, requestOptions: RequestOptions? = nil) async throws -> [CourierPayDriverRateSheet1] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/courier_pay_driver_rate_sheets/by_driver_id/v1/\(driverId)",
            requestOptions: requestOptions,
            responseType: [CourierPayDriverRateSheet1].self
        )
    }

    /// Creates a new driver rate sheet for calculating courier payments.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createV1(request: Requests.CourierPayDriverRateSheetClientCreate1, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/courier_pay_driver_rate_sheets/create/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Retrieves a single rate sheet by its ID.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getV1(id: String, requestOptions: RequestOptions? = nil) async throws -> CourierPayDriverRateSheet1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/courier_pay_driver_rate_sheets/v1/\(id)",
            requestOptions: requestOptions,
            responseType: CourierPayDriverRateSheet1.self
        )
    }

    /// Deletes a driver rate sheet owned by the authenticated organization.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteByIdV1(id: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/oort/courier_pay_driver_rate_sheets/v1/\(id)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Updates an existing driver rate sheet owned by the authenticated organization.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateByIdV1(id: String, request: Requests.CourierPayDriverRateSheetClientUpdate1, requestOptions: RequestOptions? = nil) async throws -> CourierPayDriverRateSheet1 {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/oort/courier_pay_driver_rate_sheets/v1/\(id)",
            body: request,
            requestOptions: requestOptions,
            responseType: CourierPayDriverRateSheet1.self
        )
    }
}