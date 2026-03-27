import Foundation

/// Unified SSE data schema for Fern SDK generation. The SSE `event:` frame
/// carries the discriminator (progress | complete | error); only relevant
/// fields are serialized per event type via exclude_none.
public struct OrderBuilderStreamEvent: Codable, Hashable, Sendable {
    public let event: Event
    public let message: String?
    public let orderId: String?
    public let orderShortId: String?
    public let summary: String?
    public let validationPassed: Bool?
    public let validationIssues: [String]?
    public let notes: [String]?
    public let error: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        event: Event,
        message: String? = nil,
        orderId: String? = nil,
        orderShortId: String? = nil,
        summary: String? = nil,
        validationPassed: Bool? = nil,
        validationIssues: [String]? = nil,
        notes: [String]? = nil,
        error: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.event = event
        self.message = message
        self.orderId = orderId
        self.orderShortId = orderShortId
        self.summary = summary
        self.validationPassed = validationPassed
        self.validationIssues = validationIssues
        self.notes = notes
        self.error = error
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.event = try container.decode(Event.self, forKey: .event)
        self.message = try container.decodeIfPresent(String.self, forKey: .message)
        self.orderId = try container.decodeIfPresent(String.self, forKey: .orderId)
        self.orderShortId = try container.decodeIfPresent(String.self, forKey: .orderShortId)
        self.summary = try container.decodeIfPresent(String.self, forKey: .summary)
        self.validationPassed = try container.decodeIfPresent(Bool.self, forKey: .validationPassed)
        self.validationIssues = try container.decodeIfPresent([String].self, forKey: .validationIssues)
        self.notes = try container.decodeIfPresent([String].self, forKey: .notes)
        self.error = try container.decodeIfPresent(String.self, forKey: .error)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.event, forKey: .event)
        try container.encodeIfPresent(self.message, forKey: .message)
        try container.encodeIfPresent(self.orderId, forKey: .orderId)
        try container.encodeIfPresent(self.orderShortId, forKey: .orderShortId)
        try container.encodeIfPresent(self.summary, forKey: .summary)
        try container.encodeIfPresent(self.validationPassed, forKey: .validationPassed)
        try container.encodeIfPresent(self.validationIssues, forKey: .validationIssues)
        try container.encodeIfPresent(self.notes, forKey: .notes)
        try container.encodeIfPresent(self.error, forKey: .error)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case event
        case message
        case orderId = "order_id"
        case orderShortId = "order_short_id"
        case summary
        case validationPassed = "validation_passed"
        case validationIssues = "validation_issues"
        case notes
        case error
    }
}