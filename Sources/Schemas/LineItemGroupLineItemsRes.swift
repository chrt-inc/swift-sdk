import Foundation

public struct LineItemGroupLineItemsRes: Codable, Hashable, Sendable {
    public let items: [LineItem1]
    public let agreementLineItems: [LineItem1]
    public let amendmentLineItems: [LineItem1]
    public let pendingLineItems: [LineItem1]
    public let deniedLineItems: [LineItem1]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        items: [LineItem1],
        agreementLineItems: [LineItem1],
        amendmentLineItems: [LineItem1],
        pendingLineItems: [LineItem1],
        deniedLineItems: [LineItem1],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.items = items
        self.agreementLineItems = agreementLineItems
        self.amendmentLineItems = amendmentLineItems
        self.pendingLineItems = pendingLineItems
        self.deniedLineItems = deniedLineItems
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.items = try container.decode([LineItem1].self, forKey: .items)
        self.agreementLineItems = try container.decode([LineItem1].self, forKey: .agreementLineItems)
        self.amendmentLineItems = try container.decode([LineItem1].self, forKey: .amendmentLineItems)
        self.pendingLineItems = try container.decode([LineItem1].self, forKey: .pendingLineItems)
        self.deniedLineItems = try container.decode([LineItem1].self, forKey: .deniedLineItems)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.items, forKey: .items)
        try container.encode(self.agreementLineItems, forKey: .agreementLineItems)
        try container.encode(self.amendmentLineItems, forKey: .amendmentLineItems)
        try container.encode(self.pendingLineItems, forKey: .pendingLineItems)
        try container.encode(self.deniedLineItems, forKey: .deniedLineItems)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case items
        case agreementLineItems = "agreement_line_items"
        case amendmentLineItems = "amendment_line_items"
        case pendingLineItems = "pending_line_items"
        case deniedLineItems = "denied_line_items"
    }
}