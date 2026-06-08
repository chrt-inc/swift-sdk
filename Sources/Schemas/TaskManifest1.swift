import Foundation

/// Task template within an order manifest.
/// 
/// Inherits the shared task core (TaskCore1) so the physical fields cannot drift
/// from the real task, and adds the template-only fields: relative time windows
/// (resolved against the fire time at build), positional task->cargo references,
/// and the artifact types to create for the task.
public struct TaskManifest1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    public let location: LocationFeature?
    public let geofenceDistanceMiles: Double?
    public let action: Action?
    public let orderPlacerComments: String?
    public let directoryEntryIds: [String]?
    public let timeWindows: [TimeWindow1]?
    public let cargoManifestIndices: [Int]?
    public let taskArtifactTypes: [TaskArtifactTypeEnum1]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        location: LocationFeature? = nil,
        geofenceDistanceMiles: Double? = nil,
        action: Action? = nil,
        orderPlacerComments: String? = nil,
        directoryEntryIds: [String]? = nil,
        timeWindows: [TimeWindow1]? = nil,
        cargoManifestIndices: [Int]? = nil,
        taskArtifactTypes: [TaskArtifactTypeEnum1]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.location = location
        self.geofenceDistanceMiles = geofenceDistanceMiles
        self.action = action
        self.orderPlacerComments = orderPlacerComments
        self.directoryEntryIds = directoryEntryIds
        self.timeWindows = timeWindows
        self.cargoManifestIndices = cargoManifestIndices
        self.taskArtifactTypes = taskArtifactTypes
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.location = try container.decodeIfPresent(LocationFeature.self, forKey: .location)
        self.geofenceDistanceMiles = try container.decodeIfPresent(Double.self, forKey: .geofenceDistanceMiles)
        self.action = try container.decodeIfPresent(Action.self, forKey: .action)
        self.orderPlacerComments = try container.decodeIfPresent(String.self, forKey: .orderPlacerComments)
        self.directoryEntryIds = try container.decodeIfPresent([String].self, forKey: .directoryEntryIds)
        self.timeWindows = try container.decodeIfPresent([TimeWindow1].self, forKey: .timeWindows)
        self.cargoManifestIndices = try container.decodeIfPresent([Int].self, forKey: .cargoManifestIndices)
        self.taskArtifactTypes = try container.decodeIfPresent([TaskArtifactTypeEnum1].self, forKey: .taskArtifactTypes)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encodeIfPresent(self.location, forKey: .location)
        try container.encodeIfPresent(self.geofenceDistanceMiles, forKey: .geofenceDistanceMiles)
        try container.encodeIfPresent(self.action, forKey: .action)
        try container.encodeIfPresent(self.orderPlacerComments, forKey: .orderPlacerComments)
        try container.encodeIfPresent(self.directoryEntryIds, forKey: .directoryEntryIds)
        try container.encodeIfPresent(self.timeWindows, forKey: .timeWindows)
        try container.encodeIfPresent(self.cargoManifestIndices, forKey: .cargoManifestIndices)
        try container.encodeIfPresent(self.taskArtifactTypes, forKey: .taskArtifactTypes)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion = "schema_version"
        case location
        case geofenceDistanceMiles = "geofence_distance_miles"
        case action
        case orderPlacerComments = "order_placer_comments"
        case directoryEntryIds = "directory_entry_ids"
        case timeWindows = "time_windows"
        case cargoManifestIndices = "cargo_manifest_indices"
        case taskArtifactTypes = "task_artifact_types"
    }
}