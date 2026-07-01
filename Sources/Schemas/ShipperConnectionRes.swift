import Foundation

public struct ShipperConnectionRes: Codable, Hashable, Sendable {
    public let connected: Bool
    public let shipperOrgInfoForConnections: ShipperOrgInfoForConnections1
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        connected: Bool,
        shipperOrgInfoForConnections: ShipperOrgInfoForConnections1,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.connected = connected
        self.shipperOrgInfoForConnections = shipperOrgInfoForConnections
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.connected = try container.decode(Bool.self, forKey: .connected)
        self.shipperOrgInfoForConnections = try container.decode(ShipperOrgInfoForConnections1.self, forKey: .shipperOrgInfoForConnections)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.connected, forKey: .connected)
        try container.encode(self.shipperOrgInfoForConnections, forKey: .shipperOrgInfoForConnections)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case connected
        case shipperOrgInfoForConnections = "shipper_org_info_for_connections"
    }
}