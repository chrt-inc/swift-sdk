import Foundation

public struct Session1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    public let deviceId: String
    public let deviceMacAddress: String
    /// Must be a string starting with `org_`
    public let orgId: String
    public let comments: String?
    public let recording: Bool?
    public let terminated: Bool?
    public let sessionCreatedAtTimestamp: Date
    public let recordingInitiatedAtTimestamp: Date?
    public let `public`: Bool?
    public let flightNumber: String?
    public let faFlightIds: [String]?
    public let offChrtOrderId: String?
    public let id: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        deviceId: String,
        deviceMacAddress: String,
        orgId: String,
        comments: String? = nil,
        recording: Bool? = nil,
        terminated: Bool? = nil,
        sessionCreatedAtTimestamp: Date,
        recordingInitiatedAtTimestamp: Date? = nil,
        public: Bool? = nil,
        flightNumber: String? = nil,
        faFlightIds: [String]? = nil,
        offChrtOrderId: String? = nil,
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
        self.flightNumber = flightNumber
        self.faFlightIds = faFlightIds
        self.offChrtOrderId = offChrtOrderId
        self.id = id
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.deviceId = try container.decode(String.self, forKey: .deviceId)
        self.deviceMacAddress = try container.decode(String.self, forKey: .deviceMacAddress)
        self.orgId = try container.decode(String.self, forKey: .orgId)
        self.comments = try container.decodeIfPresent(String.self, forKey: .comments)
        self.recording = try container.decodeIfPresent(Bool.self, forKey: .recording)
        self.terminated = try container.decodeIfPresent(Bool.self, forKey: .terminated)
        self.sessionCreatedAtTimestamp = try container.decode(Date.self, forKey: .sessionCreatedAtTimestamp)
        self.recordingInitiatedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .recordingInitiatedAtTimestamp)
        self.public = try container.decodeIfPresent(Bool.self, forKey: .public)
        self.flightNumber = try container.decodeIfPresent(String.self, forKey: .flightNumber)
        self.faFlightIds = try container.decodeIfPresent([String].self, forKey: .faFlightIds)
        self.offChrtOrderId = try container.decodeIfPresent(String.self, forKey: .offChrtOrderId)
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
        try container.encodeIfPresent(self.comments, forKey: .comments)
        try container.encodeIfPresent(self.recording, forKey: .recording)
        try container.encodeIfPresent(self.terminated, forKey: .terminated)
        try container.encode(self.sessionCreatedAtTimestamp, forKey: .sessionCreatedAtTimestamp)
        try container.encodeIfPresent(self.recordingInitiatedAtTimestamp, forKey: .recordingInitiatedAtTimestamp)
        try container.encodeIfPresent(self.public, forKey: .public)
        try container.encodeIfPresent(self.flightNumber, forKey: .flightNumber)
        try container.encodeIfPresent(self.faFlightIds, forKey: .faFlightIds)
        try container.encodeIfPresent(self.offChrtOrderId, forKey: .offChrtOrderId)
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
        case flightNumber = "flight_number"
        case faFlightIds = "fa_flight_ids"
        case offChrtOrderId = "off_chrt_order_id"
        case id = "_id"
    }
}