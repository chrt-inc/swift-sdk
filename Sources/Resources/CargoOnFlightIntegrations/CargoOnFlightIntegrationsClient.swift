import Foundation

public final class CargoOnFlightIntegrationsClient: Sendable {
    public let airCanada: AirCanadaClient
    public let cargoai: CargoaiClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.airCanada = AirCanadaClient(config: config)
        self.cargoai = CargoaiClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }
}