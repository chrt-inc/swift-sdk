import Foundation

public final class SessionGeofencesClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Adds a geofence to an active session. | auth: api_key | authz: min_org_role=operator | (SessionGeofenceClientCreate1) -> (Session2)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func addV1(sessionId: String, request: SessionGeofenceClientCreate1, requestOptions: RequestOptions? = nil) async throws -> Session2 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/tracking/sessions/geofences/add/v1/\(sessionId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Session2.self
        )
    }

    /// Replaces an active session's geofences from an active organization template. | auth: api_key | authz: min_org_role=operator | (SessionGeofenceApplyTemplateReq) -> (Session2)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func applyTemplateV1(sessionId: String, request: Requests.SessionGeofenceApplyTemplateReq, requestOptions: RequestOptions? = nil) async throws -> Session2 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/tracking/sessions/geofences/apply_template/v1/\(sessionId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Session2.self
        )
    }

    /// Reorders an active session's geofences using an exact ID permutation. | auth: api_key | authz: min_org_role=operator | (SessionGeofenceReorderReq) -> (Session2)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func reorderV1(sessionId: String, request: Requests.SessionGeofenceReorderReq, requestOptions: RequestOptions? = nil) async throws -> Session2 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/tracking/sessions/geofences/reorder/v1/\(sessionId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Session2.self
        )
    }

    /// Updates a session geofence, resetting entry state only when location or radius changes. | auth: api_key | authz: min_org_role=operator | (SessionGeofenceClientUpdate1) -> (Session2)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateV1(sessionId: String, geofenceId: String, request: Requests.SessionGeofenceClientUpdate1, requestOptions: RequestOptions? = nil) async throws -> Session2 {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/tracking/sessions/geofences/update/v1/\(sessionId)/\(geofenceId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Session2.self
        )
    }

    /// Removes a geofence from an active session. | auth: api_key | authz: min_org_role=operator | () -> (Session2)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func removeV1(sessionId: String, geofenceId: String, requestOptions: RequestOptions? = nil) async throws -> Session2 {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/tracking/sessions/geofences/v1/\(sessionId)/\(geofenceId)",
            requestOptions: requestOptions,
            responseType: Session2.self
        )
    }
}