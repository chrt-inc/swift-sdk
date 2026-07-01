import Foundation

public struct ProviderConnectionRes: Codable, Hashable, Sendable {
    public let connected: Bool
    public let providerOrgInfoForConnections: ProviderOrgInfoForConnections1
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        connected: Bool,
        providerOrgInfoForConnections: ProviderOrgInfoForConnections1,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.connected = connected
        self.providerOrgInfoForConnections = providerOrgInfoForConnections
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.connected = try container.decode(Bool.self, forKey: .connected)
        self.providerOrgInfoForConnections = try container.decode(ProviderOrgInfoForConnections1.self, forKey: .providerOrgInfoForConnections)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.connected, forKey: .connected)
        try container.encode(self.providerOrgInfoForConnections, forKey: .providerOrgInfoForConnections)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case connected
        case providerOrgInfoForConnections = "provider_org_info_for_connections"
    }
}