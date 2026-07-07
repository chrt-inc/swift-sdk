import Foundation

extension Requests {
    public struct OrderScheduleClientUpdate1: Codable, Hashable, Sendable {
        public let autoStage: Bool?
        public let description: String?
        public let descriptionSetToNone: Bool?
        public let name: String?
        public let orderTemplateCore: OrderTemplateCore1?
        public let scheduleSpec: OrderScheduleSpec1?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            autoStage: Bool? = nil,
            description: String? = nil,
            descriptionSetToNone: Bool? = nil,
            name: String? = nil,
            orderTemplateCore: OrderTemplateCore1? = nil,
            scheduleSpec: OrderScheduleSpec1? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.autoStage = autoStage
            self.description = description
            self.descriptionSetToNone = descriptionSetToNone
            self.name = name
            self.orderTemplateCore = orderTemplateCore
            self.scheduleSpec = scheduleSpec
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.autoStage = try container.decodeIfPresent(Bool.self, forKey: .autoStage)
            self.description = try container.decodeIfPresent(String.self, forKey: .description)
            self.descriptionSetToNone = try container.decodeIfPresent(Bool.self, forKey: .descriptionSetToNone)
            self.name = try container.decodeIfPresent(String.self, forKey: .name)
            self.orderTemplateCore = try container.decodeIfPresent(OrderTemplateCore1.self, forKey: .orderTemplateCore)
            self.scheduleSpec = try container.decodeIfPresent(OrderScheduleSpec1.self, forKey: .scheduleSpec)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.autoStage, forKey: .autoStage)
            try container.encodeIfPresent(self.description, forKey: .description)
            try container.encodeIfPresent(self.descriptionSetToNone, forKey: .descriptionSetToNone)
            try container.encodeIfPresent(self.name, forKey: .name)
            try container.encodeIfPresent(self.orderTemplateCore, forKey: .orderTemplateCore)
            try container.encodeIfPresent(self.scheduleSpec, forKey: .scheduleSpec)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case autoStage = "auto_stage"
            case description
            case descriptionSetToNone = "description__set_to_None"
            case name
            case orderTemplateCore = "order_template_core"
            case scheduleSpec = "schedule_spec"
        }
    }
}