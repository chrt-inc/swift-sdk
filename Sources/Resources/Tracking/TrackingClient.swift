import Foundation

public final class TrackingClient: Sendable {
    public let cargoByDriver: CargoByDriverClient
    public let taskGroupByDriver: TaskGroupByDriverClient
    private let httpClient: HTTPClient

    public init(config: ClientConfig) {
        self.cargoByDriver = CargoByDriverClient(config: config)
        self.taskGroupByDriver = TaskGroupByDriverClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }
}