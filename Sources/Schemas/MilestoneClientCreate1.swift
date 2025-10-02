import Foundation

public struct MilestoneClientCreate1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    public let type: MilestoneTypeEnum1
    public let requestorComments: Nullable<String>?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        type: MilestoneTypeEnum1,
        requestorComments: Nullable<String>? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.type = type
        self.requestorComments = requestorComments
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.type = try container.decode(MilestoneTypeEnum1.self, forKey: .type)
        self.requestorComments = try container.decodeNullableIfPresent(String.self, forKey: .requestorComments)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.type, forKey: .type)
        try container.encodeNullableIfPresent(self.requestorComments, forKey: .requestorComments)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion = "schema_version"
        case type
        case requestorComments = "requestor_comments"
    }
}