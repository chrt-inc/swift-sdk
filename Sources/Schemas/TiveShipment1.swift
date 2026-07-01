import Foundation

public struct TiveShipment1: Codable, Hashable, Sendable {
    public let id: String
    public let chrtCreatedAtTimestamp: Date
    public let chrtUpdatedAtTimestamp: Date
    /// Must be a string starting with `org_`
    public let orgId: String
    public let schemaVersion: Int
    public let tiveDeviceObjectId: String
    public let tivePublicShipmentId: String?
    public let tiveShipmentId: String
    public let tiveShipmentStatus: [String: JSONValue]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        chrtCreatedAtTimestamp: Date,
        chrtUpdatedAtTimestamp: Date,
        orgId: String,
        schemaVersion: Int,
        tiveDeviceObjectId: String,
        tivePublicShipmentId: String? = nil,
        tiveShipmentId: String,
        tiveShipmentStatus: [String: JSONValue]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.chrtCreatedAtTimestamp = chrtCreatedAtTimestamp
        self.chrtUpdatedAtTimestamp = chrtUpdatedAtTimestamp
        self.orgId = orgId
        self.schemaVersion = schemaVersion
        self.tiveDeviceObjectId = tiveDeviceObjectId
        self.tivePublicShipmentId = tivePublicShipmentId
        self.tiveShipmentId = tiveShipmentId
        self.tiveShipmentStatus = tiveShipmentStatus
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.chrtCreatedAtTimestamp = try container.decode(Date.self, forKey: .chrtCreatedAtTimestamp)
        self.chrtUpdatedAtTimestamp = try container.decode(Date.self, forKey: .chrtUpdatedAtTimestamp)
        self.orgId = try container.decode(String.self, forKey: .orgId)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.tiveDeviceObjectId = try container.decode(String.self, forKey: .tiveDeviceObjectId)
        self.tivePublicShipmentId = try container.decodeIfPresent(String.self, forKey: .tivePublicShipmentId)
        self.tiveShipmentId = try container.decode(String.self, forKey: .tiveShipmentId)
        self.tiveShipmentStatus = try container.decodeIfPresent([String: JSONValue].self, forKey: .tiveShipmentStatus)
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
        try container.encode(self.tiveDeviceObjectId, forKey: .tiveDeviceObjectId)
        try container.encodeIfPresent(self.tivePublicShipmentId, forKey: .tivePublicShipmentId)
        try container.encode(self.tiveShipmentId, forKey: .tiveShipmentId)
        try container.encodeIfPresent(self.tiveShipmentStatus, forKey: .tiveShipmentStatus)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case chrtCreatedAtTimestamp = "chrt_created_at_timestamp"
        case chrtUpdatedAtTimestamp = "chrt_updated_at_timestamp"
        case orgId = "org_id"
        case schemaVersion = "schema_version"
        case tiveDeviceObjectId = "tive_device_object_id"
        case tivePublicShipmentId = "tive_public_shipment_id"
        case tiveShipmentId = "tive_shipment_id"
        case tiveShipmentStatus = "tive_shipment_status"
    }
}