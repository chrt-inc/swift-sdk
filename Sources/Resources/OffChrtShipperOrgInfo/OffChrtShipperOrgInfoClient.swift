import Foundation

public final class OffChrtShipperOrgInfoClient: Sendable {
    private let httpClient: HTTPClient

    public init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Creates connection information for working with off-platform shipper organizations.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func create(request: Requests.OffChrtShipperOrgInfoClientCreate1, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/off_chrt_shipper_org_info/create",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Lists all off-platform shipper connections created by the authenticated organization.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func list(requestOptions: RequestOptions? = nil) async throws -> [OffChrtShipperOrgInfo1] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/off_chrt_shipper_org_info/list",
            requestOptions: requestOptions,
            responseType: [OffChrtShipperOrgInfo1].self
        )
    }

    /// Retrieves specific off-platform shipper connection information by ID.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getById(id: String, requestOptions: RequestOptions? = nil) async throws -> OffChrtShipperOrgInfo1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/off_chrt_shipper_org_info/\(id)",
            requestOptions: requestOptions,
            responseType: OffChrtShipperOrgInfo1.self
        )
    }

    /// Updates existing off-platform shipper connection information owned by the authenticated organization.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateById(id: String, request: Requests.OffChrtShipperOrgInfoClientUpdate1, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/oort/off_chrt_shipper_org_info/\(id)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}