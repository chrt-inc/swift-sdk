import Foundation

public final class OrderSchedulesClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Retrieves an order schedule by ID. | () -> (OrderScheduleStub)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getByIdV1(orderScheduleId: String, requestOptions: RequestOptions? = nil) async throws -> OrderScheduleStub {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping/order_schedules/v1/\(orderScheduleId)",
            requestOptions: requestOptions,
            responseType: OrderScheduleStub.self
        )
    }

    /// Lists order schedules for the caller's organization. | () -> (list[OrderScheduleStub])
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(requestOptions: RequestOptions? = nil) async throws -> [OrderScheduleStub] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping/order_schedules/list/v1",
            requestOptions: requestOptions,
            responseType: [OrderScheduleStub].self
        )
    }

    /// Creates an order schedule. | (OrderScheduleCreateReq) -> (PydanticObjectId)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createV1(request: Requests.OrderScheduleCreateReq, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/order_schedules/create/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Echoes Temporal schedule specs to test SDK round trips. | (OrderScheduleRoundTripModelTestReq) -> (OrderScheduleRoundTripModelTestRes)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func roundTripModelTestV1(request: Requests.OrderScheduleRoundTripModelTestReq, requestOptions: RequestOptions? = nil) async throws -> OrderScheduleRoundTripModelTestRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/order_schedules/round_trip_model_test/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: OrderScheduleRoundTripModelTestRes.self
        )
    }

    /// Updates an order schedule. | (OrderScheduleUpdateReq) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateV1(orderScheduleId: String, request: Requests.OrderScheduleUpdateReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/shipping/order_schedules/update/v1/\(orderScheduleId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Deletes an order schedule. | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteV1(orderScheduleId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/shipping/order_schedules/delete/v1/\(orderScheduleId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}