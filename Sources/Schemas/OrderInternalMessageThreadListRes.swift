import Foundation

public struct OrderInternalMessageThreadListRes: Codable, Hashable, Sendable {
    public let items: [OrderInternalMessageThreadListItem]
    public let totalCount: Int
    public let totalUnreadCount: Int
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        items: [OrderInternalMessageThreadListItem],
        totalCount: Int,
        totalUnreadCount: Int,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.items = items
        self.totalCount = totalCount
        self.totalUnreadCount = totalUnreadCount
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.items = try container.decode([OrderInternalMessageThreadListItem].self, forKey: .items)
        self.totalCount = try container.decode(Int.self, forKey: .totalCount)
        self.totalUnreadCount = try container.decode(Int.self, forKey: .totalUnreadCount)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.items, forKey: .items)
        try container.encode(self.totalCount, forKey: .totalCount)
        try container.encode(self.totalUnreadCount, forKey: .totalUnreadCount)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case items
        case totalCount = "total_count"
        case totalUnreadCount = "total_unread_count"
    }
}