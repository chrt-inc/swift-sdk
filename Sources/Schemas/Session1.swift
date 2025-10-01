import Foundation

public struct Session1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    public let deviceId: String
    public let deviceMacAddress: String
    /// Must be a string starting with `org_`
    public let orgId: String
    public let comments: Nullable<String>?
    public let recording: Bool?
    public let terminated: Bool?
    public let sessionCreatedAtTimestamp: Date
    public let recordingInitiatedAtTimestamp: Nullable<Date>?
    public let `public`: Bool?
    public let id: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        deviceId: String,
        deviceMacAddress: String,
        orgId: String,
        comments: Nullable<String>? = nil,
        recording: Bool? = nil,
        terminated: Bool? = nil,
        sessionCreatedAtTimestamp: Date,
        recordingInitiatedAtTimestamp: Nullable<Date>? = nil,
        public: Bool? = nil,
        id: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.deviceId = deviceId
        self.deviceMacAddress = deviceMacAddress
        self.orgId = orgId
        self.comments = comments
        self.recording = recording
        self.terminated = terminated
        self.sessionCreatedAtTimestamp = sessionCreatedAtTimestamp
        self.recordingInitiatedAtTimestamp = recordingInitiatedAtTimestamp
        self.public = `public`
        self.id = id
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.deviceId = try container.decode(String.self, forKey: .deviceId)
        self.deviceMacAddress = try container.decode(String.self, forKey: .deviceMacAddress)
        self.orgId = try container.decode(String.self, forKey: .orgId)
        self.comments = try container.decodeNullableIfPresent(String.self, forKey: .comments)
        self.recording = try container.decodeIfPresent(Bool.self, forKey: .recording)
        self.terminated = try container.decodeIfPresent(Bool.self, forKey: .terminated)
        self.sessionCreatedAtTimestamp = try container.decode(Date.self, forKey: .sessionCreatedAtTimestamp)
        self.recordingInitiatedAtTimestamp = try container.decodeNullableIfPresent(Date.self, forKey: .recordingInitiatedAtTimestamp)
        self.public = try container.decodeIfPresent(Bool.self, forKey: .public)
        self.id = try container.decode(String.self, forKey: .id)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.deviceId, forKey: .deviceId)
        try container.encode(self.deviceMacAddress, forKey: .deviceMacAddress)
        try container.encode(self.orgId, forKey: .orgId)
        try container.encodeNullableIfPresent(self.comments, forKey: .comments)
        try container.encodeIfPresent(self.recording, forKey: .recording)
        try container.encodeIfPresent(self.terminated, forKey: .terminated)
        try container.encode(self.sessionCreatedAtTimestamp, forKey: .sessionCreatedAtTimestamp)
        try container.encodeNullableIfPresent(self.recordingInitiatedAtTimestamp, forKey: .recordingInitiatedAtTimestamp)
        try container.encodeIfPresent(self.public, forKey: .public)
        try container.encode(self.id, forKey: .id)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion = "schema_version"
        case deviceId = "device_id"
        case deviceMacAddress = "device_mac_address"
        case orgId = "org_id"
        case comments
        case recording
        case terminated
        case sessionCreatedAtTimestamp = "session_created_at_timestamp"
        case recordingInitiatedAtTimestamp = "recording_initiated_at_timestamp"
        case `public`
        case id = "_id"
    }
}