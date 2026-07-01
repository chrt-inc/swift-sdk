import Foundation

public struct TrackingSharingSettingsRes: Codable, Hashable, Sendable {
    public let sharingSettings: TrackingSharingSettingsResSharingSettings
    public let taskGroupId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        sharingSettings: TrackingSharingSettingsResSharingSettings,
        taskGroupId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.sharingSettings = sharingSettings
        self.taskGroupId = taskGroupId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.sharingSettings = try container.decode(TrackingSharingSettingsResSharingSettings.self, forKey: .sharingSettings)
        self.taskGroupId = try container.decode(String.self, forKey: .taskGroupId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.sharingSettings, forKey: .sharingSettings)
        try container.encode(self.taskGroupId, forKey: .taskGroupId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case sharingSettings = "sharing_settings"
        case taskGroupId = "task_group_id"
    }
}