import Foundation

public final class ReelablesClient: Sendable {
    public let assets: AssetsClient
    public let timeseries: ReelablesTimeseriesClient
    public let workspaces: WorkspacesClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.assets = AssetsClient(config: config)
        self.timeseries = ReelablesTimeseriesClient(config: config)
        self.workspaces = WorkspacesClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }
}