import Foundation

/// A distinct integration executor organization configured across shipping integrations.
///
/// Deliberately carries no credentials or secrets: provides the public identity
/// and the list of shipping integrations the executor org is connected with.
public struct ShippingIntegrationIntegrationExecutor: Codable, Hashable, Sendable {
    public let integrationExecutorOrg: OrgPublicData1?
    /// Must be a string starting with `org_`
    public let integrationExecutorOrgId: String
    public let integrationExecutorOrgName: String?
    public let integrations: [OrgShippingIntegrationEnum1]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        integrationExecutorOrg: OrgPublicData1? = nil,
        integrationExecutorOrgId: String,
        integrationExecutorOrgName: String? = nil,
        integrations: [OrgShippingIntegrationEnum1]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.integrationExecutorOrg = integrationExecutorOrg
        self.integrationExecutorOrgId = integrationExecutorOrgId
        self.integrationExecutorOrgName = integrationExecutorOrgName
        self.integrations = integrations
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.integrationExecutorOrg = try container.decodeIfPresent(OrgPublicData1.self, forKey: .integrationExecutorOrg)
        self.integrationExecutorOrgId = try container.decode(String.self, forKey: .integrationExecutorOrgId)
        self.integrationExecutorOrgName = try container.decodeIfPresent(String.self, forKey: .integrationExecutorOrgName)
        self.integrations = try container.decodeIfPresent([OrgShippingIntegrationEnum1].self, forKey: .integrations)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.integrationExecutorOrg, forKey: .integrationExecutorOrg)
        try container.encode(self.integrationExecutorOrgId, forKey: .integrationExecutorOrgId)
        try container.encodeIfPresent(self.integrationExecutorOrgName, forKey: .integrationExecutorOrgName)
        try container.encodeIfPresent(self.integrations, forKey: .integrations)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case integrationExecutorOrg = "integration_executor_org"
        case integrationExecutorOrgId = "integration_executor_org_id"
        case integrationExecutorOrgName = "integration_executor_org_name"
        case integrations
    }
}