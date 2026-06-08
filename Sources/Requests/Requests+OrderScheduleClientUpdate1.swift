import Foundation

extension Requests {
    public struct OrderScheduleClientUpdate1: Codable, Hashable, Sendable {
        public let name: String?
        public let description: String?
        public let orderManifest: OrderManifest1?
        public let scheduleSpec: OrderScheduleSpec1?
        public let descriptionSetToNone: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            name: String? = nil,
            description: String? = nil,
            orderManifest: OrderManifest1? = nil,
            scheduleSpec: OrderScheduleSpec1? = nil,
            descriptionSetToNone: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.name = name
            self.description = description
            self.orderManifest = orderManifest
            self.scheduleSpec = scheduleSpec
            self.descriptionSetToNone = descriptionSetToNone
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.name = try container.decodeIfPresent(String.self, forKey: .name)
            self.description = try container.decodeIfPresent(String.self, forKey: .description)
            self.orderManifest = try container.decodeIfPresent(OrderManifest1.self, forKey: .orderManifest)
            self.scheduleSpec = try container.decodeIfPresent(OrderScheduleSpec1.self, forKey: .scheduleSpec)
            self.descriptionSetToNone = try container.decodeIfPresent(Bool.self, forKey: .descriptionSetToNone)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.name, forKey: .name)
            try container.encodeIfPresent(self.description, forKey: .description)
            try container.encodeIfPresent(self.orderManifest, forKey: .orderManifest)
            try container.encodeIfPresent(self.scheduleSpec, forKey: .scheduleSpec)
            try container.encodeIfPresent(self.descriptionSetToNone, forKey: .descriptionSetToNone)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case name
            case description
            case orderManifest = "order_manifest"
            case scheduleSpec = "schedule_spec"
            case descriptionSetToNone = "description__set_to_None"
        }
    }
}