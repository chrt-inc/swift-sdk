import Foundation

public struct ShipperCoordinatorConnectionForCoordinatorListItem: Codable, Hashable, Sendable {
    public let offChrtShipperOrgData: OffChrtOrgData1?
    public let shipperCoordinatorConnection: ShipperCoordinatorConnection1
    public let shipperOrgPublicData: OrgPublicData1?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        offChrtShipperOrgData: OffChrtOrgData1? = nil,
        shipperCoordinatorConnection: ShipperCoordinatorConnection1,
        shipperOrgPublicData: OrgPublicData1? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.offChrtShipperOrgData = offChrtShipperOrgData
        self.shipperCoordinatorConnection = shipperCoordinatorConnection
        self.shipperOrgPublicData = shipperOrgPublicData
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.offChrtShipperOrgData = try container.decodeIfPresent(OffChrtOrgData1.self, forKey: .offChrtShipperOrgData)
        self.shipperCoordinatorConnection = try container.decode(ShipperCoordinatorConnection1.self, forKey: .shipperCoordinatorConnection)
        self.shipperOrgPublicData = try container.decodeIfPresent(OrgPublicData1.self, forKey: .shipperOrgPublicData)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.offChrtShipperOrgData, forKey: .offChrtShipperOrgData)
        try container.encode(self.shipperCoordinatorConnection, forKey: .shipperCoordinatorConnection)
        try container.encodeIfPresent(self.shipperOrgPublicData, forKey: .shipperOrgPublicData)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case offChrtShipperOrgData = "off_chrt_shipper_org_data"
        case shipperCoordinatorConnection = "shipper_coordinator_connection"
        case shipperOrgPublicData = "shipper_org_public_data"
    }
}