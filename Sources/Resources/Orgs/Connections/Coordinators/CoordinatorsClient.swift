import Foundation

public final class CoordinatorsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Returns distinct connected-coordinator names matching the query, with the matching connection IDs. Shippers see their coordinators; providers see coordinators for which they are executors. | authz: allowed_org_types=[provider, shipper], min_org_role=operator | () -> (list[ConnectionTypeaheadResult])
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.orgs.connections.coordinators.typeaheadV1(
    ///         query: "query",
    ///         limit: 1
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter query: Typeahead search query
    /// - Parameter limit: Max results per field
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func typeaheadV1(query: String, limit: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> [ConnectionTypeaheadResult] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/orgs/connections/coordinators/typeahead/v1",
            queryParams: [
                "query": .string(query), 
                "limit": limit.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: [ConnectionTypeaheadResult].self
        )
    }
}