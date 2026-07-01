import Foundation

/// Task template within an order manifest.
/// 
/// Inherits the shared task core (TaskCore1) so the physical fields cannot drift
/// from the real task, and adds the template-only fields: relative time windows
/// (resolved against the fire time at build), positional task->cargo references,
/// and the artifact types to create for the task.
public struct TaskManifest1: Codable, Hashable, Sendable {
    public let action: Action?
    public let cargoManifestIndices: [Int]?
    public let directoryEntryIds: [String]?
    public let geofenceDistanceMiles: Double?
    public let location: LocationFeature?
    public let orderPlacerComments: String?
    public let schemaVersion: Int
    public let taskArtifactTypes: [TaskArtifactTypeEnum1]?
    public let timeWindows: [TimeWindow1]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        action: Action? = nil,
        cargoManifestIndices: [Int]? = nil,
        directoryEntryIds: [String]? = nil,
        geofenceDistanceMiles: Double? = nil,
        location: LocationFeature? = nil,
        orderPlacerComments: String? = nil,
        schemaVersion: Int,
        taskArtifactTypes: [TaskArtifactTypeEnum1]? = nil,
        timeWindows: [TimeWindow1]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.action = action
        self.cargoManifestIndices = cargoManifestIndices
        self.directoryEntryIds = directoryEntryIds
        self.geofenceDistanceMiles = geofenceDistanceMiles
        self.location = location
        self.orderPlacerComments = orderPlacerComments
        self.schemaVersion = schemaVersion
        self.taskArtifactTypes = taskArtifactTypes
        self.timeWindows = timeWindows
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.action = try container.decodeIfPresent(Action.self, forKey: .action)
        self.cargoManifestIndices = try container.decodeIfPresent([Int].self, forKey: .cargoManifestIndices)
        self.directoryEntryIds = try container.decodeIfPresent([String].self, forKey: .directoryEntryIds)
        self.geofenceDistanceMiles = try container.decodeIfPresent(Double.self, forKey: .geofenceDistanceMiles)
        self.location = try container.decodeIfPresent(LocationFeature.self, forKey: .location)
        self.orderPlacerComments = try container.decodeIfPresent(String.self, forKey: .orderPlacerComments)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.taskArtifactTypes = try container.decodeIfPresent([TaskArtifactTypeEnum1].self, forKey: .taskArtifactTypes)
        self.timeWindows = try container.decodeIfPresent([TimeWindow1].self, forKey: .timeWindows)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.action, forKey: .action)
        try container.encodeIfPresent(self.cargoManifestIndices, forKey: .cargoManifestIndices)
        try container.encodeIfPresent(self.directoryEntryIds, forKey: .directoryEntryIds)
        try container.encodeIfPresent(self.geofenceDistanceMiles, forKey: .geofenceDistanceMiles)
        try container.encodeIfPresent(self.location, forKey: .location)
        try container.encodeIfPresent(self.orderPlacerComments, forKey: .orderPlacerComments)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encodeIfPresent(self.taskArtifactTypes, forKey: .taskArtifactTypes)
        try container.encodeIfPresent(self.timeWindows, forKey: .timeWindows)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case action
        case cargoManifestIndices = "cargo_manifest_indices"
        case directoryEntryIds = "directory_entry_ids"
        case geofenceDistanceMiles = "geofence_distance_miles"
        case location
        case orderPlacerComments = "order_placer_comments"
        case schemaVersion = "schema_version"
        case taskArtifactTypes = "task_artifact_types"
        case timeWindows = "time_windows"
    }
}