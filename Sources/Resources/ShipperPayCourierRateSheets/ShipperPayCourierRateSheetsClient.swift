import Foundation

public final class ShipperPayCourierRateSheetsClient: Sendable {
    private let httpClient: HTTPClient

    public init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Lists all rate sheets created by the authenticated courier organization.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listByCourierOrgId(requestOptions: RequestOptions? = nil) async throws -> [ShipperPayCourierRateSheet1] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/shipper_pay_courier_rate_sheets/list",
            requestOptions: requestOptions,
            responseType: [ShipperPayCourierRateSheet1].self
        )
    }

    /// Creates a new rate sheet for a courier to charge shippers.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func create(request: ShipperPayCourierRateSheetClientCreate1, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/shipper_pay_courier_rate_sheets/create",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Retrieves a single rate sheet by its ID (courier access only).
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func get(id: String, requestOptions: RequestOptions? = nil) async throws -> ShipperPayCourierRateSheet1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/shipper_pay_courier_rate_sheets/\(id)",
            requestOptions: requestOptions,
            responseType: ShipperPayCourierRateSheet1.self
        )
    }

    /// Deletes a rate sheet owned by the authenticated courier organization.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteById(id: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/oort/shipper_pay_courier_rate_sheets/\(id)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Updates an existing rate sheet owned by the authenticated courier organization.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateById(id: String, request: ShipperPayCourierRateSheetClientUpdate1, requestOptions: RequestOptions? = nil) async throws -> ShipperPayCourierRateSheet1 {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/oort/shipper_pay_courier_rate_sheets/\(id)",
            body: request,
            requestOptions: requestOptions,
            responseType: ShipperPayCourierRateSheet1.self
        )
    }
}