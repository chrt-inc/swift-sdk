import Foundation

public final class DriversClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Lists all organization members paired with their driver information if they are drivers.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listOrgMembersAndDriversV1(requestOptions: RequestOptions? = nil) async throws -> [OrgMembersAndDrivers] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/drivers/org_members_and_drivers/list/v1",
            requestOptions: requestOptions,
            responseType: [OrgMembersAndDrivers].self
        )
    }

    /// Lists all drivers belonging to the authenticated organization.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(requestOptions: RequestOptions? = nil) async throws -> [Driver1] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/drivers/list/v1",
            requestOptions: requestOptions,
            responseType: [Driver1].self
        )
    }

    /// Creates a new driver profile for an organization member with optional vehicle type assignments.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createV1(request: Requests.DriverCreateReq, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/drivers/create/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Retrieves driver information for the authenticated user within their organization.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getV1(requestOptions: RequestOptions? = nil) async throws -> Driver1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/drivers/by_jwt_user_id/v1",
            requestOptions: requestOptions,
            responseType: Driver1.self
        )
    }

    /// Retrieves detailed driver information by driver ID within the organization.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getByDriverIdV1(driverId: String, requestOptions: RequestOptions? = nil) async throws -> Driver1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/drivers/v1/\(driverId)",
            requestOptions: requestOptions,
            responseType: Driver1.self
        )
    }

    /// Deletes a driver from the organization and removes them from associated rate sheets.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteV1(driverId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/oort/drivers/v1/\(driverId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Sets the activation status of a driver (active/inactive) within the organization.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func setActivationV1(request: Requests.SetDriverActivationReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/drivers/set_activation/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Updates the driver's last known location and timestamp for tracking purposes.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func lastSeenV1(request: Requests.DriverLastSeenReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/drivers/last_seen/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Clears the driver's last known location and timestamp.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func lastSeenClearV1(requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/drivers/last_seen/clear/v1",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Updates driver contact details and vehicle type assignments within the organization.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateDriverV1(request: Requests.UpdateDriverDetailsReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/oort/drivers/update/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}