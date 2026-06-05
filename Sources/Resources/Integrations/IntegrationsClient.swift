import Foundation

public final class IntegrationsClient: Sendable {
    public let airWaybills: AirWaybillsClient
    public let cargoaiTrackAndTrace: CargoaiTrackAndTraceClient
    public let webcargoBookings: WebcargoBookingsClient
    public let webcargoEmbed: WebcargoEmbedClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.airWaybills = AirWaybillsClient(config: config)
        self.cargoaiTrackAndTrace = CargoaiTrackAndTraceClient(config: config)
        self.webcargoBookings = WebcargoBookingsClient(config: config)
        self.webcargoEmbed = WebcargoEmbedClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }
}