import Foundation

public struct CourierConnectionRes: Codable, Hashable, Sendable {
    public let courierOrgInfoForConnections: CourierOrgInfoForConnections1
    public let connected: Bool
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        courierOrgInfoForConnections: CourierOrgInfoForConnections1,
        connected: Bool,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.courierOrgInfoForConnections = courierOrgInfoForConnections
        self.connected = connected
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.courierOrgInfoForConnections = try container.decode(CourierOrgInfoForConnections1.self, forKey: .courierOrgInfoForConnections)
        self.connected = try container.decode(Bool.self, forKey: .connected)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.courierOrgInfoForConnections, forKey: .courierOrgInfoForConnections)
        try container.encode(self.connected, forKey: .connected)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case courierOrgInfoForConnections = "courier_org_info_for_connections"
        case connected
    }
}