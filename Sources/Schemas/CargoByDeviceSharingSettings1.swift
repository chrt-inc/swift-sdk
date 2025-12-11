import Foundation

public struct CargoByDeviceSharingSettings1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    public let taskGroupId: String
    public let cargoId: String
    public let deviceId: String
    public let `public`: Bool?
    /// Must be a string starting with `user_`
    public let lastChangedByUserId: String?
    /// Must be a string starting with `org_`
    public let lastChangedByOrgId: String?
    public let lastChangedTimestamp: Date?
    public let id: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        taskGroupId: String,
        cargoId: String,
        deviceId: String,
        public: Bool? = nil,
        lastChangedByUserId: String? = nil,
        lastChangedByOrgId: String? = nil,
        lastChangedTimestamp: Date? = nil,
        id: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.taskGroupId = taskGroupId
        self.cargoId = cargoId
        self.deviceId = deviceId
        self.public = `public`
        self.lastChangedByUserId = lastChangedByUserId
        self.lastChangedByOrgId = lastChangedByOrgId
        self.lastChangedTimestamp = lastChangedTimestamp
        self.id = id
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.taskGroupId = try container.decode(String.self, forKey: .taskGroupId)
        self.cargoId = try container.decode(String.self, forKey: .cargoId)
        self.deviceId = try container.decode(String.self, forKey: .deviceId)
        self.public = try container.decodeIfPresent(Bool.self, forKey: .public)
        self.lastChangedByUserId = try container.decodeIfPresent(String.self, forKey: .lastChangedByUserId)
        self.lastChangedByOrgId = try container.decodeIfPresent(String.self, forKey: .lastChangedByOrgId)
        self.lastChangedTimestamp = try container.decodeIfPresent(Date.self, forKey: .lastChangedTimestamp)
        self.id = try container.decode(String.self, forKey: .id)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.taskGroupId, forKey: .taskGroupId)
        try container.encode(self.cargoId, forKey: .cargoId)
        try container.encode(self.deviceId, forKey: .deviceId)
        try container.encodeIfPresent(self.public, forKey: .public)
        try container.encodeIfPresent(self.lastChangedByUserId, forKey: .lastChangedByUserId)
        try container.encodeIfPresent(self.lastChangedByOrgId, forKey: .lastChangedByOrgId)
        try container.encodeIfPresent(self.lastChangedTimestamp, forKey: .lastChangedTimestamp)
        try container.encode(self.id, forKey: .id)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion = "schema_version"
        case taskGroupId = "task_group_id"
        case cargoId = "cargo_id"
        case deviceId = "device_id"
        case `public`
        case lastChangedByUserId = "last_changed_by_user_id"
        case lastChangedByOrgId = "last_changed_by_org_id"
        case lastChangedTimestamp = "last_changed_timestamp"
        case id = "_id"
    }
}