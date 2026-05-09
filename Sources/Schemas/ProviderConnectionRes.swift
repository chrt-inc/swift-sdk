import Foundation

public struct ProviderConnectionRes: Codable, Hashable, Sendable {
    public let providerOrgInfoForConnections: ProviderOrgInfoForConnections1
    public let connected: Bool
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        providerOrgInfoForConnections: ProviderOrgInfoForConnections1,
        connected: Bool,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.providerOrgInfoForConnections = providerOrgInfoForConnections
        self.connected = connected
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.providerOrgInfoForConnections = try container.decode(ProviderOrgInfoForConnections1.self, forKey: .providerOrgInfoForConnections)
        self.connected = try container.decode(Bool.self, forKey: .connected)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.providerOrgInfoForConnections, forKey: .providerOrgInfoForConnections)
        try container.encode(self.connected, forKey: .connected)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case providerOrgInfoForConnections = "provider_org_info_for_connections"
        case connected
    }
}