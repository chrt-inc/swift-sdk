import Foundation

public struct BidThreadForListing1: Codable, Hashable, Sendable {
    public let id: String
    public let acceptedProFormaLineItems: [ProFormaLineItem1]?
    public let bidderDriver: Driver1?
    public let bidderDriverId: String?
    public let bidderProviderOrg: OrgPublicData1?
    /// Must be a string starting with `org_`
    public let bidderProviderOrgId: String?
    public let bids: [Bid]
    public let createdAtTimestamp: Date
    public let listingId: String
    public let schemaVersion: Int?
    public let status: BidThreadStatusEnum
    public let statusChangedAtTimestamp: Date
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        acceptedProFormaLineItems: [ProFormaLineItem1]? = nil,
        bidderDriver: Driver1? = nil,
        bidderDriverId: String? = nil,
        bidderProviderOrg: OrgPublicData1? = nil,
        bidderProviderOrgId: String? = nil,
        bids: [Bid],
        createdAtTimestamp: Date,
        listingId: String,
        schemaVersion: Int? = nil,
        status: BidThreadStatusEnum,
        statusChangedAtTimestamp: Date,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.acceptedProFormaLineItems = acceptedProFormaLineItems
        self.bidderDriver = bidderDriver
        self.bidderDriverId = bidderDriverId
        self.bidderProviderOrg = bidderProviderOrg
        self.bidderProviderOrgId = bidderProviderOrgId
        self.bids = bids
        self.createdAtTimestamp = createdAtTimestamp
        self.listingId = listingId
        self.schemaVersion = schemaVersion
        self.status = status
        self.statusChangedAtTimestamp = statusChangedAtTimestamp
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.acceptedProFormaLineItems = try container.decodeIfPresent([ProFormaLineItem1].self, forKey: .acceptedProFormaLineItems)
        self.bidderDriver = try container.decodeIfPresent(Driver1.self, forKey: .bidderDriver)
        self.bidderDriverId = try container.decodeIfPresent(String.self, forKey: .bidderDriverId)
        self.bidderProviderOrg = try container.decodeIfPresent(OrgPublicData1.self, forKey: .bidderProviderOrg)
        self.bidderProviderOrgId = try container.decodeIfPresent(String.self, forKey: .bidderProviderOrgId)
        self.bids = try container.decode([Bid].self, forKey: .bids)
        self.createdAtTimestamp = try container.decode(Date.self, forKey: .createdAtTimestamp)
        self.listingId = try container.decode(String.self, forKey: .listingId)
        self.schemaVersion = try container.decodeIfPresent(Int.self, forKey: .schemaVersion)
        self.status = try container.decode(BidThreadStatusEnum.self, forKey: .status)
        self.statusChangedAtTimestamp = try container.decode(Date.self, forKey: .statusChangedAtTimestamp)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encodeIfPresent(self.acceptedProFormaLineItems, forKey: .acceptedProFormaLineItems)
        try container.encodeIfPresent(self.bidderDriver, forKey: .bidderDriver)
        try container.encodeIfPresent(self.bidderDriverId, forKey: .bidderDriverId)
        try container.encodeIfPresent(self.bidderProviderOrg, forKey: .bidderProviderOrg)
        try container.encodeIfPresent(self.bidderProviderOrgId, forKey: .bidderProviderOrgId)
        try container.encode(self.bids, forKey: .bids)
        try container.encode(self.createdAtTimestamp, forKey: .createdAtTimestamp)
        try container.encode(self.listingId, forKey: .listingId)
        try container.encodeIfPresent(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.status, forKey: .status)
        try container.encode(self.statusChangedAtTimestamp, forKey: .statusChangedAtTimestamp)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case acceptedProFormaLineItems = "accepted_pro_forma_line_items"
        case bidderDriver = "bidder_driver"
        case bidderDriverId = "bidder_driver_id"
        case bidderProviderOrg = "bidder_provider_org"
        case bidderProviderOrgId = "bidder_provider_org_id"
        case bids
        case createdAtTimestamp = "created_at_timestamp"
        case listingId = "listing_id"
        case schemaVersion = "schema_version"
        case status
        case statusChangedAtTimestamp = "status_changed_at_timestamp"
    }
}