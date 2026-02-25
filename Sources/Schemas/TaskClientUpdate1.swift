import Foundation

public struct TaskClientUpdate1: Codable, Hashable, Sendable {
    public let action: Action?
    public let directoryEntryIds: [String]?
    public let location: LocationFeature?
    public let timeWindows: [TimeWindow1]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        action: Action? = nil,
        directoryEntryIds: [String]? = nil,
        location: LocationFeature? = nil,
        timeWindows: [TimeWindow1]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.action = action
        self.directoryEntryIds = directoryEntryIds
        self.location = location
        self.timeWindows = timeWindows
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.action = try container.decodeIfPresent(Action.self, forKey: .action)
        self.directoryEntryIds = try container.decodeIfPresent([String].self, forKey: .directoryEntryIds)
        self.location = try container.decodeIfPresent(LocationFeature.self, forKey: .location)
        self.timeWindows = try container.decodeIfPresent([TimeWindow1].self, forKey: .timeWindows)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.action, forKey: .action)
        try container.encodeIfPresent(self.directoryEntryIds, forKey: .directoryEntryIds)
        try container.encodeIfPresent(self.location, forKey: .location)
        try container.encodeIfPresent(self.timeWindows, forKey: .timeWindows)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case action
        case directoryEntryIds = "directory_entry_ids"
        case location
        case timeWindows = "time_windows"
    }
}