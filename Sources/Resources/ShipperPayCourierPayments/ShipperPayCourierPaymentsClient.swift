import Foundation

public final class ShipperPayCourierPaymentsClient: Sendable {
    private let httpClient: HTTPClient

    public init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Get a shipper pay courier payment by its ID
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getById(shipperPayCourierPaymentId: String, requestOptions: RequestOptions? = nil) async throws -> ShipperPayCourierPayment1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/shipper_pay_courier_payments/\(shipperPayCourierPaymentId)",
            requestOptions: requestOptions,
            responseType: ShipperPayCourierPayment1.self
        )
    }

    /// Deletes a shipper-to-courier payment record. Only allowed if the payment status is PENDING.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func delete(shipperPayCourierPaymentId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/oort/shipper_pay_courier_payments/\(shipperPayCourierPaymentId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Get a shipper pay courier payment by order ID or short ID
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getByOrderIdOrShortId(orderIdOrShortId: String, requestOptions: RequestOptions? = nil) async throws -> ShipperPayCourierPayment1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/shipper_pay_courier_payments/by_order/\(orderIdOrShortId)",
            requestOptions: requestOptions,
            responseType: ShipperPayCourierPayment1.self
        )
    }

    /// List shipper pay courier payments by shipper org ID with status filtering
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listByShipperOrgId(request: ListPaymentsByShipperReq, requestOptions: RequestOptions? = nil) async throws -> GetShipperPayCourierPaymentsForShipperRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/shipper_pay_courier_payments/list/by_shipper_org_id",
            body: request,
            requestOptions: requestOptions,
            responseType: GetShipperPayCourierPaymentsForShipperRes.self
        )
    }

    /// List shipper pay courier payments by courier org ID with status filtering
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listByCourierOrgId(request: ListPaymentsByCourierReq, requestOptions: RequestOptions? = nil) async throws -> GetShipperPayCourierPaymentsForShipperRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/shipper_pay_courier_payments/list/by_courier_org_id",
            body: request,
            requestOptions: requestOptions,
            responseType: GetShipperPayCourierPaymentsForShipperRes.self
        )
    }

    /// Create a shipper-to-courier payment record based on all task groups in an order
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func create(request: CreateShipperPayCourierPaymentReq, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/shipper_pay_courier_payments/create",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Preview a shipper-to-courier payment showing task groups, line item groups, total amount, and readiness status
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func preview(request: CreateShipperPayCourierPaymentReq, requestOptions: RequestOptions? = nil) async throws -> PaymentPreviewResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/shipper_pay_courier_payments/preview",
            body: request,
            requestOptions: requestOptions,
            responseType: PaymentPreviewResponse.self
        )
    }
}