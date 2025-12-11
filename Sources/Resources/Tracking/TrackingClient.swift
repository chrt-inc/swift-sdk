import Foundation

public final class TrackingClient: Sendable {
    public let timeseries: TimeseriesClient
    public let devices: DevicesClient
    public let driver: DriverClient
    public let sessions: SessionsClient
    public let sharing: SharingClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.timeseries = TimeseriesClient(config: config)
        self.devices = DevicesClient(config: config)
        self.driver = DriverClient(config: config)
        self.sessions = SessionsClient(config: config)
        self.sharing = SharingClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }
}