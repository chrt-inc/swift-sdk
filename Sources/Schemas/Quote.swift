import Foundation

/// Quote for a single payment vector.
public struct Quote: Codable, Hashable, Sendable {
    public let taskGroupId: String
    public let rateSheetId: String
    public let lineItems: [LineItem1]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        taskGroupId: String,
        rateSheetId: String,
        lineItems: [LineItem1],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.taskGroupId = taskGroupId
        self.rateSheetId = rateSheetId
        self.lineItems = lineItems
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.taskGroupId = try container.decode(String.self, forKey: .taskGroupId)
        self.rateSheetId = try container.decode(String.self, forKey: .rateSheetId)
        self.lineItems = try container.decode([LineItem1].self, forKey: .lineItems)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.taskGroupId, forKey: .taskGroupId)
        try container.encode(self.rateSheetId, forKey: .rateSheetId)
        try container.encode(self.lineItems, forKey: .lineItems)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case taskGroupId = "task_group_id"
        case rateSheetId = "rate_sheet_id"
        case lineItems = "line_items"
    }
}