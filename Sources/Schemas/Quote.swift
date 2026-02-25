import Foundation

/// Quote for a single payment vector.
public struct Quote: Codable, Hashable, Sendable {
    public let lineItems: [LineItem1]
    public let rateSheetId: String
    public let taskGroupId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        lineItems: [LineItem1],
        rateSheetId: String,
        taskGroupId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.lineItems = lineItems
        self.rateSheetId = rateSheetId
        self.taskGroupId = taskGroupId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.lineItems = try container.decode([LineItem1].self, forKey: .lineItems)
        self.rateSheetId = try container.decode(String.self, forKey: .rateSheetId)
        self.taskGroupId = try container.decode(String.self, forKey: .taskGroupId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.lineItems, forKey: .lineItems)
        try container.encode(self.rateSheetId, forKey: .rateSheetId)
        try container.encode(self.taskGroupId, forKey: .taskGroupId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case lineItems = "line_items"
        case rateSheetId = "rate_sheet_id"
        case taskGroupId = "task_group_id"
    }
}