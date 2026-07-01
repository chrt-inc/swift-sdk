import Foundation

public struct ListingBidThreadActionAddedWebhookPayload: Codable, Hashable, Sendable {
    /// True when the acceptance awarded the listing
    public let awarded: Bool?
    /// The bid action that was added to the bid thread
    public let bid: Bid
    /// The bid thread the bid was added to
    public let bidThreadId: String
    /// UTC timestamp when the event occurred
    public let eventTimestamp: Date
    public let eventType: ListingBidThreadActionAdded?
    /// The listing the bid thread belongs to
    public let listingId: String
    /// The order associated with the listing
    public let orderId: String
    /// The task group associated with the listing
    public let taskGroupId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        awarded: Bool? = nil,
        bid: Bid,
        bidThreadId: String,
        eventTimestamp: Date,
        eventType: ListingBidThreadActionAdded? = nil,
        listingId: String,
        orderId: String,
        taskGroupId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.awarded = awarded
        self.bid = bid
        self.bidThreadId = bidThreadId
        self.eventTimestamp = eventTimestamp
        self.eventType = eventType
        self.listingId = listingId
        self.orderId = orderId
        self.taskGroupId = taskGroupId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.awarded = try container.decodeIfPresent(Bool.self, forKey: .awarded)
        self.bid = try container.decode(Bid.self, forKey: .bid)
        self.bidThreadId = try container.decode(String.self, forKey: .bidThreadId)
        self.eventTimestamp = try container.decode(Date.self, forKey: .eventTimestamp)
        self.eventType = try container.decodeIfPresent(ListingBidThreadActionAdded.self, forKey: .eventType)
        self.listingId = try container.decode(String.self, forKey: .listingId)
        self.orderId = try container.decode(String.self, forKey: .orderId)
        self.taskGroupId = try container.decode(String.self, forKey: .taskGroupId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.awarded, forKey: .awarded)
        try container.encode(self.bid, forKey: .bid)
        try container.encode(self.bidThreadId, forKey: .bidThreadId)
        try container.encode(self.eventTimestamp, forKey: .eventTimestamp)
        try container.encodeIfPresent(self.eventType, forKey: .eventType)
        try container.encode(self.listingId, forKey: .listingId)
        try container.encode(self.orderId, forKey: .orderId)
        try container.encode(self.taskGroupId, forKey: .taskGroupId)
    }

    public enum ListingBidThreadActionAdded: String, Codable, Hashable, CaseIterable, Sendable {
        case listingBidThreadActionAdded = "listing.bid_thread.action_added"
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case awarded
        case bid
        case bidThreadId = "bid_thread_id"
        case eventTimestamp = "event_timestamp"
        case eventType = "event_type"
        case listingId = "listing_id"
        case orderId = "order_id"
        case taskGroupId = "task_group_id"
    }
}