import Foundation

public struct OrderScheduleBuildSeedRes: Codable, Hashable, Sendable {
    public let autoStage: Bool?
    public let orderScheduleId: String
    public let orderTemplateCore: OrderTemplateCore1
    public let referencesExpanded: OrderTemplateReferencesExpanded1
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        autoStage: Bool? = nil,
        orderScheduleId: String,
        orderTemplateCore: OrderTemplateCore1,
        referencesExpanded: OrderTemplateReferencesExpanded1,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.autoStage = autoStage
        self.orderScheduleId = orderScheduleId
        self.orderTemplateCore = orderTemplateCore
        self.referencesExpanded = referencesExpanded
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.autoStage = try container.decodeIfPresent(Bool.self, forKey: .autoStage)
        self.orderScheduleId = try container.decode(String.self, forKey: .orderScheduleId)
        self.orderTemplateCore = try container.decode(OrderTemplateCore1.self, forKey: .orderTemplateCore)
        self.referencesExpanded = try container.decode(OrderTemplateReferencesExpanded1.self, forKey: .referencesExpanded)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.autoStage, forKey: .autoStage)
        try container.encode(self.orderScheduleId, forKey: .orderScheduleId)
        try container.encode(self.orderTemplateCore, forKey: .orderTemplateCore)
        try container.encode(self.referencesExpanded, forKey: .referencesExpanded)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case autoStage = "auto_stage"
        case orderScheduleId = "order_schedule_id"
        case orderTemplateCore = "order_template_core"
        case referencesExpanded = "references_expanded"
    }
}