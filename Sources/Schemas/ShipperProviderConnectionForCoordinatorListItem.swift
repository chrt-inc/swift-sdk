import Foundation

public struct ShipperProviderConnectionForCoordinatorListItem: Codable, Hashable, Sendable {
    public let offChrtShipperOrgData: OffChrtOrgData1?
    public let shipperOrgPublicData: OrgPublicData1?
    public let shipperProviderConnection: ShipperProviderConnection1
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        offChrtShipperOrgData: OffChrtOrgData1? = nil,
        shipperOrgPublicData: OrgPublicData1? = nil,
        shipperProviderConnection: ShipperProviderConnection1,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.offChrtShipperOrgData = offChrtShipperOrgData
        self.shipperOrgPublicData = shipperOrgPublicData
        self.shipperProviderConnection = shipperProviderConnection
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.offChrtShipperOrgData = try container.decodeIfPresent(OffChrtOrgData1.self, forKey: .offChrtShipperOrgData)
        self.shipperOrgPublicData = try container.decodeIfPresent(OrgPublicData1.self, forKey: .shipperOrgPublicData)
        self.shipperProviderConnection = try container.decode(ShipperProviderConnection1.self, forKey: .shipperProviderConnection)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.offChrtShipperOrgData, forKey: .offChrtShipperOrgData)
        try container.encodeIfPresent(self.shipperOrgPublicData, forKey: .shipperOrgPublicData)
        try container.encode(self.shipperProviderConnection, forKey: .shipperProviderConnection)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case offChrtShipperOrgData = "off_chrt_shipper_org_data"
        case shipperOrgPublicData = "shipper_org_public_data"
        case shipperProviderConnection = "shipper_provider_connection"
    }
}