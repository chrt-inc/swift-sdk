import Foundation

public final class RateSheetsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Retrieves a rate sheet by ID. Only the owning org can fetch. | authz: allowed_org_types=[courier, forwarder], min_org_role=operator | () -> (RateSheet1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getV1(rateSheetId: String, requestOptions: RequestOptions? = nil) async throws -> RateSheet1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/billing/rate_sheets/v1/\(rateSheetId)",
            requestOptions: requestOptions,
            responseType: RateSheet1.self
        )
    }

    /// Updates a rate sheet. Only name, comments, cargo_types, and vehicle_types can be changed. Use the archive endpoint for archiving. | authz: allowed_org_types=[courier, forwarder], min_org_role=operator | (RateSheetClientUpdate1) -> (RateSheet1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateV1(rateSheetId: String, request: Requests.RateSheetClientUpdate1, requestOptions: RequestOptions? = nil) async throws -> RateSheet1 {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/billing/rate_sheets/v1/\(rateSheetId)",
            body: request,
            requestOptions: requestOptions,
            responseType: RateSheet1.self
        )
    }

    /// Lists rate sheets for the caller's organization with filtering, sorting, and pagination. | authz: allowed_org_types=[courier, forwarder], min_org_role=operator | () -> (RateSheetListResponse)
    ///
    /// - Parameter filterServiceType: Filter by service type (exact match)
    /// - Parameter filterCargoType: Filter by cargo type (checks if value is in cargo_types array)
    /// - Parameter filterVehicleType: Filter by vehicle type (checks if value is in vehicle_types array)
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listByOrgV1(sortBy: RateSheetSortByEnum? = nil, sortOrder: RateSheetsListByOrgV1RequestSortOrder? = nil, page: Int? = nil, pageSize: Int? = nil, filterArchived: Bool? = nil, filterPaymentVectorType: PaymentVectorTypeEnum1? = nil, filterServiceType: ServiceTypeEnum1? = nil, filterCargoType: CargoTypeEnum1? = nil, filterVehicleType: VehicleTypeEnum? = nil, requestOptions: RequestOptions? = nil) async throws -> RateSheetListResponse {
        return try await httpClient.performRequest(
            method: .get,
            path: "/billing/rate_sheets/list_by_org/v1",
            queryParams: [
                "sort_by": sortBy.map { .string($0.rawValue) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }, 
                "filter_archived": filterArchived.map { .bool($0) }, 
                "filter_payment_vector_type": filterPaymentVectorType.map { .string($0.rawValue) }, 
                "filter_service_type": filterServiceType.map { .string($0.rawValue) }, 
                "filter_cargo_type": filterCargoType.map { .string($0.rawValue) }, 
                "filter_vehicle_type": filterVehicleType.map { .string($0.rawValue) }
            ],
            requestOptions: requestOptions,
            responseType: RateSheetListResponse.self
        )
    }

    /// Creates a rate sheet. Couriers and forwarders only. | authz: allowed_org_types=[courier, forwarder], min_org_role=operator | (RateSheetClientCreate1) -> (PydanticObjectId)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createV1(paymentVectorType: PaymentVectorTypeEnum1, request: Requests.RateSheetClientCreate1, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/billing/rate_sheets/v1",
            queryParams: [
                "payment_vector_type": .string(paymentVectorType.rawValue)
            ],
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Archives or unarchives a rate sheet. When archiving, automatically removes the rate sheet from all default assignments (OrgPrivateData, Connections, Drivers). | authz: allowed_org_types=[courier, forwarder], min_org_role=operator | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func archiveV1(rateSheetId: String, archive: Bool, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/billing/rate_sheets/archive/v1/\(rateSheetId)",
            queryParams: [
                "archive": .bool(archive)
            ],
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Sets or clears the org's default rate sheet for a payment vector type and service type. Pass rate_sheet_id to set a default, or omit it to clear the default. | authz: allowed_org_types=[courier, forwarder], min_org_role=operator | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateOrgDefaultForServiceTypeV1(paymentVectorType: PaymentVectorTypeEnum1, serviceType: ServiceTypeEnum1, rateSheetId: String? = nil, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/billing/rate_sheets/update_org_default_for_service_type/v1",
            queryParams: [
                "payment_vector_type": .string(paymentVectorType.rawValue), 
                "service_type": .string(serviceType.rawValue), 
                "rate_sheet_id": rateSheetId.map { .string($0) }
            ],
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Sets or clears a rate sheet as the default for a connection. Pass rate_sheet_id to set a default, or omit it to clear the default. One default per service type per connection. | authz: allowed_org_types=[courier, forwarder], min_org_role=operator | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateDefaultForConnectionV1(connectionId: String, serviceType: ServiceTypeEnum1, rateSheetId: String? = nil, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/billing/rate_sheets/update_default_for_connection/v1",
            queryParams: [
                "connection_id": .string(connectionId), 
                "service_type": .string(serviceType.rawValue), 
                "rate_sheet_id": rateSheetId.map { .string($0) }
            ],
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Sets or clears a rate sheet as the default for a driver. Pass rate_sheet_id to set a default, or omit it to clear the default. One default per service type per driver. | authz: allowed_org_types=[courier, forwarder], min_org_role=operator | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateDefaultForDriverV1(driverId: String, serviceType: ServiceTypeEnum1, rateSheetId: String? = nil, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/billing/rate_sheets/update_default_for_driver/v1",
            queryParams: [
                "driver_id": .string(driverId), 
                "service_type": .string(serviceType.rawValue), 
                "rate_sheet_id": rateSheetId.map { .string($0) }
            ],
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Sets or clears a rate sheet as the default for an off-chrt shipper. Pass rate_sheet_id to set a default, or omit it to clear the default. One default per service type per off-chrt shipper. | authz: allowed_org_types=[courier], min_org_role=operator | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateDefaultForOffChrtShipperV1(offChrtShipperOrgId: String, serviceType: ServiceTypeEnum1, rateSheetId: String? = nil, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/billing/rate_sheets/update_default_for_off_chrt_shipper/v1",
            queryParams: [
                "off_chrt_shipper_org_id": .string(offChrtShipperOrgId), 
                "service_type": .string(serviceType.rawValue), 
                "rate_sheet_id": rateSheetId.map { .string($0) }
            ],
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}