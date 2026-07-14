import Foundation

public struct OrderBuilderReq: Codable, Hashable, Sendable {
    /// Build input. Required if order_template_id is omitted. When both are provided, this edited core is used instead of the saved template.
    public let orderTemplateCore: OrderTemplateCore1?
    /// Saved-template provenance. Required if order_template_core is omitted. When provided, it is authorized for the caller and marked used when the draft opens.
    public let orderTemplateId: String?
    public let streamOrderParsingProgressUpdates: Bool?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        orderTemplateCore: OrderTemplateCore1? = nil,
        orderTemplateId: String? = nil,
        streamOrderParsingProgressUpdates: Bool? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.orderTemplateCore = orderTemplateCore
        self.orderTemplateId = orderTemplateId
        self.streamOrderParsingProgressUpdates = streamOrderParsingProgressUpdates
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.orderTemplateCore = try container.decodeIfPresent(OrderTemplateCore1.self, forKey: .orderTemplateCore)
        self.orderTemplateId = try container.decodeIfPresent(String.self, forKey: .orderTemplateId)
        self.streamOrderParsingProgressUpdates = try container.decodeIfPresent(Bool.self, forKey: .streamOrderParsingProgressUpdates)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.orderTemplateCore, forKey: .orderTemplateCore)
        try container.encodeIfPresent(self.orderTemplateId, forKey: .orderTemplateId)
        try container.encodeIfPresent(self.streamOrderParsingProgressUpdates, forKey: .streamOrderParsingProgressUpdates)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case orderTemplateCore = "order_template_core"
        case orderTemplateId = "order_template_id"
        case streamOrderParsingProgressUpdates = "stream_order_parsing_progress_updates"
    }
}