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
            path: "/shipping/drivers/for_caller/v1",
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
            path: "/shipping/drivers/v1/\(driverId)",
            requestOptions: requestOptions,
            responseType: Driver1.self
        )
    }

    /// Lists all organization members paired with their driver information if they are drivers. Filter by availability. | () -> (OrgMembersAndDriversListRes)
    ///
    /// - Parameter filterRole: Filter by organization role(s)
    /// - Parameter filterAvailableAccordingToDriver: Filter by driver's self-reported availability.
    /// - Parameter filterAvailableAccordingToOperators: Filter by operator-set availability.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listOrgMembersAndDriversV1(filterRole: OrgRoleEnum? = nil, filterAvailableAccordingToDriver: Bool? = nil, filterAvailableAccordingToOperators: Bool? = nil, page: Int? = nil, pageSize: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> OrgMembersAndDriversListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping/drivers/org_members_and_drivers/list/v1",
            queryParams: [
                "filter_role": filterRole.map { .string($0.rawValue) }, 
                "filter_available_according_to_driver": filterAvailableAccordingToDriver.map { .bool($0) }, 
                "filter_available_according_to_operators": filterAvailableAccordingToOperators.map { .bool($0) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: OrgMembersAndDriversListRes.self
        )
    }

    /// Lists all drivers belonging to the caller's organization with filtering, sorting, pagination, and optional full-text search. | () -> (DriverListRes)
    ///
    /// - Parameter sortOrder: Sort order (asc or desc)
    /// - Parameter search: Full-text search query
    /// - Parameter filterAvailableAccordingToDriver: Filter by driver's self-reported availability
    /// - Parameter filterAvailableAccordingToOperators: Filter by operator-set availability
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, search: String? = nil, filterAvailableAccordingToDriver: Bool? = nil, filterAvailableAccordingToOperators: Bool? = nil, requestOptions: RequestOptions? = nil) async throws -> DriverListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping/drivers/list/v1",
            queryParams: [
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }, 
                "search": search.map { .string($0) }, 
                "filter_available_according_to_driver": filterAvailableAccordingToDriver.map { .bool($0) }, 
                "filter_available_according_to_operators": filterAvailableAccordingToOperators.map { .bool($0) }
            ],
            requestOptions: requestOptions,
            responseType: DriverListRes.self
        )
    }

    /// Creates a new driver profile for the target user (defaults to caller). Drivers can create themselves; operators+ can create any org member. Courier orgs only. | (DriverClientCreate1) -> (PydanticObjectId)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createV1(targetUserId: String? = nil, request: Requests.DriverClientCreate1, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/drivers/create/v1",
            queryParams: [
                "target_user_id": targetUserId.map { .string($0) }
            ],
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
            path: "/shipping/drivers/update/v1/\(driverId)",
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
            path: "/shipping/drivers/last_seen/clear/v1",
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
            path: "/shipping/drivers/update_availability/according_to_driver/v1",
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
            path: "/shipping/drivers/update_availability/according_to_operators/v1/\(driverId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}