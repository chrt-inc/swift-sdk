import Foundation

public struct ListingListingProviderInvitedToBidWebhookPayload: Codable, Hashable, Sendable {
    /// UTC timestamp when the event occurred
    public let eventTimestamp: Date
    public let eventType: ListingListingProviderInvitedToBid?
    /// The listing the provider org was invited to
    public let listingId: String
    /// The order associated with the listing
    public let orderId: String
    /// Provider orgs invited to the listing
    public let providerOrgIds: [String]
    /// The task group associated with the listing
    public let taskGroupId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        eventTimestamp: Date,
        eventType: ListingListingProviderInvitedToBid? = nil,
        listingId: String,
        orderId: String,
        providerOrgIds: [String],
        taskGroupId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.eventTimestamp = eventTimestamp
        self.eventType = eventType
        self.listingId = listingId
        self.orderId = orderId
        self.providerOrgIds = providerOrgIds
        self.taskGroupId = taskGroupId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.eventTimestamp = try container.decode(Date.self, forKey: .eventTimestamp)
        self.eventType = try container.decodeIfPresent(ListingListingProviderInvitedToBid.self, forKey: .eventType)
        self.listingId = try container.decode(String.self, forKey: .listingId)
        self.orderId = try container.decode(String.self, forKey: .orderId)
        self.providerOrgIds = try container.decode([String].self, forKey: .providerOrgIds)
        self.taskGroupId = try container.decode(String.self, forKey: .taskGroupId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.eventTimestamp, forKey: .eventTimestamp)
        try container.encodeIfPresent(self.eventType, forKey: .eventType)
        try container.encode(self.listingId, forKey: .listingId)
        try container.encode(self.orderId, forKey: .orderId)
        try container.encode(self.providerOrgIds, forKey: .providerOrgIds)
        try container.encode(self.taskGroupId, forKey: .taskGroupId)
    }

    public enum ListingListingProviderInvitedToBid: String, Codable, Hashable, CaseIterable, Sendable {
        case listingListingProviderInvitedToBid = "listing.listing.provider_invited_to_bid"
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case eventTimestamp = "event_timestamp"
        case eventType = "event_type"
        case listingId = "listing_id"
        case orderId = "order_id"
        case providerOrgIds = "provider_org_ids"
        case taskGroupId = "task_group_id"
    }
}