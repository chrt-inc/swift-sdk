import Foundation

public struct InvoiceLineItemsByOrderExpandedRes: Codable, Hashable, Sendable {
    public let billingPeriods: [BillingPeriodExpanded1]
    public let counterpartyDrivers: [Driver1]
    public let counterpartyOffChrtOrgData: [OffChrtOrgData1]
    public let counterpartyOrgs: [OrgPublicData1]
    public let invoiceLineItems: [InvoiceLineItem1]
    public let shipperAccounts: [Account1]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        billingPeriods: [BillingPeriodExpanded1],
        counterpartyDrivers: [Driver1],
        counterpartyOffChrtOrgData: [OffChrtOrgData1],
        counterpartyOrgs: [OrgPublicData1],
        invoiceLineItems: [InvoiceLineItem1],
        shipperAccounts: [Account1],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.billingPeriods = billingPeriods
        self.counterpartyDrivers = counterpartyDrivers
        self.counterpartyOffChrtOrgData = counterpartyOffChrtOrgData
        self.counterpartyOrgs = counterpartyOrgs
        self.invoiceLineItems = invoiceLineItems
        self.shipperAccounts = shipperAccounts
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.billingPeriods = try container.decode([BillingPeriodExpanded1].self, forKey: .billingPeriods)
        self.counterpartyDrivers = try container.decode([Driver1].self, forKey: .counterpartyDrivers)
        self.counterpartyOffChrtOrgData = try container.decode([OffChrtOrgData1].self, forKey: .counterpartyOffChrtOrgData)
        self.counterpartyOrgs = try container.decode([OrgPublicData1].self, forKey: .counterpartyOrgs)
        self.invoiceLineItems = try container.decode([InvoiceLineItem1].self, forKey: .invoiceLineItems)
        self.shipperAccounts = try container.decode([Account1].self, forKey: .shipperAccounts)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.billingPeriods, forKey: .billingPeriods)
        try container.encode(self.counterpartyDrivers, forKey: .counterpartyDrivers)
        try container.encode(self.counterpartyOffChrtOrgData, forKey: .counterpartyOffChrtOrgData)
        try container.encode(self.counterpartyOrgs, forKey: .counterpartyOrgs)
        try container.encode(self.invoiceLineItems, forKey: .invoiceLineItems)
        try container.encode(self.shipperAccounts, forKey: .shipperAccounts)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case billingPeriods = "billing_periods"
        case counterpartyDrivers = "counterparty_drivers"
        case counterpartyOffChrtOrgData = "counterparty_off_chrt_org_data"
        case counterpartyOrgs = "counterparty_orgs"
        case invoiceLineItems = "invoice_line_items"
        case shipperAccounts = "shipper_accounts"
    }
}