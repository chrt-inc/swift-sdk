import Foundation

public struct ValidationIssue: Codable, Hashable, Sendable {
    public let requirementKey: String
    public let scope: ValidationIssueScope?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        requirementKey: String,
        scope: ValidationIssueScope? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.requirementKey = requirementKey
        self.scope = scope
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.requirementKey = try container.decode(String.self, forKey: .requirementKey)
        self.scope = try container.decodeIfPresent(ValidationIssueScope.self, forKey: .scope)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.requirementKey, forKey: .requirementKey)
        try container.encodeIfPresent(self.scope, forKey: .scope)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case requirementKey = "requirement_key"
        case scope
    }
}