import Foundation

public struct OrderBuilderPrecheckRes: Codable, Hashable, Sendable {
    public let valid: Bool
    public let feedback: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        valid: Bool,
        feedback: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.valid = valid
        self.feedback = feedback
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.valid = try container.decode(Bool.self, forKey: .valid)
        self.feedback = try container.decodeIfPresent(String.self, forKey: .feedback)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.valid, forKey: .valid)
        try container.encodeIfPresent(self.feedback, forKey: .feedback)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case valid
        case feedback
    }
}