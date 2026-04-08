import Foundation

public final class TiveClient: Sendable {
    public let devices: TiveDevicesClient
    public let shipments: ShipmentsClient
    public let timeseries: TiveTimeseriesClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.devices = TiveDevicesClient(config: config)
        self.shipments = ShipmentsClient(config: config)
        self.timeseries = TiveTimeseriesClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }
}