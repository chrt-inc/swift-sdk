import Foundation

public final class ShippersClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Returns distinct connected-shipper names matching the query, with the matching connection IDs. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (list[ConnectionTypeaheadResult])
    ///
    /// - Parameter query: Typeahead search query
    /// - Parameter limit: Max results per field
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func typeaheadV1(query: String, limit: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> [ConnectionTypeaheadResult] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/orgs/connections/shippers/typeahead/v1",
            queryParams: [
                "query": .string(query), 
                "limit": limit.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: [ConnectionTypeaheadResult].self
        )
    }
}