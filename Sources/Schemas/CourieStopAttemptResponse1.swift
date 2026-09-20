import Foundation

public struct CourieStopAttemptResponse1: Codable, Hashable, Sendable {
    public let date: String?
    public let reason: CourieAttemptReasonResponse1?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        date: String? = nil,
        reason: CourieAttemptReasonResponse1? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.date = date
        self.reason = reason
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.date = try container.decodeIfPresent(String.self, forKey: .date)
        self.reason = try container.decodeIfPresent(CourieAttemptReasonResponse1.self, forKey: .reason)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.date, forKey: .date)
        try container.encodeIfPresent(self.reason, forKey: .reason)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case date
        case reason
    }
}