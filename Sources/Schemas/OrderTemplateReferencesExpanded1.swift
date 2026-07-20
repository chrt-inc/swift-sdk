import Foundation

public struct OrderTemplateReferencesExpanded1: Codable, Hashable, Sendable {
    public let contacts: [Contact1]?
    public let drivers: [Driver1]?
    public let executorOrgs: [OrderTemplateOrgInfo1]?
    public let offChrtExecutorOrgs: [OffChrtOrgData1]?
    public let offChrtShipperOrg: OffChrtOrgData1?
    public let shipperOrg: OrderTemplateOrgInfo1?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        contacts: [Contact1]? = nil,
        drivers: [Driver1]? = nil,
        executorOrgs: [OrderTemplateOrgInfo1]? = nil,
        offChrtExecutorOrgs: [OffChrtOrgData1]? = nil,
        offChrtShipperOrg: OffChrtOrgData1? = nil,
        shipperOrg: OrderTemplateOrgInfo1? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.contacts = contacts
        self.drivers = drivers
        self.executorOrgs = executorOrgs
        self.offChrtExecutorOrgs = offChrtExecutorOrgs
        self.offChrtShipperOrg = offChrtShipperOrg
        self.shipperOrg = shipperOrg
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.contacts = try container.decodeIfPresent([Contact1].self, forKey: .contacts)
        self.drivers = try container.decodeIfPresent([Driver1].self, forKey: .drivers)
        self.executorOrgs = try container.decodeIfPresent([OrderTemplateOrgInfo1].self, forKey: .executorOrgs)
        self.offChrtExecutorOrgs = try container.decodeIfPresent([OffChrtOrgData1].self, forKey: .offChrtExecutorOrgs)
        self.offChrtShipperOrg = try container.decodeIfPresent(OffChrtOrgData1.self, forKey: .offChrtShipperOrg)
        self.shipperOrg = try container.decodeIfPresent(OrderTemplateOrgInfo1.self, forKey: .shipperOrg)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.contacts, forKey: .contacts)
        try container.encodeIfPresent(self.drivers, forKey: .drivers)
        try container.encodeIfPresent(self.executorOrgs, forKey: .executorOrgs)
        try container.encodeIfPresent(self.offChrtExecutorOrgs, forKey: .offChrtExecutorOrgs)
        try container.encodeIfPresent(self.offChrtShipperOrg, forKey: .offChrtShipperOrg)
        try container.encodeIfPresent(self.shipperOrg, forKey: .shipperOrg)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case contacts
        case drivers
        case executorOrgs = "executor_orgs"
        case offChrtExecutorOrgs = "off_chrt_executor_orgs"
        case offChrtShipperOrg = "off_chrt_shipper_org"
        case shipperOrg = "shipper_org"
    }
}