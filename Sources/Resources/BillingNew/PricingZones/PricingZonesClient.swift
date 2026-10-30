import Foundation

public final class PricingZonesClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Archives a pricing zone so it can no longer be added to rate sheets; sheets already using it keep it. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (PricingZone1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.billingNew.pricingZones.archiveV1(pricingZoneId: "pricing_zone_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func archiveV1(pricingZoneId: String, requestOptions: RequestOptions? = nil) async throws -> PricingZone1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/billing_new/pricing_zones/archive/v1/\(pricingZoneId)",
            requestOptions: requestOptions,
            responseType: PricingZone1.self
        )
    }

    /// Creates a pricing zone from stores, postal codes or a map area for zone rate-sheet rules. | authz: allowed_org_types=[provider], min_org_role=operator | (PricingZoneClientCreate1) -> (PricingZone1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.billingNew.pricingZones.createV1(request: .init(
    ///         name: "name",
    ///         schemaVersion: 1
    ///     ))
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createV1(request: Requests.PricingZoneClientCreate1, requestOptions: RequestOptions? = nil) async throws -> PricingZone1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/billing_new/pricing_zones/create/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: PricingZone1.self
        )
    }

    /// Retrieves an active or archived pricing zone owned by the caller's organization. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (PricingZone1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.billingNew.pricingZones.getV1(pricingZoneId: "pricing_zone_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getV1(pricingZoneId: String, requestOptions: RequestOptions? = nil) async throws -> PricingZone1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/billing_new/pricing_zones/get/v1/\(pricingZoneId)",
            requestOptions: requestOptions,
            responseType: PricingZone1.self
        )
    }

    /// Lists the caller organization's pricing zones by name, active zones only unless archived ones are requested. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (list[PricingZone1])
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.billingNew.pricingZones.listV1(includeArchived: true)
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(includeArchived: Bool? = nil, requestOptions: RequestOptions? = nil) async throws -> [PricingZone1] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/billing_new/pricing_zones/list/v1",
            queryParams: [
                "include_archived": includeArchived.map { .bool($0) }
            ],
            requestOptions: requestOptions,
            responseType: [PricingZone1].self
        )
    }

    /// Updates an active pricing zone's name or membership; every sheet using it prices with the new zone. | authz: allowed_org_types=[provider], min_org_role=operator | (PricingZoneClientUpdate1) -> (PricingZone1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.billingNew.pricingZones.updateV1(
    ///         pricingZoneId: "pricing_zone_id",
    ///         request: .init()
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateV1(pricingZoneId: String, request: Requests.PricingZoneClientUpdate1, requestOptions: RequestOptions? = nil) async throws -> PricingZone1 {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/billing_new/pricing_zones/update/v1/\(pricingZoneId)",
            body: request,
            requestOptions: requestOptions,
            responseType: PricingZone1.self
        )
    }
}