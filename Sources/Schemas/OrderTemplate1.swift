import Foundation

public struct OrderTemplate1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    public let text: String?
    /// Must be a string starting with `org_`
    public let shipperOrgId: String?
    public let offChrtShipperOrgId: String?
    public let executorOrgIds: [String]?
    public let driverIds: [String]?
    public let directoryEntryIds: [String]?
    /// Must be a string starting with `org_`
    public let coordinatorOrgId: String?
    public let departmentId: String?
    public let name: String
    public let description: String?
    public let offChrtReferenceIdStr: String?
    public let id: String
    /// Must be a string starting with `user_`
    public let ownedByUserId: String
    /// Must be a string starting with `org_`
    public let ownedByOrgId: String
    public let createdAtTimestamp: Date
    public let lastEditedAtTimestamp: Date
    public let archivedAtTimestamp: Date?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        text: String? = nil,
        shipperOrgId: String? = nil,
        offChrtShipperOrgId: String? = nil,
        executorOrgIds: [String]? = nil,
        driverIds: [String]? = nil,
        directoryEntryIds: [String]? = nil,
        coordinatorOrgId: String? = nil,
        departmentId: String? = nil,
        name: String,
        description: String? = nil,
        offChrtReferenceIdStr: String? = nil,
        id: String,
        ownedByUserId: String,
        ownedByOrgId: String,
        createdAtTimestamp: Date,
        lastEditedAtTimestamp: Date,
        archivedAtTimestamp: Date? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.text = text
        self.shipperOrgId = shipperOrgId
        self.offChrtShipperOrgId = offChrtShipperOrgId
        self.executorOrgIds = executorOrgIds
        self.driverIds = driverIds
        self.directoryEntryIds = directoryEntryIds
        self.coordinatorOrgId = coordinatorOrgId
        self.departmentId = departmentId
        self.name = name
        self.description = description
        self.offChrtReferenceIdStr = offChrtReferenceIdStr
        self.id = id
        self.ownedByUserId = ownedByUserId
        self.ownedByOrgId = ownedByOrgId
        self.createdAtTimestamp = createdAtTimestamp
        self.lastEditedAtTimestamp = lastEditedAtTimestamp
        self.archivedAtTimestamp = archivedAtTimestamp
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.text = try container.decodeIfPresent(String.self, forKey: .text)
        self.shipperOrgId = try container.decodeIfPresent(String.self, forKey: .shipperOrgId)
        self.offChrtShipperOrgId = try container.decodeIfPresent(String.self, forKey: .offChrtShipperOrgId)
        self.executorOrgIds = try container.decodeIfPresent([String].self, forKey: .executorOrgIds)
        self.driverIds = try container.decodeIfPresent([String].self, forKey: .driverIds)
        self.directoryEntryIds = try container.decodeIfPresent([String].self, forKey: .directoryEntryIds)
        self.coordinatorOrgId = try container.decodeIfPresent(String.self, forKey: .coordinatorOrgId)
        self.departmentId = try container.decodeIfPresent(String.self, forKey: .departmentId)
        self.name = try container.decode(String.self, forKey: .name)
        self.description = try container.decodeIfPresent(String.self, forKey: .description)
        self.offChrtReferenceIdStr = try container.decodeIfPresent(String.self, forKey: .offChrtReferenceIdStr)
        self.id = try container.decode(String.self, forKey: .id)
        self.ownedByUserId = try container.decode(String.self, forKey: .ownedByUserId)
        self.ownedByOrgId = try container.decode(String.self, forKey: .ownedByOrgId)
        self.createdAtTimestamp = try container.decode(Date.self, forKey: .createdAtTimestamp)
        self.lastEditedAtTimestamp = try container.decode(Date.self, forKey: .lastEditedAtTimestamp)
        self.archivedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .archivedAtTimestamp)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encodeIfPresent(self.text, forKey: .text)
        try container.encodeIfPresent(self.shipperOrgId, forKey: .shipperOrgId)
        try container.encodeIfPresent(self.offChrtShipperOrgId, forKey: .offChrtShipperOrgId)
        try container.encodeIfPresent(self.executorOrgIds, forKey: .executorOrgIds)
        try container.encodeIfPresent(self.driverIds, forKey: .driverIds)
        try container.encodeIfPresent(self.directoryEntryIds, forKey: .directoryEntryIds)
        try container.encodeIfPresent(self.coordinatorOrgId, forKey: .coordinatorOrgId)
        try container.encodeIfPresent(self.departmentId, forKey: .departmentId)
        try container.encode(self.name, forKey: .name)
        try container.encodeIfPresent(self.description, forKey: .description)
        try container.encodeIfPresent(self.offChrtReferenceIdStr, forKey: .offChrtReferenceIdStr)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.ownedByUserId, forKey: .ownedByUserId)
        try container.encode(self.ownedByOrgId, forKey: .ownedByOrgId)
        try container.encode(self.createdAtTimestamp, forKey: .createdAtTimestamp)
        try container.encode(self.lastEditedAtTimestamp, forKey: .lastEditedAtTimestamp)
        try container.encodeIfPresent(self.archivedAtTimestamp, forKey: .archivedAtTimestamp)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion = "schema_version"
        case text
        case shipperOrgId = "shipper_org_id"
        case offChrtShipperOrgId = "off_chrt_shipper_org_id"
        case executorOrgIds = "executor_org_ids"
        case driverIds = "driver_ids"
        case directoryEntryIds = "directory_entry_ids"
        case coordinatorOrgId = "coordinator_org_id"
        case departmentId = "department_id"
        case name
        case description
        case offChrtReferenceIdStr = "off_chrt_reference_id_str"
        case id = "_id"
        case ownedByUserId = "owned_by_user_id"
        case ownedByOrgId = "owned_by_org_id"
        case createdAtTimestamp = "created_at_timestamp"
        case lastEditedAtTimestamp = "last_edited_at_timestamp"
        case archivedAtTimestamp = "archived_at_timestamp"
    }
}