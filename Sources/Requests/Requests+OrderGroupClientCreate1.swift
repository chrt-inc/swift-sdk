import Foundation

extension Requests {
    public struct OrderGroupClientCreate1: Codable, Hashable, Sendable {
        public let description: String?
        public let name: String
        public let orderIds: [String]?
        public let schemaVersion: Int
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            description: String? = nil,
            name: String,
            orderIds: [String]? = nil,
            schemaVersion: Int,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.description = description
            self.name = name
            self.orderIds = orderIds
            self.schemaVersion = schemaVersion
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.description = try container.decodeIfPresent(String.self, forKey: .description)
            self.name = try container.decode(String.self, forKey: .name)
            self.orderIds = try container.decodeIfPresent([String].self, forKey: .orderIds)
            self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.description, forKey: .description)
            try container.encode(self.name, forKey: .name)
            try container.encodeIfPresent(self.orderIds, forKey: .orderIds)
            try container.encode(self.schemaVersion, forKey: .schemaVersion)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case description
            case name
            case orderIds = "order_ids"
            case schemaVersion = "schema_version"
        }
    }
}