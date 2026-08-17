import Foundation

public struct OnTime360StatusResponse1: Codable, Hashable, Sendable {
    public let description: String?
    public let id: String?
    public let level: OnTime360StatusLevelEnum1?
    public let name: String?
    public let timestamp: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        description: String? = nil,
        id: String? = nil,
        level: OnTime360StatusLevelEnum1? = nil,
        name: String? = nil,
        timestamp: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.description = description
        self.id = id
        self.level = level
        self.name = name
        self.timestamp = timestamp
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.description = try container.decodeIfPresent(String.self, forKey: .description)
        self.id = try container.decodeIfPresent(String.self, forKey: .id)
        self.level = try container.decodeIfPresent(OnTime360StatusLevelEnum1.self, forKey: .level)
        self.name = try container.decodeIfPresent(String.self, forKey: .name)
        self.timestamp = try container.decodeIfPresent(String.self, forKey: .timestamp)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.description, forKey: .description)
        try container.encodeIfPresent(self.id, forKey: .id)
        try container.encodeIfPresent(self.level, forKey: .level)
        try container.encodeIfPresent(self.name, forKey: .name)
        try container.encodeIfPresent(self.timestamp, forKey: .timestamp)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case description = "Description"
        case id = "ID"
        case level = "Level"
        case name = "Name"
        case timestamp = "Timestamp"
    }
}