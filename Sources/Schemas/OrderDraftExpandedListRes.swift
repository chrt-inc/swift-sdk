import Foundation

public struct OrderDraftExpandedListRes: Codable, Hashable, Sendable {
    public let orderDraftsExpanded: [OrderDraftExpanded]
    public let totalCount: Int
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        orderDraftsExpanded: [OrderDraftExpanded],
        totalCount: Int,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.orderDraftsExpanded = orderDraftsExpanded
        self.totalCount = totalCount
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.orderDraftsExpanded = try container.decode([OrderDraftExpanded].self, forKey: .orderDraftsExpanded)
        self.totalCount = try container.decode(Int.self, forKey: .totalCount)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.orderDraftsExpanded, forKey: .orderDraftsExpanded)
        try container.encode(self.totalCount, forKey: .totalCount)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case orderDraftsExpanded = "order_drafts_expanded"
        case totalCount = "total_count"
    }
}