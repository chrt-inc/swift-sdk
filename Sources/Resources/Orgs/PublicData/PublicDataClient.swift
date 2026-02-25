import Foundation

public final class PublicDataClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Retrieves public organization data for the caller's organization. | () -> (OrgPublicData1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getV1(requestOptions: RequestOptions? = nil) async throws -> OrgPublicData1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/orgs/org_public_data/v1",
            requestOptions: requestOptions,
            responseType: OrgPublicData1.self
        )
    }

    /// Creates org_public_data and org_private_data documents for the caller's organization using org_type from JWT. | (CreateOrgPublicDataReq) -> (CreateOrgPublicDataRes)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createV1(request: Requests.CreateOrgPublicDataReq, requestOptions: RequestOptions? = nil) async throws -> CreateOrgPublicDataRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/orgs/org_public_data/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: CreateOrgPublicDataRes.self
        )
    }

    /// Updates the handle and/or company_name for the caller's organization. | (UpdateOrgPublicDataReq) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateV1(request: Requests.UpdateOrgPublicDataReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/orgs/org_public_data/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Retrieves public organization data for a specific organization by ID. | () -> (OrgPublicData1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getByOrgIdV1(orgId: String, requestOptions: RequestOptions? = nil) async throws -> OrgPublicData1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/orgs/org_public_data/v1/\(orgId)",
            requestOptions: requestOptions,
            responseType: OrgPublicData1.self
        )
    }

    /// Returns True when the provided handle is available, otherwise False. | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getHandleAvailabilityV1(handle: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .get,
            path: "/orgs/org_public_data/handle_availability/v1/\(handle)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}