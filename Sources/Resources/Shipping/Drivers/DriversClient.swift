import Foundation

public final class DriversClient: Sendable {
    public let complianceDocuments: DriversComplianceDocumentsClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.complianceDocuments = DriversComplianceDocumentsClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }

    /// Creates a new driver profile for the target user (defaults to caller). Drivers can create themselves; operators+ can create any org member. Provider orgs only. | (DriverClientCreate1) -> (PydanticObjectId)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.drivers.createV1(
    ///         targetUserId: "target_user_id",
    ///         request: .init(schemaVersion: 1)
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
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

    /// Retrieves driver information for the caller within their organization. | () -> (DriverWithActiveTaskGroupIds1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.drivers.getForCallerV1()
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getForCallerV1(requestOptions: RequestOptions? = nil) async throws -> DriverWithActiveTaskGroupIds1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping/drivers/for_caller/v1",
            requestOptions: requestOptions,
            responseType: DriverWithActiveTaskGroupIds1.self
        )
    }

    /// Clears the driver's last known location and timestamp. | () -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.drivers.clearLastSeenV1()
    /// }
    ///
    /// try await main()
    /// ```
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

    /// Lists all drivers belonging to the caller's organization with filtering, sorting, pagination, and optional full-text search. | () -> (DriverListRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.drivers.listV1(
    ///         sortOrder: .asc,
    ///         page: 1,
    ///         pageSize: 1,
    ///         search: "search",
    ///         filterAvailableAccordingToDriver: true,
    ///         filterAvailableAccordingToOperators: true,
    ///         filterStatus: [
    ///             .unassigned
    ///         ]
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter sortOrder: Sort order (asc or desc)
    /// - Parameter search: Full-text search query
    /// - Parameter filterAvailableAccordingToDriver: Filter by driver's self-reported availability
    /// - Parameter filterAvailableAccordingToOperators: Filter by operator-set availability
    /// - Parameter filterStatus: Filter by driver state (UNASSIGNED / ASSIGNED / IN_PROGRESS)
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, search: String? = nil, filterAvailableAccordingToDriver: Bool? = nil, filterAvailableAccordingToOperators: Bool? = nil, filterStatus: [DriverStatusEnum]? = nil, requestOptions: RequestOptions? = nil) async throws -> DriverListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping/drivers/list/v1",
            queryParams: [
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }, 
                "search": search.map { .string($0) }, 
                "filter_available_according_to_driver": filterAvailableAccordingToDriver.map { .bool($0) }, 
                "filter_available_according_to_operators": filterAvailableAccordingToOperators.map { .bool($0) }, 
                "filter_status": filterStatus.map { .unknown($0) }
            ],
            requestOptions: requestOptions,
            responseType: DriverListRes.self
        )
    }

    /// Lists all organization members paired with their driver information if they are drivers. Supports search by name, filtering, sorting, and pagination. | () -> (OrgMembersAndDriversListRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.drivers.listOrgMembersAndDriversV1(
    ///         search: "search",
    ///         filterRole: [
    ///             .owner
    ///         ],
    ///         filterAvailableAccordingToDriver: true,
    ///         filterAvailableAccordingToOperators: true,
    ///         sortBy: .firstName,
    ///         sortOrder: .asc,
    ///         page: 1,
    ///         pageSize: 1
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter search: Search by first or last name
    /// - Parameter filterRole: Filter by organization role(s)
    /// - Parameter filterAvailableAccordingToDriver: Filter by driver's self-reported availability.
    /// - Parameter filterAvailableAccordingToOperators: Filter by operator-set availability.
    /// - Parameter sortBy: Field to sort by
    /// - Parameter sortOrder: Sort order (asc or desc)
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listOrgMembersAndDriversV1(search: String? = nil, filterRole: [OrgRoleEnum]? = nil, filterAvailableAccordingToDriver: Bool? = nil, filterAvailableAccordingToOperators: Bool? = nil, sortBy: OrgMemberSortByEnum? = nil, sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> OrgMembersAndDriversListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping/drivers/org_members_and_drivers/list/v1",
            queryParams: [
                "search": search.map { .string($0) }, 
                "filter_role": filterRole.map { .unknown($0) }, 
                "filter_available_according_to_driver": filterAvailableAccordingToDriver.map { .bool($0) }, 
                "filter_available_according_to_operators": filterAvailableAccordingToOperators.map { .bool($0) }, 
                "sort_by": sortBy.map { .string($0.rawValue) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: OrgMembersAndDriversListRes.self
        )
    }

    /// Creates a driver's self-reported hours worked and miles driven for a single calendar day. Caller must be the driver themselves. | authz: allowed_org_types=[provider], min_org_role=driver | (DriverSelfReportedHoursAndMileageClientCreate1) -> (DriverSelfReportedHoursAndMileage1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.drivers.createSelfReportedHoursAndMileageV1(request: .init(
    ///         date: "date",
    ///         driverId: "driver_id",
    ///         schemaVersion: 1
    ///     ))
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createSelfReportedHoursAndMileageV1(request: Requests.DriverSelfReportedHoursAndMileageClientCreate1, requestOptions: RequestOptions? = nil) async throws -> DriverSelfReportedHoursAndMileage1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/drivers/self_reported_hours_and_mileage/create/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: DriverSelfReportedHoursAndMileage1.self
        )
    }

    /// Permanently deletes a driver's self-report for a calendar day. Caller must be the driver themselves. | authz: allowed_org_types=[provider], min_org_role=driver | () -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.drivers.deleteSelfReportedHoursAndMileageV1(
    ///         driverId: "driver_id",
    ///         reportDate: "report_date"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteSelfReportedHoursAndMileageV1(driverId: String, reportDate: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/drivers/self_reported_hours_and_mileage/delete/v1/\(driverId)/\(reportDate)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Retrieves a driver's self-report for a single calendar day. Caller must be the driver themselves or an operator+ in the driver's org. | authz: allowed_org_types=[provider], min_org_role=driver | () -> (DriverSelfReportedHoursAndMileage1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.drivers.getSelfReportedHoursAndMileageV1(
    ///         driverId: "driver_id",
    ///         reportDate: "report_date"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getSelfReportedHoursAndMileageV1(driverId: String, reportDate: String, requestOptions: RequestOptions? = nil) async throws -> DriverSelfReportedHoursAndMileage1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping/drivers/self_reported_hours_and_mileage/get/v1/\(driverId)/\(reportDate)",
            requestOptions: requestOptions,
            responseType: DriverSelfReportedHoursAndMileage1.self
        )
    }

    /// Lists a driver's self-reports across an optional date range with sorting and pagination. Caller must be the driver themselves or an operator+ in the driver's org. | authz: allowed_org_types=[provider], min_org_role=driver | () -> (DriverSelfReportedHoursAndMileageListRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.drivers.listSelfReportedHoursAndMileageV1(
    ///         driverId: "driver_id",
    ///         filterStartDate: "filter_start_date",
    ///         filterEndDate: "filter_end_date",
    ///         sortOrder: .asc,
    ///         page: 1,
    ///         pageSize: 1
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listSelfReportedHoursAndMileageV1(driverId: String, filterStartDate: String? = nil, filterEndDate: String? = nil, sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> DriverSelfReportedHoursAndMileageListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping/drivers/self_reported_hours_and_mileage/list/v1/\(driverId)",
            queryParams: [
                "filter_start_date": filterStartDate.map { .string($0) }, 
                "filter_end_date": filterEndDate.map { .string($0) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: DriverSelfReportedHoursAndMileageListRes.self
        )
    }

    /// Lists all drivers' self-reports in the caller's org with date-range filtering, sorting, and pagination. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (DriverSelfReportedHoursAndMileageListRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.drivers.orgListSelfReportedHoursAndMileageV1(
    ///         filterDriverId: "filter_driver_id",
    ///         filterStartDate: "filter_start_date",
    ///         filterEndDate: "filter_end_date",
    ///         sortBy: .date,
    ///         sortOrder: .asc,
    ///         page: 1,
    ///         pageSize: 1
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func orgListSelfReportedHoursAndMileageV1(filterDriverId: String? = nil, filterStartDate: String? = nil, filterEndDate: String? = nil, sortBy: DriversOrgListSelfReportedHoursAndMileageV1RequestSortBy? = nil, sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> DriverSelfReportedHoursAndMileageListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping/drivers/self_reported_hours_and_mileage/org_list/v1",
            queryParams: [
                "filter_driver_id": filterDriverId.map { .string($0) }, 
                "filter_start_date": filterStartDate.map { .string($0) }, 
                "filter_end_date": filterEndDate.map { .string($0) }, 
                "sort_by": sortBy.map { .string($0.rawValue) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: DriverSelfReportedHoursAndMileageListRes.self
        )
    }

    /// Partially updates a driver's self-reported hours worked and/or miles driven for a calendar day. Caller must be the driver themselves. | authz: allowed_org_types=[provider], min_org_role=driver | (DriverSelfReportedHoursAndMileageClientUpdate1) -> (DriverSelfReportedHoursAndMileage1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.drivers.updateSelfReportedHoursAndMileageV1(
    ///         driverId: "driver_id",
    ///         reportDate: "report_date",
    ///         request: .init()
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateSelfReportedHoursAndMileageV1(driverId: String, reportDate: String, request: Requests.DriverSelfReportedHoursAndMileageClientUpdate1, requestOptions: RequestOptions? = nil) async throws -> DriverSelfReportedHoursAndMileage1 {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/shipping/drivers/self_reported_hours_and_mileage/update/v1/\(driverId)/\(reportDate)",
            body: request,
            requestOptions: requestOptions,
            responseType: DriverSelfReportedHoursAndMileage1.self
        )
    }

    /// Retrieves driver analytics for a time window. Daily rows are clipped to the requested UTC window; task-group rows include full in-progress mileage for task groups whose in-progress interval overlaps the requested window. | authz: allowed_org_types=[provider], min_org_role=operator | (DriverStatsReq) -> (DriverStatsRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.drivers.getStatsV1(
    ///         driverId: "driver_id",
    ///         request: .init(
    ///             endTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///             startTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
    ///         )
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getStatsV1(driverId: String, request: Requests.DriverStatsReq, requestOptions: RequestOptions? = nil) async throws -> DriverStatsRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/drivers/stats/v1/\(driverId)",
            body: request,
            requestOptions: requestOptions,
            responseType: DriverStatsRes.self
        )
    }

    /// Updates driver contact details and vehicle type assignments. Provider orgs only; caller must be the driver (self) or an operator+. | (DriverClientUpdate1) -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.drivers.updateV1(
    ///         driverId: "driver_id",
    ///         request: .init()
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
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

    /// Toggles a driver's `auto_assign_enabled` flag — opt-in for direct (non-bidding) task-group assignment. Authorized: the driver themselves OR an operator+ in the driver's org (operators may override the driver's setting). Provider orgs only. | (DriverUpdateAutoAssignReq) -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.drivers.updateAutoAssignV1(
    ///         driverId: "driver_id",
    ///         request: .init(autoAssignEnabled: true)
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateAutoAssignV1(driverId: String, request: Requests.DriverUpdateAutoAssignReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/shipping/drivers/update_auto_assign/v1/\(driverId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Updates the caller's driver availability status. Must have status UNASSIGNED to set availability to False; always allows setting to True. Provider orgs only. | (DriverUpdateAvailabilityReq) -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.drivers.updateAvailabilityAccordingToDriverV1(request: DriverUpdateAvailabilityReq(
    ///         available: true
    ///     ))
    /// }
    ///
    /// try await main()
    /// ```
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

    /// Updates a driver's availability status. Must have status UNASSIGNED to set availability to False; always allows setting to True. Provider orgs only, min role: operator. | (DriverUpdateAvailabilityReq) -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.drivers.updateAvailabilityAccordingToOperatorsV1(
    ///         driverId: "driver_id",
    ///         request: DriverUpdateAvailabilityReq(
    ///             available: true
    ///         )
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
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

    /// Retrieves detailed driver information by driver ID within the organization. | () -> (DriverWithActiveTaskGroupIds1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.drivers.getByDriverIdV1(driverId: "driver_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getByDriverIdV1(driverId: String, requestOptions: RequestOptions? = nil) async throws -> DriverWithActiveTaskGroupIds1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping/drivers/v1/\(driverId)",
            requestOptions: requestOptions,
            responseType: DriverWithActiveTaskGroupIds1.self
        )
    }
}