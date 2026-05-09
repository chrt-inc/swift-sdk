import Foundation

extension Requests {
    public struct ListingClientCreate1: Codable, Hashable, Sendable {
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
        public let internalNotes: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
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
            internalNotes: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
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
            self.internalNotes = internalNotes
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
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
            self.internalNotes = try container.decodeIfPresent(String.self, forKey: .internalNotes)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
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
            try container.encodeIfPresent(self.internalNotes, forKey: .internalNotes)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
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
            case internalNotes = "internal_notes"
        }
    }
}