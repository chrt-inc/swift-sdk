import Foundation

public struct InvoiceLineItemsByOrderExpandedRes: Codable, Hashable, Sendable {
    public let counterpartyAccounts: [Account1]
    public let counterpartyOffChrtOrgData: [OffChrtOrgData1]
    public let counterpartyOrgs: [OrgPublicData1]
    public let invoiceLineItems: [InvoiceLineItem1]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        counterpartyAccounts: [Account1],
        counterpartyOffChrtOrgData: [OffChrtOrgData1],
        counterpartyOrgs: [OrgPublicData1],
        invoiceLineItems: [InvoiceLineItem1],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.counterpartyAccounts = counterpartyAccounts
        self.counterpartyOffChrtOrgData = counterpartyOffChrtOrgData
        self.counterpartyOrgs = counterpartyOrgs
        self.invoiceLineItems = invoiceLineItems
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.counterpartyAccounts = try container.decode([Account1].self, forKey: .counterpartyAccounts)
        self.counterpartyOffChrtOrgData = try container.decode([OffChrtOrgData1].self, forKey: .counterpartyOffChrtOrgData)
        self.counterpartyOrgs = try container.decode([OrgPublicData1].self, forKey: .counterpartyOrgs)
        self.invoiceLineItems = try container.decode([InvoiceLineItem1].self, forKey: .invoiceLineItems)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.counterpartyAccounts, forKey: .counterpartyAccounts)
        try container.encode(self.counterpartyOffChrtOrgData, forKey: .counterpartyOffChrtOrgData)
        try container.encode(self.counterpartyOrgs, forKey: .counterpartyOrgs)
        try container.encode(self.invoiceLineItems, forKey: .invoiceLineItems)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case counterpartyAccounts = "counterparty_accounts"
        case counterpartyOffChrtOrgData = "counterparty_off_chrt_org_data"
        case counterpartyOrgs = "counterparty_orgs"
        case invoiceLineItems = "invoice_line_items"
    }
}