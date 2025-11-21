import Foundation

public final class ForwarderClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Creates forwarder organization connection information. Fails if already exists. | (ForwarderOrgInfoForConnectionsClientCreate1) -> (PydanticObjectId)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createV1(request: Requests.ForwarderOrgInfoForConnectionsClientCreate1, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/connections/org_info_for_connections/forwarder/create/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Updates existing forwarder organization connection information. | (ForwarderOrgInfoForConnectionsClientUpdate1) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateV1(request: Requests.ForwarderOrgInfoForConnectionsClientUpdate1, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/connections/org_info_for_connections/forwarder/update/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}