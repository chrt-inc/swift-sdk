import Foundation

public final class ShipperPayCourierRateSheetsClient: Sendable {
    private let httpClient: HTTPClient

    public init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Lists all rate sheets created by the authenticated courier organization.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listByCourierOrgIdV1(requestOptions: RequestOptions? = nil) async throws -> [ShipperPayCourierRateSheet1] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/shipper_pay_courier_rate_sheets/list/v1",
            requestOptions: requestOptions,
            responseType: [ShipperPayCourierRateSheet1].self
        )
    }

    /// Creates a new rate sheet for a courier to charge shippers.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createV1(request: Requests.ShipperPayCourierRateSheetClientCreate1, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/shipper_pay_courier_rate_sheets/create/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Retrieves a single rate sheet by its ID (courier access only).
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getV1(id: String, requestOptions: RequestOptions? = nil) async throws -> ShipperPayCourierRateSheet1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/shipper_pay_courier_rate_sheets/v1/\(id)",
            requestOptions: requestOptions,
            responseType: ShipperPayCourierRateSheet1.self
        )
    }

    /// Deletes a rate sheet owned by the authenticated courier organization.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteByIdV1(id: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/oort/shipper_pay_courier_rate_sheets/v1/\(id)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Updates an existing rate sheet owned by the authenticated courier organization.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateByIdV1(id: String, request: Requests.ShipperPayCourierRateSheetClientUpdate1, requestOptions: RequestOptions? = nil) async throws -> ShipperPayCourierRateSheet1 {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/oort/shipper_pay_courier_rate_sheets/v1/\(id)",
            body: request,
            requestOptions: requestOptions,
            responseType: ShipperPayCourierRateSheet1.self
        )
    }
}