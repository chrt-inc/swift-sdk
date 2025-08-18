import Foundation

public final class OrgConnectionInfosCourierClient: Sendable {
    private let httpClient: HTTPClient

    public init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Retrieves courier organization connection information for the authenticated organization.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func get(requestOptions: RequestOptions? = nil) async throws -> CourierOrgConnectionInfo1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/org_connection_infos/courier",
            requestOptions: requestOptions,
            responseType: CourierOrgConnectionInfo1.self
        )
    }

    /// Creates courier organization connection information. Fails if already exists.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func create(request: CourierOrgConnectionInfoClientCreate1, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/org_connection_infos/courier/create",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Updates existing courier organization connection information.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func update(request: CourierOrgConnectionInfoClientUpdate1, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/oort/org_connection_infos/courier/update",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}