import Foundation

public final class DriversClient: Sendable {
    private let httpClient: HTTPClient

    public init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Lists all organization members paired with their driver information if they are drivers.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listOrgMembersAndDrivers(requestOptions: RequestOptions? = nil) async throws -> [OrgMembersAndDrivers] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/drivers/org_members_and_drivers/list",
            requestOptions: requestOptions,
            responseType: [OrgMembersAndDrivers].self
        )
    }

    /// Lists all drivers belonging to the authenticated organization.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func list(requestOptions: RequestOptions? = nil) async throws -> [Driver1] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/drivers/list",
            requestOptions: requestOptions,
            responseType: [Driver1].self
        )
    }

    /// Creates a new driver profile for an organization member with optional vehicle type assignments.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func create(request: Requests.DriverCreateReq, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/drivers/create",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Retrieves driver information for the authenticated user within their organization.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func get(requestOptions: RequestOptions? = nil) async throws -> Driver1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/drivers/by_jwt_user_id",
            requestOptions: requestOptions,
            responseType: Driver1.self
        )
    }

    /// Retrieves detailed driver information by driver ID within the organization.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getByDriverId(driverId: String, requestOptions: RequestOptions? = nil) async throws -> Driver1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/drivers/\(driverId)",
            requestOptions: requestOptions,
            responseType: Driver1.self
        )
    }

    /// Deletes a driver from the organization and removes them from associated rate sheets.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func delete(driverId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/oort/drivers/\(driverId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Sets the activation status of a driver (active/inactive) within the organization.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func setActivation(request: Requests.SetDriverActivationReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/drivers/set_activation",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Updates the driver's last known location and timestamp for tracking purposes.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func lastSeen(request: Requests.DriverLastSeenReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/drivers/last_seen",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Updates driver contact details and vehicle type assignments within the organization.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateDriver(request: Requests.UpdateDriverDetailsReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/oort/drivers/update",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}