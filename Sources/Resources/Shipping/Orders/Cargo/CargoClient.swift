import Foundation

public final class CargoClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Adds cargo to an order with lifecycle-specific authorization and initial status. | (OrdersAddCargoReq) -> (PydanticObjectId)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func addV1(request: Requests.OrdersAddCargoReq, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/orders/cargo/add/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Associates cargo with an order task and updates operational cargo status when applicable. | (OrdersAssociateCargoWithTaskReq) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func associateWithTaskV1(request: Requests.OrdersAssociateCargoWithTaskReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/orders/cargo/associate_with_task/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Deletes active cargo without completed task associations and resynchronizes the order AWB cache. | authz_personas=[draft_creator_org_operator, coordinator_org_operators] | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteV1(cargoId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/shipping/orders/cargo/delete/v1/\(cargoId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Duplicates cargo and all of its task associations within an order. | () -> (PydanticObjectId)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func duplicateV1(cargoId: String, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/orders/cargo/duplicate/v1/\(cargoId)",
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Removes cargo from an order task and updates operational cargo status when applicable. | (OrdersUnassociateCargoWithTaskReq) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func unassociateWithTaskV1(request: Requests.OrdersUnassociateCargoWithTaskReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/orders/cargo/unassociate_with_task/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Updates cargo details and synchronizes the parent order's AWB list. | (CargoClientUpdate1) -> (PydanticObjectId)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateV1(cargoId: String, request: Requests.CargoClientUpdate1, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/shipping/orders/cargo/update/v1/\(cargoId)",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }
}