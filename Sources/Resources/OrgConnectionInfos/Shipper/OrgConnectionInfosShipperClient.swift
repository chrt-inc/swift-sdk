import Foundation

public final class OrgConnectionInfosShipperClient: Sendable {
    private let httpClient: HTTPClient

    public init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Retrieves shipper organization connection information for the authenticated organization.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func get(requestOptions: RequestOptions? = nil) async throws -> ShipperOrgConnectionInfo1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/org_connection_infos/shipper",
            requestOptions: requestOptions,
            responseType: ShipperOrgConnectionInfo1.self
        )
    }

    /// Creates shipper organization connection information. Fails if already exists.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func create(request: ShipperOrgConnectionInfoClientCreate1, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/org_connection_infos/shipper/create",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Updates existing shipper organization connection information.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func update(request: ShipperOrgConnectionInfoClientUpdate1, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/oort/org_connection_infos/shipper/update",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}