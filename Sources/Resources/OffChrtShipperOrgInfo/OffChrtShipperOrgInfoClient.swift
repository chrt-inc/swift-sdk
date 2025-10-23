import Foundation

public final class OffChrtShipperOrgInfoClient: Sendable {
    private let httpClient: HTTPClient

    public init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Creates connection information for working with off-platform shipper organizations.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createV1(request: Requests.OffChrtShipperOrgInfoClientCreate1, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/off_chrt_shipper_org_info/create/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Lists all off-platform shipper connections created by the authenticated organization.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(requestOptions: RequestOptions? = nil) async throws -> [OffChrtShipperOrgInfo1] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/off_chrt_shipper_org_info/list/v1",
            requestOptions: requestOptions,
            responseType: [OffChrtShipperOrgInfo1].self
        )
    }

    /// Retrieves specific off-platform shipper connection information by ID.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getByIdV1(id: String, requestOptions: RequestOptions? = nil) async throws -> OffChrtShipperOrgInfo1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/off_chrt_shipper_org_info/v1/\(id)",
            requestOptions: requestOptions,
            responseType: OffChrtShipperOrgInfo1.self
        )
    }

    /// Deletes off-platform shipper connection information owned by the authenticated organization.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteByIdV1(id: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/oort/off_chrt_shipper_org_info/v1/\(id)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Updates existing off-platform shipper connection information owned by the authenticated organization.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateByIdV1(id: String, request: Requests.OffChrtShipperOrgInfoClientUpdate1, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/oort/off_chrt_shipper_org_info/v1/\(id)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}