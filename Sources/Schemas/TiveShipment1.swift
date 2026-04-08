import Foundation

public struct TiveShipment1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    public let id: String
    /// Must be a string starting with `org_`
    public let orgId: String
    public let tiveDeviceObjectId: String
    public let tiveShipmentId: String
    public let tivePublicShipmentId: String?
    public let tiveShipmentStatus: [String: JSONValue]?
    public let chrtCreatedAtTimestamp: Date
    public let chrtUpdatedAtTimestamp: Date
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        id: String,
        orgId: String,
        tiveDeviceObjectId: String,
        tiveShipmentId: String,
        tivePublicShipmentId: String? = nil,
        tiveShipmentStatus: [String: JSONValue]? = nil,
        chrtCreatedAtTimestamp: Date,
        chrtUpdatedAtTimestamp: Date,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.id = id
        self.orgId = orgId
        self.tiveDeviceObjectId = tiveDeviceObjectId
        self.tiveShipmentId = tiveShipmentId
        self.tivePublicShipmentId = tivePublicShipmentId
        self.tiveShipmentStatus = tiveShipmentStatus
        self.chrtCreatedAtTimestamp = chrtCreatedAtTimestamp
        self.chrtUpdatedAtTimestamp = chrtUpdatedAtTimestamp
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.id = try container.decode(String.self, forKey: .id)
        self.orgId = try container.decode(String.self, forKey: .orgId)
        self.tiveDeviceObjectId = try container.decode(String.self, forKey: .tiveDeviceObjectId)
        self.tiveShipmentId = try container.decode(String.self, forKey: .tiveShipmentId)
        self.tivePublicShipmentId = try container.decodeIfPresent(String.self, forKey: .tivePublicShipmentId)
        self.tiveShipmentStatus = try container.decodeIfPresent([String: JSONValue].self, forKey: .tiveShipmentStatus)
        self.chrtCreatedAtTimestamp = try container.decode(Date.self, forKey: .chrtCreatedAtTimestamp)
        self.chrtUpdatedAtTimestamp = try container.decode(Date.self, forKey: .chrtUpdatedAtTimestamp)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.orgId, forKey: .orgId)
        try container.encode(self.tiveDeviceObjectId, forKey: .tiveDeviceObjectId)
        try container.encode(self.tiveShipmentId, forKey: .tiveShipmentId)
        try container.encodeIfPresent(self.tivePublicShipmentId, forKey: .tivePublicShipmentId)
        try container.encodeIfPresent(self.tiveShipmentStatus, forKey: .tiveShipmentStatus)
        try container.encode(self.chrtCreatedAtTimestamp, forKey: .chrtCreatedAtTimestamp)
        try container.encode(self.chrtUpdatedAtTimestamp, forKey: .chrtUpdatedAtTimestamp)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion = "schema_version"
        case id = "_id"
        case orgId = "org_id"
        case tiveDeviceObjectId = "tive_device_object_id"
        case tiveShipmentId = "tive_shipment_id"
        case tivePublicShipmentId = "tive_public_shipment_id"
        case tiveShipmentStatus = "tive_shipment_status"
        case chrtCreatedAtTimestamp = "chrt_created_at_timestamp"
        case chrtUpdatedAtTimestamp = "chrt_updated_at_timestamp"
    }
}