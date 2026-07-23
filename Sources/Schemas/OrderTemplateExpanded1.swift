import Foundation

public struct OrderTemplateExpanded1: Codable, Hashable, Sendable {
    public let contacts: [Contact1]?
    public let coordinatorShipperAccounts: [Account1]?
    public let drivers: [Driver1]?
    public let executorOrgs: [OrderTemplateOrgInfo1]?
    public let offChrtExecutorOrgs: [OffChrtOrgData1]?
    public let offChrtShipperOrg: OffChrtOrgData1?
    public let orderTemplate: OrderTemplate1
    public let orders: [Order1]?
    public let ordersTotalCount: Int?
    public let shipperOrg: OrderTemplateOrgInfo1?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        contacts: [Contact1]? = nil,
        coordinatorShipperAccounts: [Account1]? = nil,
        drivers: [Driver1]? = nil,
        executorOrgs: [OrderTemplateOrgInfo1]? = nil,
        offChrtExecutorOrgs: [OffChrtOrgData1]? = nil,
        offChrtShipperOrg: OffChrtOrgData1? = nil,
        orderTemplate: OrderTemplate1,
        orders: [Order1]? = nil,
        ordersTotalCount: Int? = nil,
        shipperOrg: OrderTemplateOrgInfo1? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.contacts = contacts
        self.coordinatorShipperAccounts = coordinatorShipperAccounts
        self.drivers = drivers
        self.executorOrgs = executorOrgs
        self.offChrtExecutorOrgs = offChrtExecutorOrgs
        self.offChrtShipperOrg = offChrtShipperOrg
        self.orderTemplate = orderTemplate
        self.orders = orders
        self.ordersTotalCount = ordersTotalCount
        self.shipperOrg = shipperOrg
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.contacts = try container.decodeIfPresent([Contact1].self, forKey: .contacts)
        self.coordinatorShipperAccounts = try container.decodeIfPresent([Account1].self, forKey: .coordinatorShipperAccounts)
        self.drivers = try container.decodeIfPresent([Driver1].self, forKey: .drivers)
        self.executorOrgs = try container.decodeIfPresent([OrderTemplateOrgInfo1].self, forKey: .executorOrgs)
        self.offChrtExecutorOrgs = try container.decodeIfPresent([OffChrtOrgData1].self, forKey: .offChrtExecutorOrgs)
        self.offChrtShipperOrg = try container.decodeIfPresent(OffChrtOrgData1.self, forKey: .offChrtShipperOrg)
        self.orderTemplate = try container.decode(OrderTemplate1.self, forKey: .orderTemplate)
        self.orders = try container.decodeIfPresent([Order1].self, forKey: .orders)
        self.ordersTotalCount = try container.decodeIfPresent(Int.self, forKey: .ordersTotalCount)
        self.shipperOrg = try container.decodeIfPresent(OrderTemplateOrgInfo1.self, forKey: .shipperOrg)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.contacts, forKey: .contacts)
        try container.encodeIfPresent(self.coordinatorShipperAccounts, forKey: .coordinatorShipperAccounts)
        try container.encodeIfPresent(self.drivers, forKey: .drivers)
        try container.encodeIfPresent(self.executorOrgs, forKey: .executorOrgs)
        try container.encodeIfPresent(self.offChrtExecutorOrgs, forKey: .offChrtExecutorOrgs)
        try container.encodeIfPresent(self.offChrtShipperOrg, forKey: .offChrtShipperOrg)
        try container.encode(self.orderTemplate, forKey: .orderTemplate)
        try container.encodeIfPresent(self.orders, forKey: .orders)
        try container.encodeIfPresent(self.ordersTotalCount, forKey: .ordersTotalCount)
        try container.encodeIfPresent(self.shipperOrg, forKey: .shipperOrg)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case contacts
        case coordinatorShipperAccounts = "coordinator_shipper_accounts"
        case drivers
        case executorOrgs = "executor_orgs"
        case offChrtExecutorOrgs = "off_chrt_executor_orgs"
        case offChrtShipperOrg = "off_chrt_shipper_org"
        case orderTemplate = "order_template"
        case orders
        case ordersTotalCount = "orders_total_count"
        case shipperOrg = "shipper_org"
    }
}