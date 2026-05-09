import Foundation

/// Bidder-facing response shape — same as `Listing1` minus `internal_notes`.
/// 
/// Used by `get__listings_by_id_v1`, `list_for_provider_bidder/v1`, and
/// `list_for_driver_bidder/v1`. Constructed from a validated `Listing1`;
/// field-shape parity is enforced at import time by `limited_model_checker`
/// below.
public struct ListingLimitedForBidder1: Codable, Hashable, Sendable {
    public let id: String
    public let schemaVersion: Int?
    public let listingDescription: String
    public let taskGroupId: String
    public let taskGroupSummaryForBidders: String
    public let proFormaLineItems: [ProFormaLineItem1]?
    public let shareProFormaLineItems: Bool?
    public let audience: ListingAudienceEnum
    public let participantProviderOrgIds: [String]?
    public let orgBiddingGroupIds: [String]?
    public let participantDriverIds: [String]?
    public let driverBiddingGroupIds: [String]?
    public let type: ListingTypeEnum?
    public let autoAwardFirstAccept: Bool?
    public let autoOpenPricedBidThreads: Bool?
    /// Must be a string starting with `user_`
    public let createdByUserId: String
    /// Must be a string starting with `org_`
    public let createdByOrgId: String
    public let createdAtTimestamp: Date
    public let lastEditedAtTimestamp: Date
    public let status: ListingStatusEnum
    public let orderId: String
    public let orderShortId: String
    /// Must be a URL-safe string of 1-64 characters. Allowed characters: A-Z, a-z, 0-9, '.', '_', '~', '-' (RFC 3986 unreserved).
    public let orderOffChrtReferenceId: String?
    public let acceptedBidThreadId: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        schemaVersion: Int? = nil,
        listingDescription: String,
        taskGroupId: String,
        taskGroupSummaryForBidders: String,
        proFormaLineItems: [ProFormaLineItem1]? = nil,
        shareProFormaLineItems: Bool? = nil,
        audience: ListingAudienceEnum,
        participantProviderOrgIds: [String]? = nil,
        orgBiddingGroupIds: [String]? = nil,
        participantDriverIds: [String]? = nil,
        driverBiddingGroupIds: [String]? = nil,
        type: ListingTypeEnum? = nil,
        autoAwardFirstAccept: Bool? = nil,
        autoOpenPricedBidThreads: Bool? = nil,
        createdByUserId: String,
        createdByOrgId: String,
        createdAtTimestamp: Date,
        lastEditedAtTimestamp: Date,
        status: ListingStatusEnum,
        orderId: String,
        orderShortId: String,
        orderOffChrtReferenceId: String? = nil,
        acceptedBidThreadId: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.schemaVersion = schemaVersion
        self.listingDescription = listingDescription
        self.taskGroupId = taskGroupId
        self.taskGroupSummaryForBidders = taskGroupSummaryForBidders
        self.proFormaLineItems = proFormaLineItems
        self.shareProFormaLineItems = shareProFormaLineItems
        self.audience = audience
        self.participantProviderOrgIds = participantProviderOrgIds
        self.orgBiddingGroupIds = orgBiddingGroupIds
        self.participantDriverIds = participantDriverIds
        self.driverBiddingGroupIds = driverBiddingGroupIds
        self.type = type
        self.autoAwardFirstAccept = autoAwardFirstAccept
        self.autoOpenPricedBidThreads = autoOpenPricedBidThreads
        self.createdByUserId = createdByUserId
        self.createdByOrgId = createdByOrgId
        self.createdAtTimestamp = createdAtTimestamp
        self.lastEditedAtTimestamp = lastEditedAtTimestamp
        self.status = status
        self.orderId = orderId
        self.orderShortId = orderShortId
        self.orderOffChrtReferenceId = orderOffChrtReferenceId
        self.acceptedBidThreadId = acceptedBidThreadId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.schemaVersion = try container.decodeIfPresent(Int.self, forKey: .schemaVersion)
        self.listingDescription = try container.decode(String.self, forKey: .listingDescription)
        self.taskGroupId = try container.decode(String.self, forKey: .taskGroupId)
        self.taskGroupSummaryForBidders = try container.decode(String.self, forKey: .taskGroupSummaryForBidders)
        self.proFormaLineItems = try container.decodeIfPresent([ProFormaLineItem1].self, forKey: .proFormaLineItems)
        self.shareProFormaLineItems = try container.decodeIfPresent(Bool.self, forKey: .shareProFormaLineItems)
        self.audience = try container.decode(ListingAudienceEnum.self, forKey: .audience)
        self.participantProviderOrgIds = try container.decodeIfPresent([String].self, forKey: .participantProviderOrgIds)
        self.orgBiddingGroupIds = try container.decodeIfPresent([String].self, forKey: .orgBiddingGroupIds)
        self.participantDriverIds = try container.decodeIfPresent([String].self, forKey: .participantDriverIds)
        self.driverBiddingGroupIds = try container.decodeIfPresent([String].self, forKey: .driverBiddingGroupIds)
        self.type = try container.decodeIfPresent(ListingTypeEnum.self, forKey: .type)
        self.autoAwardFirstAccept = try container.decodeIfPresent(Bool.self, forKey: .autoAwardFirstAccept)
        self.autoOpenPricedBidThreads = try container.decodeIfPresent(Bool.self, forKey: .autoOpenPricedBidThreads)
        self.createdByUserId = try container.decode(String.self, forKey: .createdByUserId)
        self.createdByOrgId = try container.decode(String.self, forKey: .createdByOrgId)
        self.createdAtTimestamp = try container.decode(Date.self, forKey: .createdAtTimestamp)
        self.lastEditedAtTimestamp = try container.decode(Date.self, forKey: .lastEditedAtTimestamp)
        self.status = try container.decode(ListingStatusEnum.self, forKey: .status)
        self.orderId = try container.decode(String.self, forKey: .orderId)
        self.orderShortId = try container.decode(String.self, forKey: .orderShortId)
        self.orderOffChrtReferenceId = try container.decodeIfPresent(String.self, forKey: .orderOffChrtReferenceId)
        self.acceptedBidThreadId = try container.decodeIfPresent(String.self, forKey: .acceptedBidThreadId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encodeIfPresent(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.listingDescription, forKey: .listingDescription)
        try container.encode(self.taskGroupId, forKey: .taskGroupId)
        try container.encode(self.taskGroupSummaryForBidders, forKey: .taskGroupSummaryForBidders)
        try container.encodeIfPresent(self.proFormaLineItems, forKey: .proFormaLineItems)
        try container.encodeIfPresent(self.shareProFormaLineItems, forKey: .shareProFormaLineItems)
        try container.encode(self.audience, forKey: .audience)
        try container.encodeIfPresent(self.participantProviderOrgIds, forKey: .participantProviderOrgIds)
        try container.encodeIfPresent(self.orgBiddingGroupIds, forKey: .orgBiddingGroupIds)
        try container.encodeIfPresent(self.participantDriverIds, forKey: .participantDriverIds)
        try container.encodeIfPresent(self.driverBiddingGroupIds, forKey: .driverBiddingGroupIds)
        try container.encodeIfPresent(self.type, forKey: .type)
        try container.encodeIfPresent(self.autoAwardFirstAccept, forKey: .autoAwardFirstAccept)
        try container.encodeIfPresent(self.autoOpenPricedBidThreads, forKey: .autoOpenPricedBidThreads)
        try container.encode(self.createdByUserId, forKey: .createdByUserId)
        try container.encode(self.createdByOrgId, forKey: .createdByOrgId)
        try container.encode(self.createdAtTimestamp, forKey: .createdAtTimestamp)
        try container.encode(self.lastEditedAtTimestamp, forKey: .lastEditedAtTimestamp)
        try container.encode(self.status, forKey: .status)
        try container.encode(self.orderId, forKey: .orderId)
        try container.encode(self.orderShortId, forKey: .orderShortId)
        try container.encodeIfPresent(self.orderOffChrtReferenceId, forKey: .orderOffChrtReferenceId)
        try container.encodeIfPresent(self.acceptedBidThreadId, forKey: .acceptedBidThreadId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case schemaVersion = "schema_version"
        case listingDescription = "listing_description"
        case taskGroupId = "task_group_id"
        case taskGroupSummaryForBidders = "task_group_summary_for_bidders"
        case proFormaLineItems = "pro_forma_line_items"
        case shareProFormaLineItems = "share_pro_forma_line_items"
        case audience
        case participantProviderOrgIds = "participant_provider_org_ids"
        case orgBiddingGroupIds = "org_bidding_group_ids"
        case participantDriverIds = "participant_driver_ids"
        case driverBiddingGroupIds = "driver_bidding_group_ids"
        case type
        case autoAwardFirstAccept = "auto_award_first_accept"
        case autoOpenPricedBidThreads = "auto_open_priced_bid_threads"
        case createdByUserId = "created_by_user_id"
        case createdByOrgId = "created_by_org_id"
        case createdAtTimestamp = "created_at_timestamp"
        case lastEditedAtTimestamp = "last_edited_at_timestamp"
        case status
        case orderId = "order_id"
        case orderShortId = "order_short_id"
        case orderOffChrtReferenceId = "order_off_chrt_reference_id"
        case acceptedBidThreadId = "accepted_bid_thread_id"
    }
}