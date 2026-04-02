import Foundation

public final class OffChrtShipperOrgClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Creates an off-platform shipper organization record. | (OffChrtShipperOrgClientCreate1) -> (PydanticObjectId)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createV1(request: Requests.OffChrtShipperOrgClientCreate1, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/orgs/off_chrt_shipper_org/create/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Lists all off-platform shipper organizations created by the caller's organization with optional search by company name. | () -> (OffChrtShipperOrgListRes)
    ///
    /// - Parameter search: Search by company name
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(search: String? = nil, page: Int? = nil, pageSize: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> OffChrtShipperOrgListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/orgs/off_chrt_shipper_org/list/v1",
            queryParams: [
                "search": search.map { .string($0) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: OffChrtShipperOrgListRes.self
        )
    }

    /// Retrieves specific off-platform shipper organization by ID. | () -> (OffChrtShipperOrg1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getByIdV1(id: String, requestOptions: RequestOptions? = nil) async throws -> OffChrtShipperOrg1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/orgs/off_chrt_shipper_org/v1/\(id)",
            requestOptions: requestOptions,
            responseType: OffChrtShipperOrg1.self
        )
    }

    /// Deletes off-platform shipper organization owned by the caller's organization. | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteByIdV1(id: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/orgs/off_chrt_shipper_org/v1/\(id)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Updates existing off-platform shipper organization owned by the caller's organization. | (OffChrtShipperOrgClientUpdate1) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateByIdV1(id: String, request: Requests.OffChrtShipperOrgClientUpdate1, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/orgs/off_chrt_shipper_org/v1/\(id)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}