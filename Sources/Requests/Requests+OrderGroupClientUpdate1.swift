import Foundation

extension Requests {
    public struct OrderGroupClientUpdate1: Codable, Hashable, Sendable {
        public let description: String?
        public let descriptionSetToNone: Bool?
        public let name: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            description: String? = nil,
            descriptionSetToNone: Bool? = nil,
            name: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.description = description
            self.descriptionSetToNone = descriptionSetToNone
            self.name = name
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.description = try container.decodeIfPresent(String.self, forKey: .description)
            self.descriptionSetToNone = try container.decodeIfPresent(Bool.self, forKey: .descriptionSetToNone)
            self.name = try container.decodeIfPresent(String.self, forKey: .name)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.description, forKey: .description)
            try container.encodeIfPresent(self.descriptionSetToNone, forKey: .descriptionSetToNone)
            try container.encodeIfPresent(self.name, forKey: .name)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case description
            case descriptionSetToNone = "description__set_to_None"
            case name
        }
    }
}