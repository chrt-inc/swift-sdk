import Foundation

public final class ShippingClient_: Sendable {
    public let drivers: DriversClient
    public let flights: ShippingFlightsClient
    public let orderTemplatesNew: OrderTemplatesNewClient
    public let orders: ShippingOrdersClient
    public let taskArtifacts: TaskArtifactsClient
    public let taskGroups: TaskGroupsClient
    public let tasks: TasksClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.drivers = DriversClient(config: config)
        self.flights = ShippingFlightsClient(config: config)
        self.orderTemplatesNew = OrderTemplatesNewClient(config: config)
        self.orders = ShippingOrdersClient(config: config)
        self.taskArtifacts = TaskArtifactsClient(config: config)
        self.taskGroups = TaskGroupsClient(config: config)
        self.tasks = TasksClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }
}