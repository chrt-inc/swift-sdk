import Foundation

public final class ShipperContactInfoClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Retrieves the authenticated user's own shipper contact information.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getByJwtUserIdV1(requestOptions: RequestOptions? = nil) async throws -> ShipperContactInfo1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/shipper_contact_info/by_jwt_user_id/v1",
            requestOptions: requestOptions,
            responseType: ShipperContactInfo1.self
        )
    }

    /// Lists all shipper contacts created by the authenticated organization.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listByJwtOrgIdV1(requestOptions: RequestOptions? = nil) async throws -> [ShipperContactInfo1] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/shipper_contact_info/list/by_jwt_org_id/v1",
            requestOptions: requestOptions,
            responseType: [ShipperContactInfo1].self
        )
    }

    /// Lists all shipper contacts accessible to the courier organization for a specific on-platform shipper.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listCourierContactsByShipperOrgIdV1(shipperOrgId: String, requestOptions: RequestOptions? = nil) async throws -> [ShipperContactInfo1] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/shipper_contact_info/courier_contacts/list/v1/\(shipperOrgId)",
            requestOptions: requestOptions,
            responseType: [ShipperContactInfo1].self
        )
    }

    /// Lists all shipper contacts for a specific off-platform shipper connection.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listByOffChrtShipperOrgInfoIdV1(offChrtShipperOrgInfoId: String, requestOptions: RequestOptions? = nil) async throws -> [ShipperContactInfo1] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/shipper_contact_info/list/v1/\(offChrtShipperOrgInfoId)",
            requestOptions: requestOptions,
            responseType: [ShipperContactInfo1].self
        )
    }

    /// Retrieves a specific shipper contact by ID if authorized to access it.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getByIdV1(id: String, requestOptions: RequestOptions? = nil) async throws -> ShipperContactInfo1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/shipper_contact_info/v1/\(id)",
            requestOptions: requestOptions,
            responseType: ShipperContactInfo1.self
        )
    }

    /// Creates contact information for an on-platform shipper organization or user.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createOnPlatformV1(request: ShipperContactInfoClientCreate1, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/shipper_contact_info/create/on_platform/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Creates contact information for an off-platform shipper using connection info.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createOffPlatformV1(request: ShipperContactInfoClientCreate1, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/shipper_contact_info/create/off_platform/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Updates existing shipper contact information owned by the authenticated organization.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateV1(shipperContactInfoId: String, request: Requests.ShipperContactInfoClientUpdate1, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/oort/shipper_contact_info/update/v1/\(shipperContactInfoId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Deletes shipper contact information owned by the authenticated organization.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteByIdV1(id: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/oort/shipper_contact_info/delete/v1/\(id)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}