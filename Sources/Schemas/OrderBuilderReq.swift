import Foundation

public struct OrderBuilderReq: Codable, Hashable, Sendable {
    public let orderTemplateCore: OrderTemplateCore1?
    public let orderTemplateId: String?
    /// Per-build pin for the first applied OperationsTask's deadline (later from_previous_task entries cascade from it). Kept off the template so saved templates don't carry a stale absolute time; None anchors the chain to the build time.
    public let initialDeadlineTimestamp: Date?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        orderTemplateCore: OrderTemplateCore1? = nil,
        orderTemplateId: String? = nil,
        initialDeadlineTimestamp: Date? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.orderTemplateCore = orderTemplateCore
        self.orderTemplateId = orderTemplateId
        self.initialDeadlineTimestamp = initialDeadlineTimestamp
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.orderTemplateCore = try container.decodeIfPresent(OrderTemplateCore1.self, forKey: .orderTemplateCore)
        self.orderTemplateId = try container.decodeIfPresent(String.self, forKey: .orderTemplateId)
        self.initialDeadlineTimestamp = try container.decodeIfPresent(Date.self, forKey: .initialDeadlineTimestamp)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.orderTemplateCore, forKey: .orderTemplateCore)
        try container.encodeIfPresent(self.orderTemplateId, forKey: .orderTemplateId)
        try container.encodeIfPresent(self.initialDeadlineTimestamp, forKey: .initialDeadlineTimestamp)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case orderTemplateCore = "order_template_core"
        case orderTemplateId = "order_template_id"
        case initialDeadlineTimestamp = "initial_deadline_timestamp"
    }
}