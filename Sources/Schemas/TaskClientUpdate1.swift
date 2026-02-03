import Foundation

public struct TaskClientUpdate1: Codable, Hashable, Sendable {
    public let location: LocationFeature?
    public let action: Action?
    public let timeWindows: [TimeWindow1]?
    public let directoryEntryIds: [String]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        location: LocationFeature? = nil,
        action: Action? = nil,
        timeWindows: [TimeWindow1]? = nil,
        directoryEntryIds: [String]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.location = location
        self.action = action
        self.timeWindows = timeWindows
        self.directoryEntryIds = directoryEntryIds
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.location = try container.decodeIfPresent(LocationFeature.self, forKey: .location)
        self.action = try container.decodeIfPresent(Action.self, forKey: .action)
        self.timeWindows = try container.decodeIfPresent([TimeWindow1].self, forKey: .timeWindows)
        self.directoryEntryIds = try container.decodeIfPresent([String].self, forKey: .directoryEntryIds)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.location, forKey: .location)
        try container.encodeIfPresent(self.action, forKey: .action)
        try container.encodeIfPresent(self.timeWindows, forKey: .timeWindows)
        try container.encodeIfPresent(self.directoryEntryIds, forKey: .directoryEntryIds)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case location
        case action
        case timeWindows = "time_windows"
        case directoryEntryIds = "directory_entry_ids"
    }
}