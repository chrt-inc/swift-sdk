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

    /// Sets the caller org's default operations desk for a counterparty (on-chrt shipper or off-chrt shipper shell). Upsert: one rule per (owner, counterparty). Returns the rule id. The mapping is a non-binding suggestion surfaced at Case creation. | authz: min_org_role=administrator | (DepartmentRoutingRuleClientCreate1) -> (PydanticObjectId)
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

    /// Clears the caller org's default operations desk for a counterparty. | authz: min_org_role=administrator | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteV1(counterpartyType: String, counterpartyId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/operations/department_routing_rules/v1/\(counterpartyType)/\(counterpartyId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}