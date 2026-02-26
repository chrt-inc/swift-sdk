import Foundation

public struct ShipperConnectionRes: Codable, Hashable, Sendable {
    public let shipperOrgInfoForConnections: ShipperOrgInfoForConnections1
    public let connected: Bool
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        shipperOrgInfoForConnections: ShipperOrgInfoForConnections1,
        connected: Bool,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.shipperOrgInfoForConnections = shipperOrgInfoForConnections
        self.connected = connected
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.shipperOrgInfoForConnections = try container.decode(ShipperOrgInfoForConnections1.self, forKey: .shipperOrgInfoForConnections)
        self.connected = try container.decode(Bool.self, forKey: .connected)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.shipperOrgInfoForConnections, forKey: .shipperOrgInfoForConnections)
        try container.encode(self.connected, forKey: .connected)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case shipperOrgInfoForConnections = "shipper_org_info_for_connections"
        case connected
    }
}