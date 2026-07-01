import Foundation

/// Bidder-facing response shape — same as `Listing1` minus `internal_notes`.
/// 
/// Used by `get__listings_by_id_v1`, `list_for_provider_bidder/v1`, and
/// `list_for_driver_bidder/v1`. Constructed from a validated `Listing1`;
/// field-shape parity is enforced at import time by `limited_model_checker`
/// below.
public struct ListingLimitedForBidder1: Codable, Hashable, Sendable {
    public let id: String
    public let acceptedBidThreadId: String?
    public let audience: ListingAudienceEnum
    public let autoAwardFirstAccept: Bool?
    public let autoOpenPricedBidThreads: Bool?
    public let createdAtTimestamp: Date
    /// Must be a string starting with `org_`
    public let createdByOrgId: String
    /// Must be a string starting with `user_`
    public let createdByUserId: String
    public let driverBiddingGroupIds: [String]?
    public let lastEditedAtTimestamp: Date
    public let listingDescription: String
    public let orderId: String
    /// Must be a URL-safe string of 1-64 characters. Allowed characters: A-Z, a-z, 0-9, '.', '_', '~', '-' (RFC 3986 unreserved).
    public let orderOffChrtReferenceId: String?
    public let orderShortId: String
    public let orgBiddingGroupIds: [String]?
    public let participantDriverIds: [String]?
    public let participantProviderOrgIds: [String]?
    public let proFormaLineItems: [ProFormaLineItem1]?
    public let schemaVersion: Int?
    public let shareProFormaLineItems: Bool?
    public let status: ListingStatusEnum
    public let taskGroupId: String
    public let taskGroupSummaryForBidders: String
    public let type: ListingTypeEnum?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        acceptedBidThreadId: String? = nil,
        audience: ListingAudienceEnum,
        autoAwardFirstAccept: Bool? = nil,
        autoOpenPricedBidThreads: Bool? = nil,
        createdAtTimestamp: Date,
        createdByOrgId: String,
        createdByUserId: String,
        driverBiddingGroupIds: [String]? = nil,
        lastEditedAtTimestamp: Date,
        listingDescription: String,
        orderId: String,
        orderOffChrtReferenceId: String? = nil,
        orderShortId: String,
        orgBiddingGroupIds: [String]? = nil,
        participantDriverIds: [String]? = nil,
        participantProviderOrgIds: [String]? = nil,
        proFormaLineItems: [ProFormaLineItem1]? = nil,
        schemaVersion: Int? = nil,
        shareProFormaLineItems: Bool? = nil,
        status: ListingStatusEnum,
        taskGroupId: String,
        taskGroupSummaryForBidders: String,
        type: ListingTypeEnum? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.acceptedBidThreadId = acceptedBidThreadId
        self.audience = audience
        self.autoAwardFirstAccept = autoAwardFirstAccept
        self.autoOpenPricedBidThreads = autoOpenPricedBidThreads
        self.createdAtTimestamp = createdAtTimestamp
        self.createdByOrgId = createdByOrgId
        self.createdByUserId = createdByUserId
        self.driverBiddingGroupIds = driverBiddingGroupIds
        self.lastEditedAtTimestamp = lastEditedAtTimestamp
        self.listingDescription = listingDescription
        self.orderId = orderId
        self.orderOffChrtReferenceId = orderOffChrtReferenceId
        self.orderShortId = orderShortId
        self.orgBiddingGroupIds = orgBiddingGroupIds
        self.participantDriverIds = participantDriverIds
        self.participantProviderOrgIds = participantProviderOrgIds
        self.proFormaLineItems = proFormaLineItems
        self.schemaVersion = schemaVersion
        self.shareProFormaLineItems = shareProFormaLineItems
        self.status = status
        self.taskGroupId = taskGroupId
        self.taskGroupSummaryForBidders = taskGroupSummaryForBidders
        self.type = type
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.acceptedBidThreadId = try container.decodeIfPresent(String.self, forKey: .acceptedBidThreadId)
        self.audience = try container.decode(ListingAudienceEnum.self, forKey: .audience)
        self.autoAwardFirstAccept = try container.decodeIfPresent(Bool.self, forKey: .autoAwardFirstAccept)
        self.autoOpenPricedBidThreads = try container.decodeIfPresent(Bool.self, forKey: .autoOpenPricedBidThreads)
        self.createdAtTimestamp = try container.decode(Date.self, forKey: .createdAtTimestamp)
        self.createdByOrgId = try container.decode(String.self, forKey: .createdByOrgId)
        self.createdByUserId = try container.decode(String.self, forKey: .createdByUserId)
        self.driverBiddingGroupIds = try container.decodeIfPresent([String].self, forKey: .driverBiddingGroupIds)
        self.lastEditedAtTimestamp = try container.decode(Date.self, forKey: .lastEditedAtTimestamp)
        self.listingDescription = try container.decode(String.self, forKey: .listingDescription)
        self.orderId = try container.decode(String.self, forKey: .orderId)
        self.orderOffChrtReferenceId = try container.decodeIfPresent(String.self, forKey: .orderOffChrtReferenceId)
        self.orderShortId = try container.decode(String.self, forKey: .orderShortId)
        self.orgBiddingGroupIds = try container.decodeIfPresent([String].self, forKey: .orgBiddingGroupIds)
        self.participantDriverIds = try container.decodeIfPresent([String].self, forKey: .participantDriverIds)
        self.participantProviderOrgIds = try container.decodeIfPresent([String].self, forKey: .participantProviderOrgIds)
        self.proFormaLineItems = try container.decodeIfPresent([ProFormaLineItem1].self, forKey: .proFormaLineItems)
        self.schemaVersion = try container.decodeIfPresent(Int.self, forKey: .schemaVersion)
        self.shareProFormaLineItems = try container.decodeIfPresent(Bool.self, forKey: .shareProFormaLineItems)
        self.status = try container.decode(ListingStatusEnum.self, forKey: .status)
        self.taskGroupId = try container.decode(String.self, forKey: .taskGroupId)
        self.taskGroupSummaryForBidders = try container.decode(String.self, forKey: .taskGroupSummaryForBidders)
        self.type = try container.decodeIfPresent(ListingTypeEnum.self, forKey: .type)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encodeIfPresent(self.acceptedBidThreadId, forKey: .acceptedBidThreadId)
        try container.encode(self.audience, forKey: .audience)
        try container.encodeIfPresent(self.autoAwardFirstAccept, forKey: .autoAwardFirstAccept)
        try container.encodeIfPresent(self.autoOpenPricedBidThreads, forKey: .autoOpenPricedBidThreads)
        try container.encode(self.createdAtTimestamp, forKey: .createdAtTimestamp)
        try container.encode(self.createdByOrgId, forKey: .createdByOrgId)
        try container.encode(self.createdByUserId, forKey: .createdByUserId)
        try container.encodeIfPresent(self.driverBiddingGroupIds, forKey: .driverBiddingGroupIds)
        try container.encode(self.lastEditedAtTimestamp, forKey: .lastEditedAtTimestamp)
        try container.encode(self.listingDescription, forKey: .listingDescription)
        try container.encode(self.orderId, forKey: .orderId)
        try container.encodeIfPresent(self.orderOffChrtReferenceId, forKey: .orderOffChrtReferenceId)
        try container.encode(self.orderShortId, forKey: .orderShortId)
        try container.encodeIfPresent(self.orgBiddingGroupIds, forKey: .orgBiddingGroupIds)
        try container.encodeIfPresent(self.participantDriverIds, forKey: .participantDriverIds)
        try container.encodeIfPresent(self.participantProviderOrgIds, forKey: .participantProviderOrgIds)
        try container.encodeIfPresent(self.proFormaLineItems, forKey: .proFormaLineItems)
        try container.encodeIfPresent(self.schemaVersion, forKey: .schemaVersion)
        try container.encodeIfPresent(self.shareProFormaLineItems, forKey: .shareProFormaLineItems)
        try container.encode(self.status, forKey: .status)
        try container.encode(self.taskGroupId, forKey: .taskGroupId)
        try container.encode(self.taskGroupSummaryForBidders, forKey: .taskGroupSummaryForBidders)
        try container.encodeIfPresent(self.type, forKey: .type)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case acceptedBidThreadId = "accepted_bid_thread_id"
        case audience
        case autoAwardFirstAccept = "auto_award_first_accept"
        case autoOpenPricedBidThreads = "auto_open_priced_bid_threads"
        case createdAtTimestamp = "created_at_timestamp"
        case createdByOrgId = "created_by_org_id"
        case createdByUserId = "created_by_user_id"
        case driverBiddingGroupIds = "driver_bidding_group_ids"
        case lastEditedAtTimestamp = "last_edited_at_timestamp"
        case listingDescription = "listing_description"
        case orderId = "order_id"
        case orderOffChrtReferenceId = "order_off_chrt_reference_id"
        case orderShortId = "order_short_id"
        case orgBiddingGroupIds = "org_bidding_group_ids"
        case participantDriverIds = "participant_driver_ids"
        case participantProviderOrgIds = "participant_provider_org_ids"
        case proFormaLineItems = "pro_forma_line_items"
        case schemaVersion = "schema_version"
        case shareProFormaLineItems = "share_pro_forma_line_items"
        case status
        case taskGroupId = "task_group_id"
        case taskGroupSummaryForBidders = "task_group_summary_for_bidders"
        case type
    }
}