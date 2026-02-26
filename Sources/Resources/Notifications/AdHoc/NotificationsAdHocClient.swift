import Foundation

public final class NotificationsAdHocClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Lists all ad-hoc notification intents for an order. | authz: min_org_role=operator | () -> (list[NotificationIntentAdHoc1])
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listByOrderIdV1(orderId: String, requestOptions: RequestOptions? = nil) async throws -> [NotificationIntentAdHoc1] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/notifications/ad_hoc/list_by_order_id/v1/\(orderId)",
            requestOptions: requestOptions,
            responseType: [NotificationIntentAdHoc1].self
        )
    }

    /// Creates a new ad-hoc notification intent for an order. | authz: min_org_role=operator | (NotificationIntentAdHocClientCreate1) -> (PydanticObjectId)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createV1(orderId: String, request: Requests.NotificationIntentAdHocClientCreate1, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/notifications/ad_hoc/create/v1/\(orderId)",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Deletes an ad-hoc notification intent. | authz: min_org_role=operator | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteV1(adHocId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/notifications/ad_hoc/delete/v1/\(adHocId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}