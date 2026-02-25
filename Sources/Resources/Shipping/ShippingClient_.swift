import Foundation

public final class ShippingClient_: Sendable {
    public let cargos: CargosClient
    public let drivers: DriversClient
    public let flights: FlightsClient
    public let orderDrafts: OrderDraftsClient
    public let orders: OrdersClient
    public let taskArtifacts: TaskArtifactsClient
    public let taskGroups: TaskGroupsClient
    public let tasks: TasksClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.cargos = CargosClient(config: config)
        self.drivers = DriversClient(config: config)
        self.flights = FlightsClient(config: config)
        self.orderDrafts = OrderDraftsClient(config: config)
        self.orders = OrdersClient(config: config)
        self.taskArtifacts = TaskArtifactsClient(config: config)
        self.taskGroups = TaskGroupsClient(config: config)
        self.tasks = TasksClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }
}