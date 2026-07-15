import Foundation

public struct ProviderProviderConnectionListItem: Codable, Hashable, Sendable {
    public let callerConnectionRole: ProviderProviderConnectionCallerRoleEnum
    public let counterpartyOffChrtOrgData: OffChrtOrgData1?
    public let counterpartyOrgPublicData: OrgPublicData1?
    public let distanceMeters: Double?
    public let providerProviderConnection: ProviderProviderConnection1
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        callerConnectionRole: ProviderProviderConnectionCallerRoleEnum,
        counterpartyOffChrtOrgData: OffChrtOrgData1? = nil,
        counterpartyOrgPublicData: OrgPublicData1? = nil,
        distanceMeters: Double? = nil,
        providerProviderConnection: ProviderProviderConnection1,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.callerConnectionRole = callerConnectionRole
        self.counterpartyOffChrtOrgData = counterpartyOffChrtOrgData
        self.counterpartyOrgPublicData = counterpartyOrgPublicData
        self.distanceMeters = distanceMeters
        self.providerProviderConnection = providerProviderConnection
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.callerConnectionRole = try container.decode(ProviderProviderConnectionCallerRoleEnum.self, forKey: .callerConnectionRole)
        self.counterpartyOffChrtOrgData = try container.decodeIfPresent(OffChrtOrgData1.self, forKey: .counterpartyOffChrtOrgData)
        self.counterpartyOrgPublicData = try container.decodeIfPresent(OrgPublicData1.self, forKey: .counterpartyOrgPublicData)
        self.distanceMeters = try container.decodeIfPresent(Double.self, forKey: .distanceMeters)
        self.providerProviderConnection = try container.decode(ProviderProviderConnection1.self, forKey: .providerProviderConnection)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.callerConnectionRole, forKey: .callerConnectionRole)
        try container.encodeIfPresent(self.counterpartyOffChrtOrgData, forKey: .counterpartyOffChrtOrgData)
        try container.encodeIfPresent(self.counterpartyOrgPublicData, forKey: .counterpartyOrgPublicData)
        try container.encodeIfPresent(self.distanceMeters, forKey: .distanceMeters)
        try container.encode(self.providerProviderConnection, forKey: .providerProviderConnection)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case callerConnectionRole = "caller_connection_role"
        case counterpartyOffChrtOrgData = "counterparty_off_chrt_org_data"
        case counterpartyOrgPublicData = "counterparty_org_public_data"
        case distanceMeters = "distance_meters"
        case providerProviderConnection = "provider_provider_connection"
    }
}