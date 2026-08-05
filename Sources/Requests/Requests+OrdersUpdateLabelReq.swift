import Foundation

extension Requests {
    public struct OrdersUpdateLabelReq: Codable, Hashable, Sendable {
        public let label: String?
        public let labelSetToNone: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            label: String? = nil,
            labelSetToNone: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.label = label
            self.labelSetToNone = labelSetToNone
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.label = try container.decodeIfPresent(String.self, forKey: .label)
            self.labelSetToNone = try container.decodeIfPresent(Bool.self, forKey: .labelSetToNone)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.label, forKey: .label)
            try container.encodeIfPresent(self.labelSetToNone, forKey: .labelSetToNone)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case label
            case labelSetToNone = "label__set_to_None"
        }
    }
}