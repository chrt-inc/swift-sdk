import Foundation

public struct LineItemGroupListRes: Codable, Hashable, Sendable {
    public let lineItemGroups: [LineItemGroup1]
    public let totalCount: Int
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        lineItemGroups: [LineItemGroup1],
        totalCount: Int,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.lineItemGroups = lineItemGroups
        self.totalCount = totalCount
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.lineItemGroups = try container.decode([LineItemGroup1].self, forKey: .lineItemGroups)
        self.totalCount = try container.decode(Int.self, forKey: .totalCount)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.lineItemGroups, forKey: .lineItemGroups)
        try container.encode(self.totalCount, forKey: .totalCount)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case lineItemGroups = "line_item_groups"
        case totalCount = "total_count"
    }
}