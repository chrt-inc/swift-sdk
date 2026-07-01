import Foundation

public struct TaskClientUpdate1: Codable, Hashable, Sendable {
    public let action: Action?
    public let datetimeWindows: [DateTimeWindow1]?
    public let directoryEntryIds: [String]?
    public let location: LocationFeature?
    public let orderPlacerComments: String?
    public let orderPlacerCommentsSetToNone: Bool?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        action: Action? = nil,
        datetimeWindows: [DateTimeWindow1]? = nil,
        directoryEntryIds: [String]? = nil,
        location: LocationFeature? = nil,
        orderPlacerComments: String? = nil,
        orderPlacerCommentsSetToNone: Bool? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.action = action
        self.datetimeWindows = datetimeWindows
        self.directoryEntryIds = directoryEntryIds
        self.location = location
        self.orderPlacerComments = orderPlacerComments
        self.orderPlacerCommentsSetToNone = orderPlacerCommentsSetToNone
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.action = try container.decodeIfPresent(Action.self, forKey: .action)
        self.datetimeWindows = try container.decodeIfPresent([DateTimeWindow1].self, forKey: .datetimeWindows)
        self.directoryEntryIds = try container.decodeIfPresent([String].self, forKey: .directoryEntryIds)
        self.location = try container.decodeIfPresent(LocationFeature.self, forKey: .location)
        self.orderPlacerComments = try container.decodeIfPresent(String.self, forKey: .orderPlacerComments)
        self.orderPlacerCommentsSetToNone = try container.decodeIfPresent(Bool.self, forKey: .orderPlacerCommentsSetToNone)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.action, forKey: .action)
        try container.encodeIfPresent(self.datetimeWindows, forKey: .datetimeWindows)
        try container.encodeIfPresent(self.directoryEntryIds, forKey: .directoryEntryIds)
        try container.encodeIfPresent(self.location, forKey: .location)
        try container.encodeIfPresent(self.orderPlacerComments, forKey: .orderPlacerComments)
        try container.encodeIfPresent(self.orderPlacerCommentsSetToNone, forKey: .orderPlacerCommentsSetToNone)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case action
        case datetimeWindows = "datetime_windows"
        case directoryEntryIds = "directory_entry_ids"
        case location
        case orderPlacerComments = "order_placer_comments"
        case orderPlacerCommentsSetToNone = "order_placer_comments__set_to_None"
    }
}