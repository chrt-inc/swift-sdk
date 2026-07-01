import Foundation

extension Requests {
    public struct ListingClientCreate1: Codable, Hashable, Sendable {
        public let audience: ListingAudienceEnum
        public let autoAwardFirstAccept: Bool?
        public let autoOpenPricedBidThreads: Bool?
        public let driverBiddingGroupIds: [String]?
        public let internalNotes: String?
        public let listingDescription: String
        public let orgBiddingGroupIds: [String]?
        public let participantDriverIds: [String]?
        public let participantProviderOrgIds: [String]?
        public let proFormaLineItems: [ProFormaLineItem1]?
        public let schemaVersion: Int?
        public let shareProFormaLineItems: Bool?
        public let taskGroupId: String
        public let taskGroupSummaryForBidders: String
        public let type: ListingTypeEnum?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            audience: ListingAudienceEnum,
            autoAwardFirstAccept: Bool? = nil,
            autoOpenPricedBidThreads: Bool? = nil,
            driverBiddingGroupIds: [String]? = nil,
            internalNotes: String? = nil,
            listingDescription: String,
            orgBiddingGroupIds: [String]? = nil,
            participantDriverIds: [String]? = nil,
            participantProviderOrgIds: [String]? = nil,
            proFormaLineItems: [ProFormaLineItem1]? = nil,
            schemaVersion: Int? = nil,
            shareProFormaLineItems: Bool? = nil,
            taskGroupId: String,
            taskGroupSummaryForBidders: String,
            type: ListingTypeEnum? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.audience = audience
            self.autoAwardFirstAccept = autoAwardFirstAccept
            self.autoOpenPricedBidThreads = autoOpenPricedBidThreads
            self.driverBiddingGroupIds = driverBiddingGroupIds
            self.internalNotes = internalNotes
            self.listingDescription = listingDescription
            self.orgBiddingGroupIds = orgBiddingGroupIds
            self.participantDriverIds = participantDriverIds
            self.participantProviderOrgIds = participantProviderOrgIds
            self.proFormaLineItems = proFormaLineItems
            self.schemaVersion = schemaVersion
            self.shareProFormaLineItems = shareProFormaLineItems
            self.taskGroupId = taskGroupId
            self.taskGroupSummaryForBidders = taskGroupSummaryForBidders
            self.type = type
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.audience = try container.decode(ListingAudienceEnum.self, forKey: .audience)
            self.autoAwardFirstAccept = try container.decodeIfPresent(Bool.self, forKey: .autoAwardFirstAccept)
            self.autoOpenPricedBidThreads = try container.decodeIfPresent(Bool.self, forKey: .autoOpenPricedBidThreads)
            self.driverBiddingGroupIds = try container.decodeIfPresent([String].self, forKey: .driverBiddingGroupIds)
            self.internalNotes = try container.decodeIfPresent(String.self, forKey: .internalNotes)
            self.listingDescription = try container.decode(String.self, forKey: .listingDescription)
            self.orgBiddingGroupIds = try container.decodeIfPresent([String].self, forKey: .orgBiddingGroupIds)
            self.participantDriverIds = try container.decodeIfPresent([String].self, forKey: .participantDriverIds)
            self.participantProviderOrgIds = try container.decodeIfPresent([String].self, forKey: .participantProviderOrgIds)
            self.proFormaLineItems = try container.decodeIfPresent([ProFormaLineItem1].self, forKey: .proFormaLineItems)
            self.schemaVersion = try container.decodeIfPresent(Int.self, forKey: .schemaVersion)
            self.shareProFormaLineItems = try container.decodeIfPresent(Bool.self, forKey: .shareProFormaLineItems)
            self.taskGroupId = try container.decode(String.self, forKey: .taskGroupId)
            self.taskGroupSummaryForBidders = try container.decode(String.self, forKey: .taskGroupSummaryForBidders)
            self.type = try container.decodeIfPresent(ListingTypeEnum.self, forKey: .type)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.audience, forKey: .audience)
            try container.encodeIfPresent(self.autoAwardFirstAccept, forKey: .autoAwardFirstAccept)
            try container.encodeIfPresent(self.autoOpenPricedBidThreads, forKey: .autoOpenPricedBidThreads)
            try container.encodeIfPresent(self.driverBiddingGroupIds, forKey: .driverBiddingGroupIds)
            try container.encodeIfPresent(self.internalNotes, forKey: .internalNotes)
            try container.encode(self.listingDescription, forKey: .listingDescription)
            try container.encodeIfPresent(self.orgBiddingGroupIds, forKey: .orgBiddingGroupIds)
            try container.encodeIfPresent(self.participantDriverIds, forKey: .participantDriverIds)
            try container.encodeIfPresent(self.participantProviderOrgIds, forKey: .participantProviderOrgIds)
            try container.encodeIfPresent(self.proFormaLineItems, forKey: .proFormaLineItems)
            try container.encodeIfPresent(self.schemaVersion, forKey: .schemaVersion)
            try container.encodeIfPresent(self.shareProFormaLineItems, forKey: .shareProFormaLineItems)
            try container.encode(self.taskGroupId, forKey: .taskGroupId)
            try container.encode(self.taskGroupSummaryForBidders, forKey: .taskGroupSummaryForBidders)
            try container.encodeIfPresent(self.type, forKey: .type)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case audience
            case autoAwardFirstAccept = "auto_award_first_accept"
            case autoOpenPricedBidThreads = "auto_open_priced_bid_threads"
            case driverBiddingGroupIds = "driver_bidding_group_ids"
            case internalNotes = "internal_notes"
            case listingDescription = "listing_description"
            case orgBiddingGroupIds = "org_bidding_group_ids"
            case participantDriverIds = "participant_driver_ids"
            case participantProviderOrgIds = "participant_provider_org_ids"
            case proFormaLineItems = "pro_forma_line_items"
            case schemaVersion = "schema_version"
            case shareProFormaLineItems = "share_pro_forma_line_items"
            case taskGroupId = "task_group_id"
            case taskGroupSummaryForBidders = "task_group_summary_for_bidders"
            case type
        }
    }
}