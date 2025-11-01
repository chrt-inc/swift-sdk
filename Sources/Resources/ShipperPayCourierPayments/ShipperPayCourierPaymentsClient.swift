import Foundation

public final class ShipperPayCourierPaymentsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Retrieves a shipper pay courier payment by its ID with Stripe invoice sync.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getByIdV1(shipperPayCourierPaymentId: String, requestOptions: RequestOptions? = nil) async throws -> ShipperPayCourierPayment1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/shipper_pay_courier_payments/v1/\(shipperPayCourierPaymentId)",
            requestOptions: requestOptions,
            responseType: ShipperPayCourierPayment1.self
        )
    }

    /// Deletes a shipper-to-courier payment record if invoice not yet created.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteV1(shipperPayCourierPaymentId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/oort/shipper_pay_courier_payments/v1/\(shipperPayCourierPaymentId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Retrieves a shipper pay courier payment by order ID or short ID with Stripe invoice sync.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getByOrderIdOrShortIdV1(orderIdOrShortId: String, requestOptions: RequestOptions? = nil) async throws -> ShipperPayCourierPayment1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/shipper_pay_courier_payments/by_order/v1/\(orderIdOrShortId)",
            requestOptions: requestOptions,
            responseType: ShipperPayCourierPayment1.self
        )
    }

    /// Lists shipper pay courier payments by shipper org ID with status filtering and Stripe sync.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listByShipperOrgIdV1(request: Requests.ListPaymentsByShipperReq, requestOptions: RequestOptions? = nil) async throws -> GetShipperPayCourierPaymentsForShipperRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/shipper_pay_courier_payments/list/by_shipper_org_id/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: GetShipperPayCourierPaymentsForShipperRes.self
        )
    }

    /// Lists shipper pay courier payments by courier org ID with status filtering and Stripe sync.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listByCourierOrgIdV1(request: Requests.ListPaymentsByCourierReq, requestOptions: RequestOptions? = nil) async throws -> GetShipperPayCourierPaymentsForShipperRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/shipper_pay_courier_payments/list/by_courier_org_id/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: GetShipperPayCourierPaymentsForShipperRes.self
        )
    }

    /// Creates a shipper-to-courier payment record based on all task groups in an order.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createV1(request: CreateShipperPayCourierPaymentReq, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/shipper_pay_courier_payments/create/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Previews a shipper-to-courier payment showing task groups, line item groups, total amount, and readiness status.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func previewV1(request: CreateShipperPayCourierPaymentReq, requestOptions: RequestOptions? = nil) async throws -> PaymentPreviewResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/shipper_pay_courier_payments/preview/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: PaymentPreviewResponse.self
        )
    }
}