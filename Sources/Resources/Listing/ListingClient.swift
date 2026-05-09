import Foundation

public final class ListingClient: Sendable {
    public let listings: ListingsClient
    public let orgBiddingGroups: OrgBiddingGroupsClient
    public let driverBiddingGroups: DriverBiddingGroupsClient
    public let bidThreads: BidThreadsClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.listings = ListingsClient(config: config)
        self.orgBiddingGroups = OrgBiddingGroupsClient(config: config)
        self.driverBiddingGroups = DriverBiddingGroupsClient(config: config)
        self.bidThreads = BidThreadsClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }
}