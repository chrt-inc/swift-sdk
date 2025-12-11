import Foundation

public struct TrackingSharingSettingsRes: Codable, Hashable, Sendable {
    public let taskGroupId: String
    public let sharingSettings: TrackingSharingSettingsResSharingSettings
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        taskGroupId: String,
        sharingSettings: TrackingSharingSettingsResSharingSettings,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.taskGroupId = taskGroupId
        self.sharingSettings = sharingSettings
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.taskGroupId = try container.decode(String.self, forKey: .taskGroupId)
        self.sharingSettings = try container.decode(TrackingSharingSettingsResSharingSettings.self, forKey: .sharingSettings)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.taskGroupId, forKey: .taskGroupId)
        try container.encode(self.sharingSettings, forKey: .sharingSettings)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case taskGroupId = "task_group_id"
        case sharingSettings = "sharing_settings"
    }
}