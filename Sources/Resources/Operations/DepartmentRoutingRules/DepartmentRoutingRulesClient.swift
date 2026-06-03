import Foundation

public final class DepartmentRoutingRulesClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Lists the caller org's department routing rules. | authz: min_org_role=operator | () -> (list[DepartmentRoutingRule1])
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(requestOptions: RequestOptions? = nil) async throws -> [DepartmentRoutingRule1] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/operations/department_routing_rules/v1",
            requestOptions: requestOptions,
            responseType: [DepartmentRoutingRule1].self
        )
    }

    /// Sets the caller org's default operations desk for a counterparty. The body must set exactly one of shipper_org_id (on-chrt shipper) / off_chrt_shipper_org_id (off-chrt shipper shell) (XOR). Upsert: one rule per (owner, counterparty). Returns the rule id. The mapping is a non-binding suggestion surfaced at Case creation. | authz: min_org_role=administrator | (DepartmentRoutingRuleClientCreate1) -> (PydanticObjectId)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func upsertV1(request: Requests.DepartmentRoutingRuleClientCreate1, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .put,
            path: "/operations/department_routing_rules/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Clears the caller org's default operations desk for a counterparty, keyed by exactly one of the shipper_org_id / off_chrt_shipper_org_id query params. | authz: min_org_role=administrator | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteV1(shipperOrgId: String? = nil, offChrtShipperOrgId: String? = nil, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/operations/department_routing_rules/v1",
            queryParams: [
                "shipper_org_id": shipperOrgId.map { .string($0) }, 
                "off_chrt_shipper_org_id": offChrtShipperOrgId.map { .string($0) }
            ],
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}