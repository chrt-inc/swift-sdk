import Foundation

public final class ShippingClient_: Sendable {
    public let docs: DocsClient
    public let drivers: DriversClient
    public let cargos: CargosClient
    public let flights: FlightsClient
    public let taskArtifacts: TaskArtifactsClient
    public let orders: OrdersClient
    public let orderDrafts: OrderDraftsClient
    public let taskGroups: TaskGroupsClient
    public let tasks: TasksClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.docs = DocsClient(config: config)
        self.drivers = DriversClient(config: config)
        self.cargos = CargosClient(config: config)
        self.flights = FlightsClient(config: config)
        self.taskArtifacts = TaskArtifactsClient(config: config)
        self.orders = OrdersClient(config: config)
        self.orderDrafts = OrderDraftsClient(config: config)
        self.taskGroups = TaskGroupsClient(config: config)
        self.tasks = TasksClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }
}