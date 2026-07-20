import Foundation

public struct TaskClientUpdate1: Codable, Hashable, Sendable {
    public let action: Action?
    public let contactIds: [String]?
    public let datetimeWindows: [DateTimeWindow1]?
    public let location: LocationFeature?
    public let orderPlacerComments: String?
    public let orderPlacerCommentsSetToNone: Bool?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        action: Action? = nil,
        contactIds: [String]? = nil,
        datetimeWindows: [DateTimeWindow1]? = nil,
        location: LocationFeature? = nil,
        orderPlacerComments: String? = nil,
        orderPlacerCommentsSetToNone: Bool? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.action = action
        self.contactIds = contactIds
        self.datetimeWindows = datetimeWindows
        self.location = location
        self.orderPlacerComments = orderPlacerComments
        self.orderPlacerCommentsSetToNone = orderPlacerCommentsSetToNone
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.action = try container.decodeIfPresent(Action.self, forKey: .action)
        self.contactIds = try container.decodeIfPresent([String].self, forKey: .contactIds)
        self.datetimeWindows = try container.decodeIfPresent([DateTimeWindow1].self, forKey: .datetimeWindows)
        self.location = try container.decodeIfPresent(LocationFeature.self, forKey: .location)
        self.orderPlacerComments = try container.decodeIfPresent(String.self, forKey: .orderPlacerComments)
        self.orderPlacerCommentsSetToNone = try container.decodeIfPresent(Bool.self, forKey: .orderPlacerCommentsSetToNone)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.action, forKey: .action)
        try container.encodeIfPresent(self.contactIds, forKey: .contactIds)
        try container.encodeIfPresent(self.datetimeWindows, forKey: .datetimeWindows)
        try container.encodeIfPresent(self.location, forKey: .location)
        try container.encodeIfPresent(self.orderPlacerComments, forKey: .orderPlacerComments)
        try container.encodeIfPresent(self.orderPlacerCommentsSetToNone, forKey: .orderPlacerCommentsSetToNone)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case action
        case contactIds = "contact_ids"
        case datetimeWindows = "datetime_windows"
        case location
        case orderPlacerComments = "order_placer_comments"
        case orderPlacerCommentsSetToNone = "order_placer_comments__set_to_None"
    }
}