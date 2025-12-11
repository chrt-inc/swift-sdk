import Foundation

public final class TimeseriesClient: Sendable {
    public let cargoByDevice: CargoByDeviceClient
    public let cargoByDriver: CargoByDriverClient
    public let sessionByDevice: SessionByDeviceClient
    public let taskGroupByDriver: TaskGroupByDriverClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.cargoByDevice = CargoByDeviceClient(config: config)
        self.cargoByDriver = CargoByDriverClient(config: config)
        self.sessionByDevice = SessionByDeviceClient(config: config)
        self.taskGroupByDriver = TaskGroupByDriverClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }
}