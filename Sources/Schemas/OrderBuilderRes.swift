import Foundation

public struct OrderBuilderRes: Codable, Hashable, Sendable {
    public let notes: [String]?
    public let orderId: String?
    public let orderShortId: String?
    public let summary: String
    public let validationIssues: [String]?
    public let validationPassed: Bool?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        notes: [String]? = nil,
        orderId: String? = nil,
        orderShortId: String? = nil,
        summary: String,
        validationIssues: [String]? = nil,
        validationPassed: Bool? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.notes = notes
        self.orderId = orderId
        self.orderShortId = orderShortId
        self.summary = summary
        self.validationIssues = validationIssues
        self.validationPassed = validationPassed
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.notes = try container.decodeIfPresent([String].self, forKey: .notes)
        self.orderId = try container.decodeIfPresent(String.self, forKey: .orderId)
        self.orderShortId = try container.decodeIfPresent(String.self, forKey: .orderShortId)
        self.summary = try container.decode(String.self, forKey: .summary)
        self.validationIssues = try container.decodeIfPresent([String].self, forKey: .validationIssues)
        self.validationPassed = try container.decodeIfPresent(Bool.self, forKey: .validationPassed)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.notes, forKey: .notes)
        try container.encodeIfPresent(self.orderId, forKey: .orderId)
        try container.encodeIfPresent(self.orderShortId, forKey: .orderShortId)
        try container.encode(self.summary, forKey: .summary)
        try container.encodeIfPresent(self.validationIssues, forKey: .validationIssues)
        try container.encodeIfPresent(self.validationPassed, forKey: .validationPassed)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case notes
        case orderId = "order_id"
        case orderShortId = "order_short_id"
        case summary
        case validationIssues = "validation_issues"
        case validationPassed = "validation_passed"
    }
}