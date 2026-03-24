import Foundation

public final class NotificationsAdHocClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Lists all ad-hoc notification intents for an order. | authz: min_org_role=operator | () -> (NotificationAdHocListRes)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listByOrderIdV1(orderId: String, page: Int? = nil, pageSize: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> NotificationAdHocListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/notifications/ad_hoc/list_by_order_id/v1/\(orderId)",
            queryParams: [
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: NotificationAdHocListRes.self
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