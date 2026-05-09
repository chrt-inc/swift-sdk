import Foundation

extension Requests {
    public struct ListingAddDriverParticipantsReq: Codable, Hashable, Sendable {
        public let participantDriverIds: [String]?
        public let driverBiddingGroupIds: [String]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            participantDriverIds: [String]? = nil,
            driverBiddingGroupIds: [String]? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.participantDriverIds = participantDriverIds
            self.driverBiddingGroupIds = driverBiddingGroupIds
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.participantDriverIds = try container.decodeIfPresent([String].self, forKey: .participantDriverIds)
            self.driverBiddingGroupIds = try container.decodeIfPresent([String].self, forKey: .driverBiddingGroupIds)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.participantDriverIds, forKey: .participantDriverIds)
            try container.encodeIfPresent(self.driverBiddingGroupIds, forKey: .driverBiddingGroupIds)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case participantDriverIds = "participant_driver_ids"
            case driverBiddingGroupIds = "driver_bidding_group_ids"
        }
    }
}