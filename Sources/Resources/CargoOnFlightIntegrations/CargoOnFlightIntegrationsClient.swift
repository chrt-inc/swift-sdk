import Foundation

public final class CargoOnFlightIntegrationsClient: Sendable {
    public let cargoai: CargoaiClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.cargoai = CargoaiClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }
}