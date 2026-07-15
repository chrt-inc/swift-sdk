import Foundation

public struct ShipperProviderConnectionForShipperListItem: Codable, Hashable, Sendable {
    public let coordinatorOrgPublicData: OrgPublicData1
    public let shipperProviderConnection: ShipperProviderConnection1
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        coordinatorOrgPublicData: OrgPublicData1,
        shipperProviderConnection: ShipperProviderConnection1,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.coordinatorOrgPublicData = coordinatorOrgPublicData
        self.shipperProviderConnection = shipperProviderConnection
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.coordinatorOrgPublicData = try container.decode(OrgPublicData1.self, forKey: .coordinatorOrgPublicData)
        self.shipperProviderConnection = try container.decode(ShipperProviderConnection1.self, forKey: .shipperProviderConnection)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.coordinatorOrgPublicData, forKey: .coordinatorOrgPublicData)
        try container.encode(self.shipperProviderConnection, forKey: .shipperProviderConnection)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case coordinatorOrgPublicData = "coordinator_org_public_data"
        case shipperProviderConnection = "shipper_provider_connection"
    }
}