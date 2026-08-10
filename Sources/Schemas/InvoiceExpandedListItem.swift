import Foundation

public struct InvoiceExpandedListItem: Codable, Hashable, Sendable {
    public let counterpartyAccounts: [Account1]?
    public let counterpartyOffChrtOrgData: OffChrtOrgData1?
    public let counterpartyOrg: OrgPublicData1?
    public let invoice: Invoice1
    public let orders: [OrderLimitedForProvider1]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        counterpartyAccounts: [Account1]? = nil,
        counterpartyOffChrtOrgData: OffChrtOrgData1? = nil,
        counterpartyOrg: OrgPublicData1? = nil,
        invoice: Invoice1,
        orders: [OrderLimitedForProvider1]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.counterpartyAccounts = counterpartyAccounts
        self.counterpartyOffChrtOrgData = counterpartyOffChrtOrgData
        self.counterpartyOrg = counterpartyOrg
        self.invoice = invoice
        self.orders = orders
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.counterpartyAccounts = try container.decodeIfPresent([Account1].self, forKey: .counterpartyAccounts)
        self.counterpartyOffChrtOrgData = try container.decodeIfPresent(OffChrtOrgData1.self, forKey: .counterpartyOffChrtOrgData)
        self.counterpartyOrg = try container.decodeIfPresent(OrgPublicData1.self, forKey: .counterpartyOrg)
        self.invoice = try container.decode(Invoice1.self, forKey: .invoice)
        self.orders = try container.decodeIfPresent([OrderLimitedForProvider1].self, forKey: .orders)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.counterpartyAccounts, forKey: .counterpartyAccounts)
        try container.encodeIfPresent(self.counterpartyOffChrtOrgData, forKey: .counterpartyOffChrtOrgData)
        try container.encodeIfPresent(self.counterpartyOrg, forKey: .counterpartyOrg)
        try container.encode(self.invoice, forKey: .invoice)
        try container.encodeIfPresent(self.orders, forKey: .orders)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case counterpartyAccounts = "counterparty_accounts"
        case counterpartyOffChrtOrgData = "counterparty_off_chrt_org_data"
        case counterpartyOrg = "counterparty_org"
        case invoice
        case orders
    }
}