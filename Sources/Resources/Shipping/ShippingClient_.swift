import Foundation

public final class ShippingClient_: Sendable {
    public let drivers: DriversClient
    public let cargos: CargosClient
    public let flights: FlightsClient
    public let taskArtifacts: TaskArtifactsClient
    public let orders: OrdersClient
    public let orderDrafts: OrderDraftsClient
    public let orderGroups: OrderGroupsClient
    public let ordersAndOrderGroups: OrdersAndOrderGroupsClient
    public let orderSchedules: OrderSchedulesClient
    public let orderTemplates: OrderTemplatesClient
    public let taskGroups: TaskGroupsClient
    public let tasks: TasksClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.drivers = DriversClient(config: config)
        self.cargos = CargosClient(config: config)
        self.flights = FlightsClient(config: config)
        self.taskArtifacts = TaskArtifactsClient(config: config)
        self.orders = OrdersClient(config: config)
        self.orderDrafts = OrderDraftsClient(config: config)
        self.orderGroups = OrderGroupsClient(config: config)
        self.ordersAndOrderGroups = OrdersAndOrderGroupsClient(config: config)
        self.orderSchedules = OrderSchedulesClient(config: config)
        self.orderTemplates = OrderTemplatesClient(config: config)
        self.taskGroups = TaskGroupsClient(config: config)
        self.tasks = TasksClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }
}