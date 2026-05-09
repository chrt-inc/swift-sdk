import Foundation

extension Requests {
    public struct ListingAddProviderParticipantsReq: Codable, Hashable, Sendable {
        public let participantProviderOrgIds: [String]?
        public let orgBiddingGroupIds: [String]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            participantProviderOrgIds: [String]? = nil,
            orgBiddingGroupIds: [String]? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.participantProviderOrgIds = participantProviderOrgIds
            self.orgBiddingGroupIds = orgBiddingGroupIds
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.participantProviderOrgIds = try container.decodeIfPresent([String].self, forKey: .participantProviderOrgIds)
            self.orgBiddingGroupIds = try container.decodeIfPresent([String].self, forKey: .orgBiddingGroupIds)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.participantProviderOrgIds, forKey: .participantProviderOrgIds)
            try container.encodeIfPresent(self.orgBiddingGroupIds, forKey: .orgBiddingGroupIds)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case participantProviderOrgIds = "participant_provider_org_ids"
            case orgBiddingGroupIds = "org_bidding_group_ids"
        }
    }
}