import Foundation

public final class ProvidersClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Lists on-CHRT executor connections and off-CHRT executor records. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (ProviderOnAndOffChrtExecutorListRes)
    ///
    /// - Parameter search: Search company names and on-CHRT handles
    /// - Parameter filterAutoAssignEnabled: Filter on-CHRT executor providers by auto-assign status
    /// - Parameter latitude: Latitude for proximity sorting
    /// - Parameter longitude: Longitude for proximity sorting
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listOnAndOffChrtExecutorsV1(search: String? = nil, filterAutoAssignEnabled: Bool? = nil, page: Int? = nil, pageSize: Int? = nil, latitude: Double? = nil, longitude: Double? = nil, requestOptions: RequestOptions? = nil) async throws -> ProviderOnAndOffChrtExecutorListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/orgs/providers/on_and_off_chrt_executors/list/v1",
            queryParams: [
                "search": search.map { .string($0) }, 
                "filter_auto_assign_enabled": filterAutoAssignEnabled.map { .bool($0) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }, 
                "latitude": latitude.map { .double($0) }, 
                "longitude": longitude.map { .double($0) }
            ],
            requestOptions: requestOptions,
            responseType: ProviderOnAndOffChrtExecutorListRes.self
        )
    }
}