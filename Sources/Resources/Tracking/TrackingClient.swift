import Foundation

public final class TrackingClient: Sendable {
    public let devices: DevicesClient
    public let driver: DriverClient
    public let sessions: SessionsClient
    public let sharingSettings: SharingSettingsClient
    public let timeseries: TimeseriesClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.devices = DevicesClient(config: config)
        self.driver = DriverClient(config: config)
        self.sessions = SessionsClient(config: config)
        self.sharingSettings = SharingSettingsClient(config: config)
        self.timeseries = TimeseriesClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }
}