import Foundation

public final class TaskGroupClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Adds a task group to an order. Draft groups are DRAFT; all later lifecycle groups are STAGED and parent state is synchronized. | authz_personas=[draft_creator_org_operator, coordinator_org_operators] | (OrdersAddTaskGroupReq) -> (PydanticObjectId)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.orders.taskGroup.addV1(request: .init(
    ///         orderId: "order_id",
    ///         taskGroupType: .chrtGroundProvider
    ///     ))
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func addV1(request: Requests.OrdersAddTaskGroupReq, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/orders/task_group/add/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Assigns an on-platform or off-platform executor organization to an order task group. DRAFT task groups require task_group_coordinator_operators; operational task groups require coordinator_org_operators and STAGED or IN_PROGRESS status. | authz_personas=[task_group_coordinator_operators, coordinator_org_operators] | (OrdersAddTaskGroupExecutorReq) -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.orders.taskGroup.addExecutorV1(
    ///         taskGroupId: "task_group_id",
    ///         request: .init()
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func addExecutorV1(taskGroupId: String, request: Requests.OrdersAddTaskGroupExecutorReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/shipping/orders/task_group/add_executor/v1/\(taskGroupId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Deletes a task group in any lifecycle state and synchronizes affected shipping state. | authz_personas=[draft_creator_org_operator, coordinator_org_operators] | () -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.orders.taskGroup.deleteV1(taskGroupId: "task_group_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteV1(taskGroupId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/shipping/orders/task_group/delete/v1/\(taskGroupId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Clears the driver from an order task group. DRAFT task groups require executor_org_operators; operational task groups require executor_org_operators or driver_for_executor and STAGED or IN_PROGRESS status. | authz_personas=[executor_org_operators, driver_for_executor] | () -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.orders.taskGroup.removeDriverV1(taskGroupId: "task_group_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func removeDriverV1(taskGroupId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/shipping/orders/task_group/remove_driver/v1/\(taskGroupId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Clears the executor and assigned driver from an order task group. DRAFT task groups require task_group_coordinator_operators; operational task groups require coordinator_org_operators and STAGED or IN_PROGRESS status. | authz_personas=[task_group_coordinator_operators, coordinator_org_operators] | () -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.orders.taskGroup.removeExecutorV1(taskGroupId: "task_group_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func removeExecutorV1(taskGroupId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/shipping/orders/task_group/remove_executor/v1/\(taskGroupId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Replaces the ordered flight legs on an order task group. A submitted leg that is the same physical flight (carrier, flight number, origin, destination, UTC departure date) as an existing leg keeps its id, so tasks reporting on it stay attached. Changing any of those five details is a different flight: the old leg is deleted and any task referencing it has its flight_leg_id cleared. Because flight_leg_id is not editable, re-attaching such a task requires deleting and recreating it. | (OrdersSetTaskGroupFlightInfoReq) -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.orders.taskGroup.setFlightInfoV1(
    ///         taskGroupId: "task_group_id",
    ///         request: .init(flightLegs: [
    ///             FlightLegClientCreate1(
    ///                 carrierIata: "carrier_iata",
    ///                 destinationIata: "destination_iata",
    ///                 flightNumber: "flight_number",
    ///                 originIata: "origin_iata",
    ///                 provenance: .manual,
    ///                 scheduledDepartureUtc: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///                 schemaVersion: 1
    ///             )
    ///         ])
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func setFlightInfoV1(taskGroupId: String, request: Requests.OrdersSetTaskGroupFlightInfoReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/shipping/orders/task_group/set_flight_info/v1/\(taskGroupId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Sets task ordering in any lifecycle state, recalculating mileage and affected cargo state. | authz_personas=[draft_creator_org_operator, task_group_operating_org_operators] | (OrdersSetTaskGroupTaskOrderingReq) -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.orders.taskGroup.setTaskOrderingV1(
    ///         taskGroupId: "task_group_id",
    ///         request: .init(taskIds: [
    ///             "task_ids"
    ///         ])
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func setTaskOrderingV1(taskGroupId: String, request: Requests.OrdersSetTaskGroupTaskOrderingReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .put,
            path: "/shipping/orders/task_group/set_task_ordering/v1/\(taskGroupId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Sets the task-group vehicle type in any lifecycle state. | authz_personas=[draft_creator_org_operator, task_group_coordinator_operators] | (OrdersSetTaskGroupVehicleTypeReq) -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.orders.taskGroup.setVehicleTypeV1(
    ///         taskGroupId: "task_group_id",
    ///         request: .init(vehicleType: .sedan)
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func setVehicleTypeV1(taskGroupId: String, request: Requests.OrdersSetTaskGroupVehicleTypeReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/shipping/orders/task_group/set_vehicle_type/v1/\(taskGroupId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Assigns or swaps the driver on an order task group. The driver must belong to the task group's executor organization and permit direct assignment. | authz_personas=[executor_org_operators] | (OrdersUpdateTaskGroupDriverReq) -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.orders.taskGroup.updateDriverV1(
    ///         taskGroupId: "task_group_id",
    ///         request: .init(driverId: "driver_id")
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateDriverV1(taskGroupId: String, request: Requests.OrdersUpdateTaskGroupDriverReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/shipping/orders/task_group/update_driver/v1/\(taskGroupId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}