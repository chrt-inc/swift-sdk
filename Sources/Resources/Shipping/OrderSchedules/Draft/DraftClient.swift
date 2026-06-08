import Foundation

public final class DraftClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Creates a new draft order schedule. | authz: min_org_role=operator | (OrderScheduleClientCreate1) -> (PydanticObjectId)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func newV1(request: Requests.OrderScheduleClientCreate1, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/order_schedules/draft/new/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Updates a draft order schedule. | authz: min_org_role=operator | (OrderScheduleClientUpdate1) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateV1(orderScheduleId: String, request: Requests.OrderScheduleClientUpdate1, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/shipping/order_schedules/draft/update/v1/\(orderScheduleId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}