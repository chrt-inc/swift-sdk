import Foundation

public struct InvoiceLineItemExpandedRes: Codable, Hashable, Sendable {
    public let counterpartyDriver: Driver1?
    public let counterpartyOffChrtOrgData: OffChrtOrgData1?
    public let counterpartyOrg: OrgPublicData1?
    public let invoiceLineItem: InvoiceLineItem1
    public let order: OrderLimitedForProvider1?
    public let shipperAccount: Account1?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        counterpartyDriver: Driver1? = nil,
        counterpartyOffChrtOrgData: OffChrtOrgData1? = nil,
        counterpartyOrg: OrgPublicData1? = nil,
        invoiceLineItem: InvoiceLineItem1,
        order: OrderLimitedForProvider1? = nil,
        shipperAccount: Account1? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.counterpartyDriver = counterpartyDriver
        self.counterpartyOffChrtOrgData = counterpartyOffChrtOrgData
        self.counterpartyOrg = counterpartyOrg
        self.invoiceLineItem = invoiceLineItem
        self.order = order
        self.shipperAccount = shipperAccount
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.counterpartyDriver = try container.decodeIfPresent(Driver1.self, forKey: .counterpartyDriver)
        self.counterpartyOffChrtOrgData = try container.decodeIfPresent(OffChrtOrgData1.self, forKey: .counterpartyOffChrtOrgData)
        self.counterpartyOrg = try container.decodeIfPresent(OrgPublicData1.self, forKey: .counterpartyOrg)
        self.invoiceLineItem = try container.decode(InvoiceLineItem1.self, forKey: .invoiceLineItem)
        self.order = try container.decodeIfPresent(OrderLimitedForProvider1.self, forKey: .order)
        self.shipperAccount = try container.decodeIfPresent(Account1.self, forKey: .shipperAccount)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.counterpartyDriver, forKey: .counterpartyDriver)
        try container.encodeIfPresent(self.counterpartyOffChrtOrgData, forKey: .counterpartyOffChrtOrgData)
        try container.encodeIfPresent(self.counterpartyOrg, forKey: .counterpartyOrg)
        try container.encode(self.invoiceLineItem, forKey: .invoiceLineItem)
        try container.encodeIfPresent(self.order, forKey: .order)
        try container.encodeIfPresent(self.shipperAccount, forKey: .shipperAccount)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case counterpartyDriver = "counterparty_driver"
        case counterpartyOffChrtOrgData = "counterparty_off_chrt_org_data"
        case counterpartyOrg = "counterparty_org"
        case invoiceLineItem = "invoice_line_item"
        case order
        case shipperAccount = "shipper_account"
    }
}