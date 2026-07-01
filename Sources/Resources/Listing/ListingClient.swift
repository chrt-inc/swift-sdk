import Foundation

public final class ListingClient: Sendable {
    public let bidThreads: BidThreadsClient
    public let driverBiddingGroups: DriverBiddingGroupsClient
    public let listings: ListingsClient
    public let orgBiddingGroups: OrgBiddingGroupsClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.bidThreads = BidThreadsClient(config: config)
        self.driverBiddingGroups = DriverBiddingGroupsClient(config: config)
        self.listings = ListingsClient(config: config)
        self.orgBiddingGroups = OrgBiddingGroupsClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }
}