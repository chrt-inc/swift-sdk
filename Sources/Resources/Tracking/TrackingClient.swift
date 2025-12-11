import Foundation

public final class TrackingClient: Sendable {
    public let cargoByDeviceTimeseries: CargoByDeviceTimeseriesClient
    public let cargoByDriverTimeseries: CargoByDriverTimeseriesClient
    public let devices: DevicesClient
    public let driver: DriverClient
    public let sessions: SessionsClient
    public let sharingSettings: SharingSettingsClient
    public let taskGroupByDriverSharing: TaskGroupByDriverSharingClient
    public let cargoByDriverSharing: CargoByDriverSharingClient
    public let cargoByDeviceSharing: CargoByDeviceSharingClient
    public let sessionByDeviceTimeseries: SessionByDeviceTimeseriesClient
    public let taskGroupByDriverTimeseries: TaskGroupByDriverTimeseriesClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.cargoByDeviceTimeseries = CargoByDeviceTimeseriesClient(config: config)
        self.cargoByDriverTimeseries = CargoByDriverTimeseriesClient(config: config)
        self.devices = DevicesClient(config: config)
        self.driver = DriverClient(config: config)
        self.sessions = SessionsClient(config: config)
        self.sharingSettings = SharingSettingsClient(config: config)
        self.taskGroupByDriverSharing = TaskGroupByDriverSharingClient(config: config)
        self.cargoByDriverSharing = CargoByDriverSharingClient(config: config)
        self.cargoByDeviceSharing = CargoByDeviceSharingClient(config: config)
        self.sessionByDeviceTimeseries = SessionByDeviceTimeseriesClient(config: config)
        self.taskGroupByDriverTimeseries = TaskGroupByDriverTimeseriesClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }
}