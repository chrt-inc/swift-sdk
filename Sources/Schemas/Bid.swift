import Foundation

/// One entry in a BidThread's history. Immutable once appended.
public struct Bid: Codable, Hashable, Sendable {
    /// Must be a string starting with `user_`
    public let actedByUserId: String
    public let action: BidActionEnum
    public let comment: String?
    public let createdAtTimestamp: Date
    public let fromLister: Bool
    public let proFormaLineItems: [ProFormaLineItem1]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        actedByUserId: String,
        action: BidActionEnum,
        comment: String? = nil,
        createdAtTimestamp: Date,
        fromLister: Bool,
        proFormaLineItems: [ProFormaLineItem1]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.actedByUserId = actedByUserId
        self.action = action
        self.comment = comment
        self.createdAtTimestamp = createdAtTimestamp
        self.fromLister = fromLister
        self.proFormaLineItems = proFormaLineItems
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.actedByUserId = try container.decode(String.self, forKey: .actedByUserId)
        self.action = try container.decode(BidActionEnum.self, forKey: .action)
        self.comment = try container.decodeIfPresent(String.self, forKey: .comment)
        self.createdAtTimestamp = try container.decode(Date.self, forKey: .createdAtTimestamp)
        self.fromLister = try container.decode(Bool.self, forKey: .fromLister)
        self.proFormaLineItems = try container.decodeIfPresent([ProFormaLineItem1].self, forKey: .proFormaLineItems)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.actedByUserId, forKey: .actedByUserId)
        try container.encode(self.action, forKey: .action)
        try container.encodeIfPresent(self.comment, forKey: .comment)
        try container.encode(self.createdAtTimestamp, forKey: .createdAtTimestamp)
        try container.encode(self.fromLister, forKey: .fromLister)
        try container.encodeIfPresent(self.proFormaLineItems, forKey: .proFormaLineItems)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case actedByUserId = "acted_by_user_id"
        case action
        case comment
        case createdAtTimestamp = "created_at_timestamp"
        case fromLister = "from_lister"
        case proFormaLineItems = "pro_forma_line_items"
    }
}