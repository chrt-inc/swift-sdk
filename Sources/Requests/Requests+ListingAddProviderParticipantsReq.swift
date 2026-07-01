import Foundation

extension Requests {
    public struct ListingAddProviderParticipantsReq: Codable, Hashable, Sendable {
        public let orgBiddingGroupIds: [String]?
        public let participantProviderOrgIds: [String]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            orgBiddingGroupIds: [String]? = nil,
            participantProviderOrgIds: [String]? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.orgBiddingGroupIds = orgBiddingGroupIds
            self.participantProviderOrgIds = participantProviderOrgIds
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.orgBiddingGroupIds = try container.decodeIfPresent([String].self, forKey: .orgBiddingGroupIds)
            self.participantProviderOrgIds = try container.decodeIfPresent([String].self, forKey: .participantProviderOrgIds)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.orgBiddingGroupIds, forKey: .orgBiddingGroupIds)
            try container.encodeIfPresent(self.participantProviderOrgIds, forKey: .participantProviderOrgIds)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case orgBiddingGroupIds = "org_bidding_group_ids"
            case participantProviderOrgIds = "participant_provider_org_ids"
        }
    }
}