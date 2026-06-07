import Foundation

public struct OrderTemplateExpanded: Codable, Hashable, Sendable {
    public let orderTemplate: OrderTemplate1
    public let shipperOrg: OrderTemplateOrgRef1?
    public let offChrtShipperOrg: OffChrtShipperOrg1?
    public let executorOrgs: [OrderTemplateOrgRef1]?
    public let drivers: [Driver1]?
    public let directoryEntries: [DirectoryEntry1]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        orderTemplate: OrderTemplate1,
        shipperOrg: OrderTemplateOrgRef1? = nil,
        offChrtShipperOrg: OffChrtShipperOrg1? = nil,
        executorOrgs: [OrderTemplateOrgRef1]? = nil,
        drivers: [Driver1]? = nil,
        directoryEntries: [DirectoryEntry1]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.orderTemplate = orderTemplate
        self.shipperOrg = shipperOrg
        self.offChrtShipperOrg = offChrtShipperOrg
        self.executorOrgs = executorOrgs
        self.drivers = drivers
        self.directoryEntries = directoryEntries
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.orderTemplate = try container.decode(OrderTemplate1.self, forKey: .orderTemplate)
        self.shipperOrg = try container.decodeIfPresent(OrderTemplateOrgRef1.self, forKey: .shipperOrg)
        self.offChrtShipperOrg = try container.decodeIfPresent(OffChrtShipperOrg1.self, forKey: .offChrtShipperOrg)
        self.executorOrgs = try container.decodeIfPresent([OrderTemplateOrgRef1].self, forKey: .executorOrgs)
        self.drivers = try container.decodeIfPresent([Driver1].self, forKey: .drivers)
        self.directoryEntries = try container.decodeIfPresent([DirectoryEntry1].self, forKey: .directoryEntries)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.orderTemplate, forKey: .orderTemplate)
        try container.encodeIfPresent(self.shipperOrg, forKey: .shipperOrg)
        try container.encodeIfPresent(self.offChrtShipperOrg, forKey: .offChrtShipperOrg)
        try container.encodeIfPresent(self.executorOrgs, forKey: .executorOrgs)
        try container.encodeIfPresent(self.drivers, forKey: .drivers)
        try container.encodeIfPresent(self.directoryEntries, forKey: .directoryEntries)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case orderTemplate = "order_template"
        case shipperOrg = "shipper_org"
        case offChrtShipperOrg = "off_chrt_shipper_org"
        case executorOrgs = "executor_orgs"
        case drivers
        case directoryEntries = "directory_entries"
    }
}