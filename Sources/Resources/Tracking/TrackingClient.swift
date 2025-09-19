import Foundation

public final class TrackingClient: Sendable {
    public let cargoByDevice: CargoByDeviceClient
    public let cargoByDriver: CargoByDriverClient
    public let devices: DevicesClient
    public let driver: DriverClient
    public let taskGroupByDriver: TaskGroupByDriverClient
    public let sessionByDevice: SessionByDeviceClient
    private let httpClient: HTTPClient

    public init(config: ClientConfig) {
        self.cargoByDevice = CargoByDeviceClient(config: config)
        self.cargoByDriver = CargoByDriverClient(config: config)
        self.devices = DevicesClient(config: config)
        self.driver = DriverClient(config: config)
        self.taskGroupByDriver = TaskGroupByDriverClient(config: config)
        self.sessionByDevice = SessionByDeviceClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }
}