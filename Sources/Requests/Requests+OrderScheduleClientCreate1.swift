import Foundation

extension Requests {
    public struct OrderScheduleClientCreate1: Codable, Hashable, Sendable {
        public let schemaVersion: Int
        public let name: String
        public let description: String?
        public let orderManifest: OrderManifest1?
        public let scheduleSpec: OrderScheduleSpec1?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            schemaVersion: Int,
            name: String,
            description: String? = nil,
            orderManifest: OrderManifest1? = nil,
            scheduleSpec: OrderScheduleSpec1? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.schemaVersion = schemaVersion
            self.name = name
            self.description = description
            self.orderManifest = orderManifest
            self.scheduleSpec = scheduleSpec
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
            self.name = try container.decode(String.self, forKey: .name)
            self.description = try container.decodeIfPresent(String.self, forKey: .description)
            self.orderManifest = try container.decodeIfPresent(OrderManifest1.self, forKey: .orderManifest)
            self.scheduleSpec = try container.decodeIfPresent(OrderScheduleSpec1.self, forKey: .scheduleSpec)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.schemaVersion, forKey: .schemaVersion)
            try container.encode(self.name, forKey: .name)
            try container.encodeIfPresent(self.description, forKey: .description)
            try container.encodeIfPresent(self.orderManifest, forKey: .orderManifest)
            try container.encodeIfPresent(self.scheduleSpec, forKey: .scheduleSpec)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case schemaVersion = "schema_version"
            case name
            case description
            case orderManifest = "order_manifest"
            case scheduleSpec = "schedule_spec"
        }
    }
}