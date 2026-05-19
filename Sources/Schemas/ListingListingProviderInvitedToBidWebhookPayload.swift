import Foundation

public struct ListingListingProviderInvitedToBidWebhookPayload: Codable, Hashable, Sendable {
    public let eventType: ListingListingProviderInvitedToBid?
    /// UTC timestamp when the event occurred
    public let eventTimestamp: Date
    /// The listing the provider org was invited to
    public let listingId: String
    /// The order associated with the listing
    public let orderId: String
    /// The task group associated with the listing
    public let taskGroupId: String
    /// Provider orgs invited to the listing
    public let providerOrgIds: [String]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        eventType: ListingListingProviderInvitedToBid? = nil,
        eventTimestamp: Date,
        listingId: String,
        orderId: String,
        taskGroupId: String,
        providerOrgIds: [String],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.eventType = eventType
        self.eventTimestamp = eventTimestamp
        self.listingId = listingId
        self.orderId = orderId
        self.taskGroupId = taskGroupId
        self.providerOrgIds = providerOrgIds
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.eventType = try container.decodeIfPresent(ListingListingProviderInvitedToBid.self, forKey: .eventType)
        self.eventTimestamp = try container.decode(Date.self, forKey: .eventTimestamp)
        self.listingId = try container.decode(String.self, forKey: .listingId)
        self.orderId = try container.decode(String.self, forKey: .orderId)
        self.taskGroupId = try container.decode(String.self, forKey: .taskGroupId)
        self.providerOrgIds = try container.decode([String].self, forKey: .providerOrgIds)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.eventType, forKey: .eventType)
        try container.encode(self.eventTimestamp, forKey: .eventTimestamp)
        try container.encode(self.listingId, forKey: .listingId)
        try container.encode(self.orderId, forKey: .orderId)
        try container.encode(self.taskGroupId, forKey: .taskGroupId)
        try container.encode(self.providerOrgIds, forKey: .providerOrgIds)
    }

    public enum ListingListingProviderInvitedToBid: String, Codable, Hashable, CaseIterable, Sendable {
        case listingListingProviderInvitedToBid = "listing.listing.provider_invited_to_bid"
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case eventType = "event_type"
        case eventTimestamp = "event_timestamp"
        case listingId = "listing_id"
        case orderId = "order_id"
        case taskGroupId = "task_group_id"
        case providerOrgIds = "provider_org_ids"
    }
}