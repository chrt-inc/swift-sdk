import Foundation

/// Task template plus cargo/artifact references within an order manifest.
public struct TaskManifest1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    public let location: LocationFeature?
    public let action: ChrtGroundProviderTaskActionEnum1?
    public let timeWindows: [TimeWindow1]?
    public let orderPlacerComments: String?
    public let directoryEntryIds: [String]?
    public let cargoTemplateIndices: [Int]?
    public let taskArtifactTypes: [TaskArtifactTypeEnum1]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        location: LocationFeature? = nil,
        action: ChrtGroundProviderTaskActionEnum1? = nil,
        timeWindows: [TimeWindow1]? = nil,
        orderPlacerComments: String? = nil,
        directoryEntryIds: [String]? = nil,
        cargoTemplateIndices: [Int]? = nil,
        taskArtifactTypes: [TaskArtifactTypeEnum1]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.location = location
        self.action = action
        self.timeWindows = timeWindows
        self.orderPlacerComments = orderPlacerComments
        self.directoryEntryIds = directoryEntryIds
        self.cargoTemplateIndices = cargoTemplateIndices
        self.taskArtifactTypes = taskArtifactTypes
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.location = try container.decodeIfPresent(LocationFeature.self, forKey: .location)
        self.action = try container.decodeIfPresent(ChrtGroundProviderTaskActionEnum1.self, forKey: .action)
        self.timeWindows = try container.decodeIfPresent([TimeWindow1].self, forKey: .timeWindows)
        self.orderPlacerComments = try container.decodeIfPresent(String.self, forKey: .orderPlacerComments)
        self.directoryEntryIds = try container.decodeIfPresent([String].self, forKey: .directoryEntryIds)
        self.cargoTemplateIndices = try container.decodeIfPresent([Int].self, forKey: .cargoTemplateIndices)
        self.taskArtifactTypes = try container.decodeIfPresent([TaskArtifactTypeEnum1].self, forKey: .taskArtifactTypes)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encodeIfPresent(self.location, forKey: .location)
        try container.encodeIfPresent(self.action, forKey: .action)
        try container.encodeIfPresent(self.timeWindows, forKey: .timeWindows)
        try container.encodeIfPresent(self.orderPlacerComments, forKey: .orderPlacerComments)
        try container.encodeIfPresent(self.directoryEntryIds, forKey: .directoryEntryIds)
        try container.encodeIfPresent(self.cargoTemplateIndices, forKey: .cargoTemplateIndices)
        try container.encodeIfPresent(self.taskArtifactTypes, forKey: .taskArtifactTypes)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion = "schema_version"
        case location
        case action
        case timeWindows = "time_windows"
        case orderPlacerComments = "order_placer_comments"
        case directoryEntryIds = "directory_entry_ids"
        case cargoTemplateIndices = "cargo_template_indices"
        case taskArtifactTypes = "task_artifact_types"
    }
}