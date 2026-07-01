import Foundation

public struct LineItemGroupLineItemsRes: Codable, Hashable, Sendable {
    public let agreementLineItems: [LineItem1]
    public let amendmentLineItems: [LineItem1]
    public let deniedLineItems: [LineItem1]
    public let items: [LineItem1]
    public let pendingLineItems: [LineItem1]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        agreementLineItems: [LineItem1],
        amendmentLineItems: [LineItem1],
        deniedLineItems: [LineItem1],
        items: [LineItem1],
        pendingLineItems: [LineItem1],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.agreementLineItems = agreementLineItems
        self.amendmentLineItems = amendmentLineItems
        self.deniedLineItems = deniedLineItems
        self.items = items
        self.pendingLineItems = pendingLineItems
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.agreementLineItems = try container.decode([LineItem1].self, forKey: .agreementLineItems)
        self.amendmentLineItems = try container.decode([LineItem1].self, forKey: .amendmentLineItems)
        self.deniedLineItems = try container.decode([LineItem1].self, forKey: .deniedLineItems)
        self.items = try container.decode([LineItem1].self, forKey: .items)
        self.pendingLineItems = try container.decode([LineItem1].self, forKey: .pendingLineItems)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.agreementLineItems, forKey: .agreementLineItems)
        try container.encode(self.amendmentLineItems, forKey: .amendmentLineItems)
        try container.encode(self.deniedLineItems, forKey: .deniedLineItems)
        try container.encode(self.items, forKey: .items)
        try container.encode(self.pendingLineItems, forKey: .pendingLineItems)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case agreementLineItems = "agreement_line_items"
        case amendmentLineItems = "amendment_line_items"
        case deniedLineItems = "denied_line_items"
        case items
        case pendingLineItems = "pending_line_items"
    }
}