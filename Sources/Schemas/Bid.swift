import Foundation

/// One entry in a BidThread's history. Immutable once appended.
public struct Bid: Codable, Hashable, Sendable {
    public let action: BidActionEnum
    public let proFormaLineItems: [ProFormaLineItem1]?
    public let comment: String?
    /// Must be a string starting with `user_`
    public let actedByUserId: String
    public let fromLister: Bool
    public let createdAtTimestamp: Date
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        action: BidActionEnum,
        proFormaLineItems: [ProFormaLineItem1]? = nil,
        comment: String? = nil,
        actedByUserId: String,
        fromLister: Bool,
        createdAtTimestamp: Date,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.action = action
        self.proFormaLineItems = proFormaLineItems
        self.comment = comment
        self.actedByUserId = actedByUserId
        self.fromLister = fromLister
        self.createdAtTimestamp = createdAtTimestamp
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.action = try container.decode(BidActionEnum.self, forKey: .action)
        self.proFormaLineItems = try container.decodeIfPresent([ProFormaLineItem1].self, forKey: .proFormaLineItems)
        self.comment = try container.decodeIfPresent(String.self, forKey: .comment)
        self.actedByUserId = try container.decode(String.self, forKey: .actedByUserId)
        self.fromLister = try container.decode(Bool.self, forKey: .fromLister)
        self.createdAtTimestamp = try container.decode(Date.self, forKey: .createdAtTimestamp)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.action, forKey: .action)
        try container.encodeIfPresent(self.proFormaLineItems, forKey: .proFormaLineItems)
        try container.encodeIfPresent(self.comment, forKey: .comment)
        try container.encode(self.actedByUserId, forKey: .actedByUserId)
        try container.encode(self.fromLister, forKey: .fromLister)
        try container.encode(self.createdAtTimestamp, forKey: .createdAtTimestamp)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case action
        case proFormaLineItems = "pro_forma_line_items"
        case comment
        case actedByUserId = "acted_by_user_id"
        case fromLister = "from_lister"
        case createdAtTimestamp = "created_at_timestamp"
    }
}