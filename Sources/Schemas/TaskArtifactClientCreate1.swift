import Foundation

public struct TaskArtifactClientCreate1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    public let type: TaskArtifactTypeEnum1
    public let expectedScanPayloads: [String]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        type: TaskArtifactTypeEnum1,
        expectedScanPayloads: [String]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.type = type
        self.expectedScanPayloads = expectedScanPayloads
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.type = try container.decode(TaskArtifactTypeEnum1.self, forKey: .type)
        self.expectedScanPayloads = try container.decodeIfPresent([String].self, forKey: .expectedScanPayloads)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.type, forKey: .type)
        try container.encodeIfPresent(self.expectedScanPayloads, forKey: .expectedScanPayloads)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion = "schema_version"
        case type
        case expectedScanPayloads = "expected_scan_payloads"
    }
}