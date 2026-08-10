import Foundation

public struct ContactExpandedListItem: Codable, Hashable, Sendable {
    public let accounts: [Account1]?
    public let contact: Contact1
    public let offChrtOrgData: OffChrtOrgData1?
    public let orgPublicData: OrgPublicData1?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        accounts: [Account1]? = nil,
        contact: Contact1,
        offChrtOrgData: OffChrtOrgData1? = nil,
        orgPublicData: OrgPublicData1? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.accounts = accounts
        self.contact = contact
        self.offChrtOrgData = offChrtOrgData
        self.orgPublicData = orgPublicData
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.accounts = try container.decodeIfPresent([Account1].self, forKey: .accounts)
        self.contact = try container.decode(Contact1.self, forKey: .contact)
        self.offChrtOrgData = try container.decodeIfPresent(OffChrtOrgData1.self, forKey: .offChrtOrgData)
        self.orgPublicData = try container.decodeIfPresent(OrgPublicData1.self, forKey: .orgPublicData)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.accounts, forKey: .accounts)
        try container.encode(self.contact, forKey: .contact)
        try container.encodeIfPresent(self.offChrtOrgData, forKey: .offChrtOrgData)
        try container.encodeIfPresent(self.orgPublicData, forKey: .orgPublicData)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case accounts
        case contact
        case offChrtOrgData = "off_chrt_org_data"
        case orgPublicData = "org_public_data"
    }
}