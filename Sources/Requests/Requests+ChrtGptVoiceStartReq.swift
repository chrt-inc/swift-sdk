import Foundation

extension Requests {
    public struct ChrtGptVoiceStartReq: Codable, Hashable, Sendable {
        public let delegation: ChrtGptVoiceDelegationEnum
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            delegation: ChrtGptVoiceDelegationEnum,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.delegation = delegation
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.delegation = try container.decode(ChrtGptVoiceDelegationEnum.self, forKey: .delegation)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.delegation, forKey: .delegation)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case delegation
        }
    }
}