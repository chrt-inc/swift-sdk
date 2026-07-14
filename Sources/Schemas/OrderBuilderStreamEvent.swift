import Foundation

/// Unified SSE schema for Fern SDK generation.
public struct OrderBuilderStreamEvent: Codable, Hashable, Sendable {
    public let error: String?
    public let event: Event
    public let message: String?
    public let notes: [String]?
    public let orderId: String?
    public let orderShortId: String?
    public let progress: Double
    public let summary: String?
    public let validationIssues: [String]?
    public let validationPassed: Bool?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        error: String? = nil,
        event: Event,
        message: String? = nil,
        notes: [String]? = nil,
        orderId: String? = nil,
        orderShortId: String? = nil,
        progress: Double,
        summary: String? = nil,
        validationIssues: [String]? = nil,
        validationPassed: Bool? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.error = error
        self.event = event
        self.message = message
        self.notes = notes
        self.orderId = orderId
        self.orderShortId = orderShortId
        self.progress = progress
        self.summary = summary
        self.validationIssues = validationIssues
        self.validationPassed = validationPassed
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.error = try container.decodeIfPresent(String.self, forKey: .error)
        self.event = try container.decode(Event.self, forKey: .event)
        self.message = try container.decodeIfPresent(String.self, forKey: .message)
        self.notes = try container.decodeIfPresent([String].self, forKey: .notes)
        self.orderId = try container.decodeIfPresent(String.self, forKey: .orderId)
        self.orderShortId = try container.decodeIfPresent(String.self, forKey: .orderShortId)
        self.progress = try container.decode(Double.self, forKey: .progress)
        self.summary = try container.decodeIfPresent(String.self, forKey: .summary)
        self.validationIssues = try container.decodeIfPresent([String].self, forKey: .validationIssues)
        self.validationPassed = try container.decodeIfPresent(Bool.self, forKey: .validationPassed)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.error, forKey: .error)
        try container.encode(self.event, forKey: .event)
        try container.encodeIfPresent(self.message, forKey: .message)
        try container.encodeIfPresent(self.notes, forKey: .notes)
        try container.encodeIfPresent(self.orderId, forKey: .orderId)
        try container.encodeIfPresent(self.orderShortId, forKey: .orderShortId)
        try container.encode(self.progress, forKey: .progress)
        try container.encodeIfPresent(self.summary, forKey: .summary)
        try container.encodeIfPresent(self.validationIssues, forKey: .validationIssues)
        try container.encodeIfPresent(self.validationPassed, forKey: .validationPassed)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case error
        case event
        case message
        case notes
        case orderId = "order_id"
        case orderShortId = "order_short_id"
        case progress
        case summary
        case validationIssues = "validation_issues"
        case validationPassed = "validation_passed"
    }
}