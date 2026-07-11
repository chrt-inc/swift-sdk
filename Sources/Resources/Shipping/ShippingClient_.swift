import Foundation

public final class ShippingClient_: Sendable {
    public let cargos: CargosClient
    public let drivers: DriversClient
    public let flights: ShippingFlightsClient
    public let orderGroups: OrderGroupsClient
    public let orderSchedules: OrderSchedulesClient
    public let orderTemplates: OrderTemplatesClient
    public let orders: OrdersClient
    public let ordersAndOrderGroups: OrdersAndOrderGroupsClient
    public let taskArtifacts: TaskArtifactsClient
    public let taskGroups: TaskGroupsClient
    public let tasks: TasksClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.cargos = CargosClient(config: config)
        self.drivers = DriversClient(config: config)
        self.flights = ShippingFlightsClient(config: config)
        self.orderGroups = OrderGroupsClient(config: config)
        self.orderSchedules = OrderSchedulesClient(config: config)
        self.orderTemplates = OrderTemplatesClient(config: config)
        self.orders = OrdersClient(config: config)
        self.ordersAndOrderGroups = OrdersAndOrderGroupsClient(config: config)
        self.taskArtifacts = TaskArtifactsClient(config: config)
        self.taskGroups = TaskGroupsClient(config: config)
        self.tasks = TasksClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }
}