import Foundation

public struct OrderBuilderRes: Codable, Hashable, Sendable {
    public let orderId: String
    public let orderShortId: String
    public let summary: String
    public let validationPassed: Bool?
    public let validationIssues: [String]?
    public let notes: [String]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        orderId: String,
        orderShortId: String,
        summary: String,
        validationPassed: Bool? = nil,
        validationIssues: [String]? = nil,
        notes: [String]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.orderId = orderId
        self.orderShortId = orderShortId
        self.summary = summary
        self.validationPassed = validationPassed
        self.validationIssues = validationIssues
        self.notes = notes
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.orderId = try container.decode(String.self, forKey: .orderId)
        self.orderShortId = try container.decode(String.self, forKey: .orderShortId)
        self.summary = try container.decode(String.self, forKey: .summary)
        self.validationPassed = try container.decodeIfPresent(Bool.self, forKey: .validationPassed)
        self.validationIssues = try container.decodeIfPresent([String].self, forKey: .validationIssues)
        self.notes = try container.decodeIfPresent([String].self, forKey: .notes)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.orderId, forKey: .orderId)
        try container.encode(self.orderShortId, forKey: .orderShortId)
        try container.encode(self.summary, forKey: .summary)
        try container.encodeIfPresent(self.validationPassed, forKey: .validationPassed)
        try container.encodeIfPresent(self.validationIssues, forKey: .validationIssues)
        try container.encodeIfPresent(self.notes, forKey: .notes)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case orderId = "order_id"
        case orderShortId = "order_short_id"
        case summary
        case validationPassed = "validation_passed"
        case validationIssues = "validation_issues"
        case notes
    }
}