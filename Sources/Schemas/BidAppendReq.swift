import Foundation

/// Slim body for the per-action append routes
/// (`counter` / `accept` / `deny` / `withdraw`). The route URL is the
/// source of truth for `action`; `from_lister` is server-derived.
public struct BidAppendReq: Codable, Hashable, Sendable {
    public let comment: String?
    public let proFormaLineItems: [ProFormaLineItem1]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        comment: String? = nil,
        proFormaLineItems: [ProFormaLineItem1]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.comment = comment
        self.proFormaLineItems = proFormaLineItems
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.comment = try container.decodeIfPresent(String.self, forKey: .comment)
        self.proFormaLineItems = try container.decodeIfPresent([ProFormaLineItem1].self, forKey: .proFormaLineItems)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.comment, forKey: .comment)
        try container.encodeIfPresent(self.proFormaLineItems, forKey: .proFormaLineItems)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case comment
        case proFormaLineItems = "pro_forma_line_items"
    }
}