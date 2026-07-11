import Foundation

public struct ProviderProviderConnectionListItem: Codable, Hashable, Sendable {
    public let autoAssignEnabled: Bool
    public let callerConnectionRole: ProviderProviderConnectionCallerRoleEnum
    public let connected: Bool
    public let connectionId: String
    /// Must be a string starting with `org_`
    public let counterpartyOrgId: String
    public let counterpartyOrgPublicData: OrgPublicData1?
    public let counterpartyProviderOrgInfoForConnections: ProviderOrgInfoForConnections1?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        autoAssignEnabled: Bool,
        callerConnectionRole: ProviderProviderConnectionCallerRoleEnum,
        connected: Bool,
        connectionId: String,
        counterpartyOrgId: String,
        counterpartyOrgPublicData: OrgPublicData1? = nil,
        counterpartyProviderOrgInfoForConnections: ProviderOrgInfoForConnections1? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.autoAssignEnabled = autoAssignEnabled
        self.callerConnectionRole = callerConnectionRole
        self.connected = connected
        self.connectionId = connectionId
        self.counterpartyOrgId = counterpartyOrgId
        self.counterpartyOrgPublicData = counterpartyOrgPublicData
        self.counterpartyProviderOrgInfoForConnections = counterpartyProviderOrgInfoForConnections
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.autoAssignEnabled = try container.decode(Bool.self, forKey: .autoAssignEnabled)
        self.callerConnectionRole = try container.decode(ProviderProviderConnectionCallerRoleEnum.self, forKey: .callerConnectionRole)
        self.connected = try container.decode(Bool.self, forKey: .connected)
        self.connectionId = try container.decode(String.self, forKey: .connectionId)
        self.counterpartyOrgId = try container.decode(String.self, forKey: .counterpartyOrgId)
        self.counterpartyOrgPublicData = try container.decodeIfPresent(OrgPublicData1.self, forKey: .counterpartyOrgPublicData)
        self.counterpartyProviderOrgInfoForConnections = try container.decodeIfPresent(ProviderOrgInfoForConnections1.self, forKey: .counterpartyProviderOrgInfoForConnections)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.autoAssignEnabled, forKey: .autoAssignEnabled)
        try container.encode(self.callerConnectionRole, forKey: .callerConnectionRole)
        try container.encode(self.connected, forKey: .connected)
        try container.encode(self.connectionId, forKey: .connectionId)
        try container.encode(self.counterpartyOrgId, forKey: .counterpartyOrgId)
        try container.encodeIfPresent(self.counterpartyOrgPublicData, forKey: .counterpartyOrgPublicData)
        try container.encodeIfPresent(self.counterpartyProviderOrgInfoForConnections, forKey: .counterpartyProviderOrgInfoForConnections)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case autoAssignEnabled = "auto_assign_enabled"
        case callerConnectionRole = "caller_connection_role"
        case connected
        case connectionId = "connection_id"
        case counterpartyOrgId = "counterparty_org_id"
        case counterpartyOrgPublicData = "counterparty_org_public_data"
        case counterpartyProviderOrgInfoForConnections = "counterparty_provider_org_info_for_connections"
    }
}