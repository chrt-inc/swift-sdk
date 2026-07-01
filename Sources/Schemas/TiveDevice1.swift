import Foundation

public struct TiveDevice1: Codable, Hashable, Sendable {
    public let id: String
    public let chrtCreatedAtTimestamp: Date
    public let chrtUpdatedAtTimestamp: Date
    /// Must be a string starting with `org_`
    public let orgId: String
    public let schemaVersion: Int
    public let tiveAccountId: Int
    public let tiveAccountName: String
    public let tiveCurrentPublicShipmentId: String?
    public let tiveCurrentShipmentId: String?
    public let tiveDeviceId: String
    public let tiveDeviceName: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        chrtCreatedAtTimestamp: Date,
        chrtUpdatedAtTimestamp: Date,
        orgId: String,
        schemaVersion: Int,
        tiveAccountId: Int,
        tiveAccountName: String,
        tiveCurrentPublicShipmentId: String? = nil,
        tiveCurrentShipmentId: String? = nil,
        tiveDeviceId: String,
        tiveDeviceName: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.chrtCreatedAtTimestamp = chrtCreatedAtTimestamp
        self.chrtUpdatedAtTimestamp = chrtUpdatedAtTimestamp
        self.orgId = orgId
        self.schemaVersion = schemaVersion
        self.tiveAccountId = tiveAccountId
        self.tiveAccountName = tiveAccountName
        self.tiveCurrentPublicShipmentId = tiveCurrentPublicShipmentId
        self.tiveCurrentShipmentId = tiveCurrentShipmentId
        self.tiveDeviceId = tiveDeviceId
        self.tiveDeviceName = tiveDeviceName
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.chrtCreatedAtTimestamp = try container.decode(Date.self, forKey: .chrtCreatedAtTimestamp)
        self.chrtUpdatedAtTimestamp = try container.decode(Date.self, forKey: .chrtUpdatedAtTimestamp)
        self.orgId = try container.decode(String.self, forKey: .orgId)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.tiveAccountId = try container.decode(Int.self, forKey: .tiveAccountId)
        self.tiveAccountName = try container.decode(String.self, forKey: .tiveAccountName)
        self.tiveCurrentPublicShipmentId = try container.decodeIfPresent(String.self, forKey: .tiveCurrentPublicShipmentId)
        self.tiveCurrentShipmentId = try container.decodeIfPresent(String.self, forKey: .tiveCurrentShipmentId)
        self.tiveDeviceId = try container.decode(String.self, forKey: .tiveDeviceId)
        self.tiveDeviceName = try container.decode(String.self, forKey: .tiveDeviceName)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.chrtCreatedAtTimestamp, forKey: .chrtCreatedAtTimestamp)
        try container.encode(self.chrtUpdatedAtTimestamp, forKey: .chrtUpdatedAtTimestamp)
        try container.encode(self.orgId, forKey: .orgId)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.tiveAccountId, forKey: .tiveAccountId)
        try container.encode(self.tiveAccountName, forKey: .tiveAccountName)
        try container.encodeIfPresent(self.tiveCurrentPublicShipmentId, forKey: .tiveCurrentPublicShipmentId)
        try container.encodeIfPresent(self.tiveCurrentShipmentId, forKey: .tiveCurrentShipmentId)
        try container.encode(self.tiveDeviceId, forKey: .tiveDeviceId)
        try container.encode(self.tiveDeviceName, forKey: .tiveDeviceName)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case chrtCreatedAtTimestamp = "chrt_created_at_timestamp"
        case chrtUpdatedAtTimestamp = "chrt_updated_at_timestamp"
        case orgId = "org_id"
        case schemaVersion = "schema_version"
        case tiveAccountId = "tive_account_id"
        case tiveAccountName = "tive_account_name"
        case tiveCurrentPublicShipmentId = "tive_current_public_shipment_id"
        case tiveCurrentShipmentId = "tive_current_shipment_id"
        case tiveDeviceId = "tive_device_id"
        case tiveDeviceName = "tive_device_name"
    }
}