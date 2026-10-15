import Foundation

public struct TaskGroupByDriverLastSeenPublicRes: Codable, Hashable, Sendable {
    public let location: LocationFeature?
    public let publicLinkExpiresAtTimestamp: Date?
    public let taskGroupStatus: TaskGroupStatusEnum1
    public let timestamp: Date?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        location: LocationFeature? = nil,
        publicLinkExpiresAtTimestamp: Date? = nil,
        taskGroupStatus: TaskGroupStatusEnum1,
        timestamp: Date? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.location = location
        self.publicLinkExpiresAtTimestamp = publicLinkExpiresAtTimestamp
        self.taskGroupStatus = taskGroupStatus
        self.timestamp = timestamp
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.location = try container.decodeIfPresent(LocationFeature.self, forKey: .location)
        self.publicLinkExpiresAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .publicLinkExpiresAtTimestamp)
        self.taskGroupStatus = try container.decode(TaskGroupStatusEnum1.self, forKey: .taskGroupStatus)
        self.timestamp = try container.decodeIfPresent(Date.self, forKey: .timestamp)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.location, forKey: .location)
        try container.encodeIfPresent(self.publicLinkExpiresAtTimestamp, forKey: .publicLinkExpiresAtTimestamp)
        try container.encode(self.taskGroupStatus, forKey: .taskGroupStatus)
        try container.encodeIfPresent(self.timestamp, forKey: .timestamp)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case location
        case publicLinkExpiresAtTimestamp = "public_link_expires_at_timestamp"
        case taskGroupStatus = "task_group_status"
        case timestamp
    }
}