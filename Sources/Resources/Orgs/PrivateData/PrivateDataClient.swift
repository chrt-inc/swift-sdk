import Foundation

public final class PrivateDataClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Retrieves private organization data for the caller's organization. | authz: min_org_role=operator | () -> (OrgPrivateData1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getV1(requestOptions: RequestOptions? = nil) async throws -> OrgPrivateData1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/orgs/org_private_data/v1",
            requestOptions: requestOptions,
            responseType: OrgPrivateData1.self
        )
    }
}