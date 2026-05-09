import Foundation

extension Requests {
    public struct ListingRemoveDriverParticipantsReq: Codable, Hashable, Sendable {
        public let participantDriverIds: [String]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            participantDriverIds: [String]? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.participantDriverIds = participantDriverIds
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.participantDriverIds = try container.decodeIfPresent([String].self, forKey: .participantDriverIds)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.participantDriverIds, forKey: .participantDriverIds)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case participantDriverIds = "participant_driver_ids"
        }
    }
}