import Foundation

extension Requests {
    public struct OrderTemplateNewCargoReorderReq1: Codable, Hashable, Sendable {
        public let orderedCargoKeys: [String]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            orderedCargoKeys: [String]? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.orderedCargoKeys = orderedCargoKeys
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.orderedCargoKeys = try container.decodeIfPresent([String].self, forKey: .orderedCargoKeys)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.orderedCargoKeys, forKey: .orderedCargoKeys)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case orderedCargoKeys = "ordered_cargo_keys"
        }
    }
}