import Foundation

public final class ReelablesClient: Sendable {
    public let assets: AssetsClient
    public let timeseries: ReelablesTimeseriesClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.assets = AssetsClient(config: config)
        self.timeseries = ReelablesTimeseriesClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }
}