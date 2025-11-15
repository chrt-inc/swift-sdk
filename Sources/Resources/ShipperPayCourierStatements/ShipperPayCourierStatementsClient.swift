import Foundation

public final class ShipperPayCourierStatementsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Retrieves a shipper pay courier statement by its ID with Stripe invoice sync.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getByIdV1(shipperPayCourierStatementId: String, requestOptions: RequestOptions? = nil) async throws -> ShipperPayCourierStatement1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/shipper_pay_courier_statements/v1/\(shipperPayCourierStatementId)",
            requestOptions: requestOptions,
            responseType: ShipperPayCourierStatement1.self
        )
    }

    /// Deletes a shipper-to-courier statement record if invoice not yet created.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteV1(shipperPayCourierStatementId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/oort/shipper_pay_courier_statements/v1/\(shipperPayCourierStatementId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Retrieves a shipper pay courier statement by order ID or short ID with Stripe invoice sync.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getByOrderIdOrShortIdV1(orderIdOrShortId: String, requestOptions: RequestOptions? = nil) async throws -> ShipperPayCourierStatement1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/shipper_pay_courier_statements/by_order/v1/\(orderIdOrShortId)",
            requestOptions: requestOptions,
            responseType: ShipperPayCourierStatement1.self
        )
    }

    /// Lists shipper pay courier statements by shipper org ID with status filtering and Stripe sync.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listByShipperOrgIdV1(request: Requests.ListStatementsByShipperReq, requestOptions: RequestOptions? = nil) async throws -> GetShipperPayCourierStatementsForShipperRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/shipper_pay_courier_statements/list/by_shipper_org_id/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: GetShipperPayCourierStatementsForShipperRes.self
        )
    }

    /// Lists shipper pay courier statements by courier org ID with status filtering and Stripe sync.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listByCourierOrgIdV1(request: Requests.ListStatementsByCourierReq, requestOptions: RequestOptions? = nil) async throws -> GetShipperPayCourierStatementsForShipperRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/shipper_pay_courier_statements/list/by_courier_org_id/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: GetShipperPayCourierStatementsForShipperRes.self
        )
    }

    /// Creates a shipper-to-courier statement record based on all task groups in an order.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createV1(request: CreateShipperPayCourierStatementReq, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/shipper_pay_courier_statements/create/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Previews a shipper-to-courier statement showing task groups, line item groups, total amount, and readiness status.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func previewV1(request: CreateShipperPayCourierStatementReq, requestOptions: RequestOptions? = nil) async throws -> StatementPreviewResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/shipper_pay_courier_statements/preview/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: StatementPreviewResponse.self
        )
    }
}