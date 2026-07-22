import Foundation

public final class CargosClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Adds cargo to a non-DRAFT order. Cargo added to a terminal order starts terminal; otherwise it starts STAGED. | authz_personas=[coordinator_org_operators] | (CargoAddToOrderReq) -> (PydanticObjectId)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func addV1(request: Requests.CargoAddToOrderReq, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/cargos/add/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Associates cargo with a task on a non-DRAFT order, then derives cargo status from all associated tasks in the order's task sequence. | authz_personas=[coordinator_org_operators] | (CargoAssociateWithTaskReq) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func associateWithTaskV1(request: Requests.CargoAssociateWithTaskReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/cargos/associate_with_task/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Removes a cargo association from a task on a non-DRAFT order, then derives cargo status from the remaining associated tasks in the order's task sequence. | authz_personas=[coordinator_org_operators] | (CargoUnassociateWithTaskReq) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func unassociateWithTaskV1(request: Requests.CargoUnassociateWithTaskReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/cargos/unassociate_with_task/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Updates cargo details and synchronizes its parent order's AWB list. Cargo must be in STAGED, IN_TRANSIT, DELIVERED, SKIPPED, or EXCEPTION status. | authz_personas=[lig_owner_operators] | (CargoClientUpdate1) -> (PydanticObjectId)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateV1(cargoId: String, request: CargoClientUpdate1, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/shipping/cargos/update/v1/\(cargoId)",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }
}