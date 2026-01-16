import Foundation

public struct StatementExpandedRes: Codable, Hashable, Sendable {
    public let statement: Statement1
    public let lineItemGroups: [LineItemGroup1]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        statement: Statement1,
        lineItemGroups: [LineItemGroup1],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.statement = statement
        self.lineItemGroups = lineItemGroups
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.statement = try container.decode(Statement1.self, forKey: .statement)
        self.lineItemGroups = try container.decode([LineItemGroup1].self, forKey: .lineItemGroups)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.statement, forKey: .statement)
        try container.encode(self.lineItemGroups, forKey: .lineItemGroups)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case statement
        case lineItemGroups = "line_item_groups"
    }
}