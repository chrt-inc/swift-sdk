import Foundation

public struct AuthzUserPermissionRes: Codable, Hashable, Sendable {
    /// Whether a current role grants this catalog permission; resource-specific authorization still applies.
    public let granted: Bool
    public let permission: PermissionEnum1
    public let sources: [SourcesItem]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        granted: Bool,
        permission: PermissionEnum1,
        sources: [SourcesItem],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.granted = granted
        self.permission = permission
        self.sources = sources
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.granted = try container.decode(Bool.self, forKey: .granted)
        self.permission = try container.decode(PermissionEnum1.self, forKey: .permission)
        self.sources = try container.decode([SourcesItem].self, forKey: .sources)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.granted, forKey: .granted)
        try container.encode(self.permission, forKey: .permission)
        try container.encode(self.sources, forKey: .sources)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case granted
        case permission
        case sources
    }
}