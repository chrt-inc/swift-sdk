import Foundation

public struct ShipperCoordinatorConnection1: Codable, Hashable, Sendable {
    public let id: String
    public let connected: Bool?
    public let coordinatorDefaultDepartmentId: String?
    /// Must be a string starting with `org_`
    public let coordinatorOrgId: String
    public let knownShipper: Bool?
    public let knownShipperLastEditedAtTimestamp: Date?
    /// Must be a string starting with `user_`
    public let knownShipperLastEditedByUserId: String?
    public let offChrtShipperOrgDataId: String?
    public let schemaVersion: Int
    public let shipperCustomerIdForCoordinatorStripeConnectAccount: String?
    /// Must be a string starting with `org_`
    public let shipperOrgId: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        connected: Bool? = nil,
        coordinatorDefaultDepartmentId: String? = nil,
        coordinatorOrgId: String,
        knownShipper: Bool? = nil,
        knownShipperLastEditedAtTimestamp: Date? = nil,
        knownShipperLastEditedByUserId: String? = nil,
        offChrtShipperOrgDataId: String? = nil,
        schemaVersion: Int,
        shipperCustomerIdForCoordinatorStripeConnectAccount: String? = nil,
        shipperOrgId: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.connected = connected
        self.coordinatorDefaultDepartmentId = coordinatorDefaultDepartmentId
        self.coordinatorOrgId = coordinatorOrgId
        self.knownShipper = knownShipper
        self.knownShipperLastEditedAtTimestamp = knownShipperLastEditedAtTimestamp
        self.knownShipperLastEditedByUserId = knownShipperLastEditedByUserId
        self.offChrtShipperOrgDataId = offChrtShipperOrgDataId
        self.schemaVersion = schemaVersion
        self.shipperCustomerIdForCoordinatorStripeConnectAccount = shipperCustomerIdForCoordinatorStripeConnectAccount
        self.shipperOrgId = shipperOrgId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.connected = try container.decodeIfPresent(Bool.self, forKey: .connected)
        self.coordinatorDefaultDepartmentId = try container.decodeIfPresent(String.self, forKey: .coordinatorDefaultDepartmentId)
        self.coordinatorOrgId = try container.decode(String.self, forKey: .coordinatorOrgId)
        self.knownShipper = try container.decodeIfPresent(Bool.self, forKey: .knownShipper)
        self.knownShipperLastEditedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .knownShipperLastEditedAtTimestamp)
        self.knownShipperLastEditedByUserId = try container.decodeIfPresent(String.self, forKey: .knownShipperLastEditedByUserId)
        self.offChrtShipperOrgDataId = try container.decodeIfPresent(String.self, forKey: .offChrtShipperOrgDataId)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.shipperCustomerIdForCoordinatorStripeConnectAccount = try container.decodeIfPresent(String.self, forKey: .shipperCustomerIdForCoordinatorStripeConnectAccount)
        self.shipperOrgId = try container.decodeIfPresent(String.self, forKey: .shipperOrgId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encodeIfPresent(self.connected, forKey: .connected)
        try container.encodeIfPresent(self.coordinatorDefaultDepartmentId, forKey: .coordinatorDefaultDepartmentId)
        try container.encode(self.coordinatorOrgId, forKey: .coordinatorOrgId)
        try container.encodeIfPresent(self.knownShipper, forKey: .knownShipper)
        try container.encodeIfPresent(self.knownShipperLastEditedAtTimestamp, forKey: .knownShipperLastEditedAtTimestamp)
        try container.encodeIfPresent(self.knownShipperLastEditedByUserId, forKey: .knownShipperLastEditedByUserId)
        try container.encodeIfPresent(self.offChrtShipperOrgDataId, forKey: .offChrtShipperOrgDataId)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encodeIfPresent(self.shipperCustomerIdForCoordinatorStripeConnectAccount, forKey: .shipperCustomerIdForCoordinatorStripeConnectAccount)
        try container.encodeIfPresent(self.shipperOrgId, forKey: .shipperOrgId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case connected
        case coordinatorDefaultDepartmentId = "coordinator_default_department_id"
        case coordinatorOrgId = "coordinator_org_id"
        case knownShipper = "known_shipper"
        case knownShipperLastEditedAtTimestamp = "known_shipper_last_edited_at_timestamp"
        case knownShipperLastEditedByUserId = "known_shipper_last_edited_by_user_id"
        case offChrtShipperOrgDataId = "off_chrt_shipper_org_data_id"
        case schemaVersion = "schema_version"
        case shipperCustomerIdForCoordinatorStripeConnectAccount = "shipper_customer_id_for_coordinator_stripe_connect_account"
        case shipperOrgId = "shipper_org_id"
    }
}