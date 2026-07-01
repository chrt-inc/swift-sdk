import Foundation

public struct TaskClientCreate1: Codable, Hashable, Sendable {
    public let action: Action?
    public let datetimeWindows: [DateTimeWindow1]?
    public let directoryEntryIds: [String]?
    public let geofenceDistanceMiles: Double?
    public let location: LocationFeature?
    public let orderPlacerComments: String?
    public let schemaVersion: Int
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        action: Action? = nil,
        datetimeWindows: [DateTimeWindow1]? = nil,
        directoryEntryIds: [String]? = nil,
        geofenceDistanceMiles: Double? = nil,
        location: LocationFeature? = nil,
        orderPlacerComments: String? = nil,
        schemaVersion: Int,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.action = action
        self.datetimeWindows = datetimeWindows
        self.directoryEntryIds = directoryEntryIds
        self.geofenceDistanceMiles = geofenceDistanceMiles
        self.location = location
        self.orderPlacerComments = orderPlacerComments
        self.schemaVersion = schemaVersion
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.action = try container.decodeIfPresent(Action.self, forKey: .action)
        self.datetimeWindows = try container.decodeIfPresent([DateTimeWindow1].self, forKey: .datetimeWindows)
        self.directoryEntryIds = try container.decodeIfPresent([String].self, forKey: .directoryEntryIds)
        self.geofenceDistanceMiles = try container.decodeIfPresent(Double.self, forKey: .geofenceDistanceMiles)
        self.location = try container.decodeIfPresent(LocationFeature.self, forKey: .location)
        self.orderPlacerComments = try container.decodeIfPresent(String.self, forKey: .orderPlacerComments)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.action, forKey: .action)
        try container.encodeIfPresent(self.datetimeWindows, forKey: .datetimeWindows)
        try container.encodeIfPresent(self.directoryEntryIds, forKey: .directoryEntryIds)
        try container.encodeIfPresent(self.geofenceDistanceMiles, forKey: .geofenceDistanceMiles)
        try container.encodeIfPresent(self.location, forKey: .location)
        try container.encodeIfPresent(self.orderPlacerComments, forKey: .orderPlacerComments)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case action
        case datetimeWindows = "datetime_windows"
        case directoryEntryIds = "directory_entry_ids"
        case geofenceDistanceMiles = "geofence_distance_miles"
        case location
        case orderPlacerComments = "order_placer_comments"
        case schemaVersion = "schema_version"
    }
}