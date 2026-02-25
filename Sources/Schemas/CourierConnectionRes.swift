import Foundation

public struct CourierConnectionRes: Codable, Hashable, Sendable {
    public let connected: Bool
    public let courierOrgInfoForConnections: CourierOrgInfoForConnections1
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        connected: Bool,
        courierOrgInfoForConnections: CourierOrgInfoForConnections1,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.connected = connected
        self.courierOrgInfoForConnections = courierOrgInfoForConnections
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.connected = try container.decode(Bool.self, forKey: .connected)
        self.courierOrgInfoForConnections = try container.decode(CourierOrgInfoForConnections1.self, forKey: .courierOrgInfoForConnections)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.connected, forKey: .connected)
        try container.encode(self.courierOrgInfoForConnections, forKey: .courierOrgInfoForConnections)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case connected
        case courierOrgInfoForConnections = "courier_org_info_for_connections"
    }
}