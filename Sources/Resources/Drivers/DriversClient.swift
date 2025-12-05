import Foundation

public final class DriversClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Retrieves driver information for the caller within their organization. | () -> (Driver1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getForCallerV1(requestOptions: RequestOptions? = nil) async throws -> Driver1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/drivers/for_caller/v1",
            requestOptions: requestOptions,
            responseType: Driver1.self
        )
    }

    /// Retrieves detailed driver information by driver ID within the organization. | () -> (Driver1)
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

    /// Lists all organization members paired with their driver information if they are drivers. Filter by availability. | () -> (list[OrgMembersAndDrivers])
    ///
    /// - Parameter availableAccordingToDriver: Filter by driver's self-reported availability.
    /// - Parameter availableAccordingToOperators: Filter by operator-set availability.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listOrgMembersAndDriversV1(availableAccordingToDriver: Bool? = nil, availableAccordingToOperators: Bool? = nil, requestOptions: RequestOptions? = nil) async throws -> [OrgMembersAndDrivers] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/drivers/org_members_and_drivers/list/v1",
            queryParams: [
                "available_according_to_driver": availableAccordingToDriver.map { .bool($0) }, 
                "available_according_to_operators": availableAccordingToOperators.map { .bool($0) }
            ],
            requestOptions: requestOptions,
            responseType: [OrgMembersAndDrivers].self
        )
    }

    /// Lists all drivers belonging to the caller's organization. Filter by availability. | () -> (list[Driver1])
    ///
    /// - Parameter availableAccordingToDriver: Filter by driver's self-reported availability.
    /// - Parameter availableAccordingToOperators: Filter by operator-set availability.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(availableAccordingToDriver: Bool? = nil, availableAccordingToOperators: Bool? = nil, requestOptions: RequestOptions? = nil) async throws -> [Driver1] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/drivers/list/v1",
            queryParams: [
                "available_according_to_driver": availableAccordingToDriver.map { .bool($0) }, 
                "available_according_to_operators": availableAccordingToOperators.map { .bool($0) }
            ],
            requestOptions: requestOptions,
            responseType: [Driver1].self
        )
    }

    /// Creates a new driver profile for the caller. Returns existing driver ID if one already exists. Courier orgs only, min role: operator. | (DriverClientCreate1) -> (PydanticObjectId)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createV1(request: Requests.DriverClientCreate1, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/drivers/create/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Updates driver contact details and vehicle type assignments. Courier orgs only; caller must be the driver (self) or an operator+. | (DriverClientUpdate1) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateV1(driverId: String, request: Requests.DriverClientUpdate1, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/oort/drivers/update/v1/\(driverId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Updates the caller's driver last known location and timestamp for tracking. Only updates if timestamp is newer than existing (DB-side validation). Returns False if driver not found or timestamp is stale. | (DriverLastSeenReq) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateLastSeenV1(request: Requests.DriverLastSeenReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/drivers/last_seen/update/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Clears the driver's last known location and timestamp. | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func clearLastSeenV1(requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/drivers/last_seen/clear/v1",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Updates the caller's driver availability status. Must have status UNASSIGNED to set availability to False; always allows setting to True. Courier orgs only. | (DriverUpdateAvailabilityReq) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateAvailabilityAccordingToDriverV1(request: DriverUpdateAvailabilityReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/oort/drivers/update_availability/according_to_driver/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Updates a driver's availability status. Must have status UNASSIGNED to set availability to False; always allows setting to True. Courier orgs only, min role: operator. | (DriverUpdateAvailabilityReq) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateAvailabilityAccordingToOperatorsV1(driverId: String, request: DriverUpdateAvailabilityReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/oort/drivers/update_availability/according_to_operators/v1/\(driverId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}