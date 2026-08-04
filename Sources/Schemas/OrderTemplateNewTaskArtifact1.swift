import Foundation

public struct OrderTemplateNewTaskArtifact1: Codable, Hashable, Sendable {
    public let expectedScanPayloads: [String]?
    public let schemaVersion: Int?
    public let taskArtifactKey: String
    public let type: TaskArtifactTypeEnum1
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        expectedScanPayloads: [String]? = nil,
        schemaVersion: Int? = nil,
        taskArtifactKey: String,
        type: TaskArtifactTypeEnum1,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.expectedScanPayloads = expectedScanPayloads
        self.schemaVersion = schemaVersion
        self.taskArtifactKey = taskArtifactKey
        self.type = type
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.expectedScanPayloads = try container.decodeIfPresent([String].self, forKey: .expectedScanPayloads)
        self.schemaVersion = try container.decodeIfPresent(Int.self, forKey: .schemaVersion)
        self.taskArtifactKey = try container.decode(String.self, forKey: .taskArtifactKey)
        self.type = try container.decode(TaskArtifactTypeEnum1.self, forKey: .type)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.expectedScanPayloads, forKey: .expectedScanPayloads)
        try container.encodeIfPresent(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.taskArtifactKey, forKey: .taskArtifactKey)
        try container.encode(self.type, forKey: .type)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case expectedScanPayloads = "expected_scan_payloads"
        case schemaVersion = "schema_version"
        case taskArtifactKey = "task_artifact_key"
        case type
    }
}