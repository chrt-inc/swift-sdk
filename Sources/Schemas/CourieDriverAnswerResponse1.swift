import Foundation

public struct CourieDriverAnswerResponse1: Codable, Hashable, Sendable {
    public let answer: String?
    public let photoUrl: String?
    public let question: String?
    public let type: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        answer: String? = nil,
        photoUrl: String? = nil,
        question: String? = nil,
        type: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.answer = answer
        self.photoUrl = photoUrl
        self.question = question
        self.type = type
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.answer = try container.decodeIfPresent(String.self, forKey: .answer)
        self.photoUrl = try container.decodeIfPresent(String.self, forKey: .photoUrl)
        self.question = try container.decodeIfPresent(String.self, forKey: .question)
        self.type = try container.decodeIfPresent(String.self, forKey: .type)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.answer, forKey: .answer)
        try container.encodeIfPresent(self.photoUrl, forKey: .photoUrl)
        try container.encodeIfPresent(self.question, forKey: .question)
        try container.encodeIfPresent(self.type, forKey: .type)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case answer
        case photoUrl
        case question
        case type
    }
}