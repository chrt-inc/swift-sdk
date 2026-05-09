import Foundation

public struct BidThread1: Codable, Hashable, Sendable {
    public let schemaVersion: Int?
    public let listingId: String
    /// Must be a string starting with `org_`
    public let bidderProviderOrgId: String?
    public let bidderDriverId: String?
    public let createdAtTimestamp: Date
    public let status: BidThreadStatusEnum
    public let statusChangedAtTimestamp: Date
    public let bids: [Bid]
    public let acceptedProFormaLineItems: [ProFormaLineItem1]?
    public let id: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int? = nil,
        listingId: String,
        bidderProviderOrgId: String? = nil,
        bidderDriverId: String? = nil,
        createdAtTimestamp: Date,
        status: BidThreadStatusEnum,
        statusChangedAtTimestamp: Date,
        bids: [Bid],
        acceptedProFormaLineItems: [ProFormaLineItem1]? = nil,
        id: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.listingId = listingId
        self.bidderProviderOrgId = bidderProviderOrgId
        self.bidderDriverId = bidderDriverId
        self.createdAtTimestamp = createdAtTimestamp
        self.status = status
        self.statusChangedAtTimestamp = statusChangedAtTimestamp
        self.bids = bids
        self.acceptedProFormaLineItems = acceptedProFormaLineItems
        self.id = id
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decodeIfPresent(Int.self, forKey: .schemaVersion)
        self.listingId = try container.decode(String.self, forKey: .listingId)
        self.bidderProviderOrgId = try container.decodeIfPresent(String.self, forKey: .bidderProviderOrgId)
        self.bidderDriverId = try container.decodeIfPresent(String.self, forKey: .bidderDriverId)
        self.createdAtTimestamp = try container.decode(Date.self, forKey: .createdAtTimestamp)
        self.status = try container.decode(BidThreadStatusEnum.self, forKey: .status)
        self.statusChangedAtTimestamp = try container.decode(Date.self, forKey: .statusChangedAtTimestamp)
        self.bids = try container.decode([Bid].self, forKey: .bids)
        self.acceptedProFormaLineItems = try container.decodeIfPresent([ProFormaLineItem1].self, forKey: .acceptedProFormaLineItems)
        self.id = try container.decode(String.self, forKey: .id)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.listingId, forKey: .listingId)
        try container.encodeIfPresent(self.bidderProviderOrgId, forKey: .bidderProviderOrgId)
        try container.encodeIfPresent(self.bidderDriverId, forKey: .bidderDriverId)
        try container.encode(self.createdAtTimestamp, forKey: .createdAtTimestamp)
        try container.encode(self.status, forKey: .status)
        try container.encode(self.statusChangedAtTimestamp, forKey: .statusChangedAtTimestamp)
        try container.encode(self.bids, forKey: .bids)
        try container.encodeIfPresent(self.acceptedProFormaLineItems, forKey: .acceptedProFormaLineItems)
        try container.encode(self.id, forKey: .id)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion = "schema_version"
        case listingId = "listing_id"
        case bidderProviderOrgId = "bidder_provider_org_id"
        case bidderDriverId = "bidder_driver_id"
        case createdAtTimestamp = "created_at_timestamp"
        case status
        case statusChangedAtTimestamp = "status_changed_at_timestamp"
        case bids
        case acceptedProFormaLineItems = "accepted_pro_forma_line_items"
        case id = "_id"
    }
}