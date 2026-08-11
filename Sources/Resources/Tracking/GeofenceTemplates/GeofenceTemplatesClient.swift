import Foundation

public final class GeofenceTemplatesClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Archives a geofence template owned by the caller's organization. | authz: min_org_role=operator | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func archiveV1(geofenceTemplateId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/tracking/geofence_templates/archive/v1/\(geofenceTemplateId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Lists geofence templates for the caller's organization. | authz: min_org_role=operator | () -> (GeofenceTemplateListRes)
    ///
    /// - Parameter sortBy: Field to sort by.
    /// - Parameter sortOrder: Sort order.
    /// - Parameter filterArchived: Include archived templates instead of active templates.
    /// - Parameter filterOwnedByUserId: Filter by the user that created the template.
    /// - Parameter filterCreatedAtTimestampGte: Filter created_at_timestamp >= value.
    /// - Parameter filterCreatedAtTimestampLte: Filter created_at_timestamp <= value.
    /// - Parameter filterLastEditedAtTimestampGte: Filter last_edited_at_timestamp >= value.
    /// - Parameter filterLastEditedAtTimestampLte: Filter last_edited_at_timestamp <= value.
    /// - Parameter filterLastUsedAtTimestampGte: Filter last_used_at_timestamp >= value.
    /// - Parameter filterLastUsedAtTimestampLte: Filter last_used_at_timestamp <= value.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(sortBy: GeofenceTemplateSortByEnum? = nil, sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, filterArchived: Bool? = nil, filterOwnedByUserId: String? = nil, filterCreatedAtTimestampGte: Date? = nil, filterCreatedAtTimestampLte: Date? = nil, filterLastEditedAtTimestampGte: Date? = nil, filterLastEditedAtTimestampLte: Date? = nil, filterLastUsedAtTimestampGte: Date? = nil, filterLastUsedAtTimestampLte: Date? = nil, requestOptions: RequestOptions? = nil) async throws -> GeofenceTemplateListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking/geofence_templates/list/v1",
            queryParams: [
                "sort_by": sortBy.map { .string($0.rawValue) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }, 
                "filter_archived": filterArchived.map { .bool($0) }, 
                "filter_owned_by_user_id": filterOwnedByUserId.map { .string($0) }, 
                "filter_created_at_timestamp_gte": filterCreatedAtTimestampGte.map { .date($0) }, 
                "filter_created_at_timestamp_lte": filterCreatedAtTimestampLte.map { .date($0) }, 
                "filter_last_edited_at_timestamp_gte": filterLastEditedAtTimestampGte.map { .date($0) }, 
                "filter_last_edited_at_timestamp_lte": filterLastEditedAtTimestampLte.map { .date($0) }, 
                "filter_last_used_at_timestamp_gte": filterLastUsedAtTimestampGte.map { .date($0) }, 
                "filter_last_used_at_timestamp_lte": filterLastUsedAtTimestampLte.map { .date($0) }
            ],
            requestOptions: requestOptions,
            responseType: GeofenceTemplateListRes.self
        )
    }

    /// Restores an archived geofence template owned by the caller's organization. | authz: min_org_role=operator | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func unarchiveV1(geofenceTemplateId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/tracking/geofence_templates/unarchive/v1/\(geofenceTemplateId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Updates an active geofence template owned by the caller's organization. | authz: min_org_role=operator | (SessionGeofenceTemplateClientUpdate1) -> (SessionGeofenceTemplate1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateV1(geofenceTemplateId: String, request: Requests.SessionGeofenceTemplateClientUpdate1, requestOptions: RequestOptions? = nil) async throws -> SessionGeofenceTemplate1 {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/tracking/geofence_templates/update/v1/\(geofenceTemplateId)",
            body: request,
            requestOptions: requestOptions,
            responseType: SessionGeofenceTemplate1.self
        )
    }

    /// Creates a geofence template owned by the caller's organization. | authz: min_org_role=operator | (SessionGeofenceTemplateClientCreate1) -> (SessionGeofenceTemplate1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createV1(request: Requests.SessionGeofenceTemplateClientCreate1, requestOptions: RequestOptions? = nil) async throws -> SessionGeofenceTemplate1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/tracking/geofence_templates/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: SessionGeofenceTemplate1.self
        )
    }

    /// Retrieves a geofence template owned by the caller's organization. | authz: min_org_role=operator | () -> (SessionGeofenceTemplate1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getByIdV1(geofenceTemplateId: String, requestOptions: RequestOptions? = nil) async throws -> SessionGeofenceTemplate1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking/geofence_templates/v1/\(geofenceTemplateId)",
            requestOptions: requestOptions,
            responseType: SessionGeofenceTemplate1.self
        )
    }
}