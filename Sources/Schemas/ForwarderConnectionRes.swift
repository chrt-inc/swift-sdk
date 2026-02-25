import Foundation

public struct ForwarderConnectionRes: Codable, Hashable, Sendable {
    public let connected: Bool
    public let forwarderOrgInfoForConnections: ForwarderOrgInfoForConnections1
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        connected: Bool,
        forwarderOrgInfoForConnections: ForwarderOrgInfoForConnections1,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.connected = connected
        self.forwarderOrgInfoForConnections = forwarderOrgInfoForConnections
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.connected = try container.decode(Bool.self, forKey: .connected)
        self.forwarderOrgInfoForConnections = try container.decode(ForwarderOrgInfoForConnections1.self, forKey: .forwarderOrgInfoForConnections)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.connected, forKey: .connected)
        try container.encode(self.forwarderOrgInfoForConnections, forKey: .forwarderOrgInfoForConnections)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case connected
        case forwarderOrgInfoForConnections = "forwarder_org_info_for_connections"
    }
}