import Foundation

public struct CargoByDeviceSharingSettings1: Codable, Hashable, Sendable {
    public let id: String
    public let cargoId: String
    public let deviceId: String
    /// Must be a string starting with `org_`
    public let lastChangedByOrgId: String?
    /// Must be a string starting with `user_`
    public let lastChangedByUserId: String?
    public let lastChangedTimestamp: Date?
    public let `public`: Bool?
    public let schemaVersion: Int
    public let taskGroupId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        cargoId: String,
        deviceId: String,
        lastChangedByOrgId: String? = nil,
        lastChangedByUserId: String? = nil,
        lastChangedTimestamp: Date? = nil,
        public: Bool? = nil,
        schemaVersion: Int,
        taskGroupId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.cargoId = cargoId
        self.deviceId = deviceId
        self.lastChangedByOrgId = lastChangedByOrgId
        self.lastChangedByUserId = lastChangedByUserId
        self.lastChangedTimestamp = lastChangedTimestamp
        self.public = `public`
        self.schemaVersion = schemaVersion
        self.taskGroupId = taskGroupId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.cargoId = try container.decode(String.self, forKey: .cargoId)
        self.deviceId = try container.decode(String.self, forKey: .deviceId)
        self.lastChangedByOrgId = try container.decodeIfPresent(String.self, forKey: .lastChangedByOrgId)
        self.lastChangedByUserId = try container.decodeIfPresent(String.self, forKey: .lastChangedByUserId)
        self.lastChangedTimestamp = try container.decodeIfPresent(Date.self, forKey: .lastChangedTimestamp)
        self.public = try container.decodeIfPresent(Bool.self, forKey: .public)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.taskGroupId = try container.decode(String.self, forKey: .taskGroupId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.cargoId, forKey: .cargoId)
        try container.encode(self.deviceId, forKey: .deviceId)
        try container.encodeIfPresent(self.lastChangedByOrgId, forKey: .lastChangedByOrgId)
        try container.encodeIfPresent(self.lastChangedByUserId, forKey: .lastChangedByUserId)
        try container.encodeIfPresent(self.lastChangedTimestamp, forKey: .lastChangedTimestamp)
        try container.encodeIfPresent(self.public, forKey: .public)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.taskGroupId, forKey: .taskGroupId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case cargoId = "cargo_id"
        case deviceId = "device_id"
        case lastChangedByOrgId = "last_changed_by_org_id"
        case lastChangedByUserId = "last_changed_by_user_id"
        case lastChangedTimestamp = "last_changed_timestamp"
        case `public`
        case schemaVersion = "schema_version"
        case taskGroupId = "task_group_id"
    }
}