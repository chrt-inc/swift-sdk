import Foundation

public struct ListingBidThreadActionAddedWebhookPayload: Codable, Hashable, Sendable {
    public let eventType: ListingBidThreadActionAdded?
    /// UTC timestamp when the event occurred
    public let eventTimestamp: Date
    /// The listing the bid thread belongs to
    public let listingId: String
    /// The bid thread the bid was added to
    public let bidThreadId: String
    /// The order associated with the listing
    public let orderId: String
    /// The task group associated with the listing
    public let taskGroupId: String
    /// The bid action that was added to the bid thread
    public let bid: Bid
    /// True when the acceptance awarded the listing
    public let awarded: Bool?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        eventType: ListingBidThreadActionAdded? = nil,
        eventTimestamp: Date,
        listingId: String,
        bidThreadId: String,
        orderId: String,
        taskGroupId: String,
        bid: Bid,
        awarded: Bool? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.eventType = eventType
        self.eventTimestamp = eventTimestamp
        self.listingId = listingId
        self.bidThreadId = bidThreadId
        self.orderId = orderId
        self.taskGroupId = taskGroupId
        self.bid = bid
        self.awarded = awarded
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.eventType = try container.decodeIfPresent(ListingBidThreadActionAdded.self, forKey: .eventType)
        self.eventTimestamp = try container.decode(Date.self, forKey: .eventTimestamp)
        self.listingId = try container.decode(String.self, forKey: .listingId)
        self.bidThreadId = try container.decode(String.self, forKey: .bidThreadId)
        self.orderId = try container.decode(String.self, forKey: .orderId)
        self.taskGroupId = try container.decode(String.self, forKey: .taskGroupId)
        self.bid = try container.decode(Bid.self, forKey: .bid)
        self.awarded = try container.decodeIfPresent(Bool.self, forKey: .awarded)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.eventType, forKey: .eventType)
        try container.encode(self.eventTimestamp, forKey: .eventTimestamp)
        try container.encode(self.listingId, forKey: .listingId)
        try container.encode(self.bidThreadId, forKey: .bidThreadId)
        try container.encode(self.orderId, forKey: .orderId)
        try container.encode(self.taskGroupId, forKey: .taskGroupId)
        try container.encode(self.bid, forKey: .bid)
        try container.encodeIfPresent(self.awarded, forKey: .awarded)
    }

    public enum ListingBidThreadActionAdded: String, Codable, Hashable, CaseIterable, Sendable {
        case listingBidThreadActionAdded = "listing.bid_thread.action_added"
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case eventType = "event_type"
        case eventTimestamp = "event_timestamp"
        case listingId = "listing_id"
        case bidThreadId = "bid_thread_id"
        case orderId = "order_id"
        case taskGroupId = "task_group_id"
        case bid
        case awarded
    }
}