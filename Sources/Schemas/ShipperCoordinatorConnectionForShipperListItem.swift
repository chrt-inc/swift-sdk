import Foundation

public struct ShipperCoordinatorConnectionForShipperListItem: Codable, Hashable, Sendable {
    public let coordinatorOrgPublicData: OrgPublicData1?
    public let shipperCoordinatorConnection: ShipperCoordinatorConnection1
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        coordinatorOrgPublicData: OrgPublicData1? = nil,
        shipperCoordinatorConnection: ShipperCoordinatorConnection1,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.coordinatorOrgPublicData = coordinatorOrgPublicData
        self.shipperCoordinatorConnection = shipperCoordinatorConnection
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.coordinatorOrgPublicData = try container.decodeIfPresent(OrgPublicData1.self, forKey: .coordinatorOrgPublicData)
        self.shipperCoordinatorConnection = try container.decode(ShipperCoordinatorConnection1.self, forKey: .shipperCoordinatorConnection)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.coordinatorOrgPublicData, forKey: .coordinatorOrgPublicData)
        try container.encode(self.shipperCoordinatorConnection, forKey: .shipperCoordinatorConnection)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case coordinatorOrgPublicData = "coordinator_org_public_data"
        case shipperCoordinatorConnection = "shipper_coordinator_connection"
    }
}