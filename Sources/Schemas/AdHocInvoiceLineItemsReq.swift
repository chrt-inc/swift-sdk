import Foundation

public struct AdHocInvoiceLineItemsReq: Codable, Hashable, Sendable {
    public let adHocLineItems: [AdHocInvoiceLineItem1]
    public let taskGroupId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        adHocLineItems: [AdHocInvoiceLineItem1],
        taskGroupId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.adHocLineItems = adHocLineItems
        self.taskGroupId = taskGroupId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.adHocLineItems = try container.decode([AdHocInvoiceLineItem1].self, forKey: .adHocLineItems)
        self.taskGroupId = try container.decode(String.self, forKey: .taskGroupId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.adHocLineItems, forKey: .adHocLineItems)
        try container.encode(self.taskGroupId, forKey: .taskGroupId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case adHocLineItems = "ad_hoc_line_items"
        case taskGroupId = "task_group_id"
    }
}