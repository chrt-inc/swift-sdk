import Foundation

public final class CargoaiTrackAndTraceClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Retrieves the stored CargoAi tracking subscription for an AWB. | authz: order participant | () -> (CargoAiTrackAndTraceSubscription1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func subscriptionV1(awb: String, requestOptions: RequestOptions? = nil) async throws -> CargoAiTrackAndTraceSubscription1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/integrations/cargoai_track_and_trace/subscription/v1/\(awb)",
            requestOptions: requestOptions,
            responseType: CargoAiTrackAndTraceSubscription1.self
        )
    }

    /// Retrieves stored CargoAi tracking updates for an AWB, latest first (the first item is the current state). | authz: order participant | () -> (list[CargoAiTrackAndTraceUpdate1])
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updatesV1(awb: String, requestOptions: RequestOptions? = nil) async throws -> [CargoAiTrackAndTraceUpdate1] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/integrations/cargoai_track_and_trace/updates/v1/\(awb)",
            requestOptions: requestOptions,
            responseType: [CargoAiTrackAndTraceUpdate1].self
        )
    }

    /// Lists CargoAi tracking subscriptions for the AWBs recorded on a task group. | authz: order participant | () -> (list[CargoAiTrackAndTraceSubscription1])
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func subscriptionsByTaskGroupV1(taskGroupId: String, requestOptions: RequestOptions? = nil) async throws -> [CargoAiTrackAndTraceSubscription1] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/integrations/cargoai_track_and_trace/subscriptions/by_task_group/v1/\(taskGroupId)",
            requestOptions: requestOptions,
            responseType: [CargoAiTrackAndTraceSubscription1].self
        )
    }

    /// Starts CargoAi Track & Trace URL + e-mail updates for an AWB (which must already be recorded on a flight leg). Idempotent: re-subscribing a still-live AWB returns the existing subscription without calling CargoAi again. | authz: order participant operator | (CargoAiTrackAndTraceSubscribeReq) -> (CargoAiTrackAndTraceSubscription1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func subscribeV1(request: Requests.CargoAiTrackAndTraceSubscribeReq, requestOptions: RequestOptions? = nil) async throws -> CargoAiTrackAndTraceSubscription1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/integrations/cargoai_track_and_trace/subscribe/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: CargoAiTrackAndTraceSubscription1.self
        )
    }

    /// Polls CargoAi for the current tracking snapshot of an AWB and stores it as a new update (source=poll). No subscription required — any order participant can poll on demand. | authz: order participant | () -> (CargoAiTrackAndTraceUpdate1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func refreshV1(awb: String, requestOptions: RequestOptions? = nil) async throws -> CargoAiTrackAndTraceUpdate1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/integrations/cargoai_track_and_trace/refresh/v1/\(awb)",
            requestOptions: requestOptions,
            responseType: CargoAiTrackAndTraceUpdate1.self
        )
    }
}