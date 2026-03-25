import Foundation

public struct OrderDraftValidationResult: Codable, Hashable, Sendable {
    public let isValid: Bool
    public let issues: [OrderDraftValidationIssue]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        isValid: Bool,
        issues: [OrderDraftValidationIssue]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.isValid = isValid
        self.issues = issues
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.isValid = try container.decode(Bool.self, forKey: .isValid)
        self.issues = try container.decodeIfPresent([OrderDraftValidationIssue].self, forKey: .issues)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.isValid, forKey: .isValid)
        try container.encodeIfPresent(self.issues, forKey: .issues)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case isValid = "is_valid"
        case issues
    }
}