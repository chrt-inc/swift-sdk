import Foundation

public struct AlertMessage: Codable, Hashable, Sendable {
    public let rule: AlertRuleEnvelope?
    public let event: AlertEvent?
    public let dateTimeRecorded: Date?
    public let flightStatus: CiriumFlightStatus?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        rule: AlertRuleEnvelope? = nil,
        event: AlertEvent? = nil,
        dateTimeRecorded: Date? = nil,
        flightStatus: CiriumFlightStatus? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.rule = rule
        self.event = event
        self.dateTimeRecorded = dateTimeRecorded
        self.flightStatus = flightStatus
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.rule = try container.decodeIfPresent(AlertRuleEnvelope.self, forKey: .rule)
        self.event = try container.decodeIfPresent(AlertEvent.self, forKey: .event)
        self.dateTimeRecorded = try container.decodeIfPresent(Date.self, forKey: .dateTimeRecorded)
        self.flightStatus = try container.decodeIfPresent(CiriumFlightStatus.self, forKey: .flightStatus)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.rule, forKey: .rule)
        try container.encodeIfPresent(self.event, forKey: .event)
        try container.encodeIfPresent(self.dateTimeRecorded, forKey: .dateTimeRecorded)
        try container.encodeIfPresent(self.flightStatus, forKey: .flightStatus)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case rule
        case event
        case dateTimeRecorded
        case flightStatus
    }
}