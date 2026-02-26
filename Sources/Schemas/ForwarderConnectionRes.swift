import Foundation

public struct ForwarderConnectionRes: Codable, Hashable, Sendable {
    public let forwarderOrgInfoForConnections: ForwarderOrgInfoForConnections1
    public let connected: Bool
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        forwarderOrgInfoForConnections: ForwarderOrgInfoForConnections1,
        connected: Bool,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.forwarderOrgInfoForConnections = forwarderOrgInfoForConnections
        self.connected = connected
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.forwarderOrgInfoForConnections = try container.decode(ForwarderOrgInfoForConnections1.self, forKey: .forwarderOrgInfoForConnections)
        self.connected = try container.decode(Bool.self, forKey: .connected)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.forwarderOrgInfoForConnections, forKey: .forwarderOrgInfoForConnections)
        try container.encode(self.connected, forKey: .connected)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case forwarderOrgInfoForConnections = "forwarder_org_info_for_connections"
        case connected
    }
}