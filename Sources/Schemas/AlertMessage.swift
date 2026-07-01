import Foundation

public struct AlertMessage: Codable, Hashable, Sendable {
    public let dateTimeRecorded: Date?
    public let event: AlertEvent?
    public let flightStatus: CiriumFlightStatus?
    public let rule: AlertRuleEnvelope?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        dateTimeRecorded: Date? = nil,
        event: AlertEvent? = nil,
        flightStatus: CiriumFlightStatus? = nil,
        rule: AlertRuleEnvelope? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.dateTimeRecorded = dateTimeRecorded
        self.event = event
        self.flightStatus = flightStatus
        self.rule = rule
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.dateTimeRecorded = try container.decodeIfPresent(Date.self, forKey: .dateTimeRecorded)
        self.event = try container.decodeIfPresent(AlertEvent.self, forKey: .event)
        self.flightStatus = try container.decodeIfPresent(CiriumFlightStatus.self, forKey: .flightStatus)
        self.rule = try container.decodeIfPresent(AlertRuleEnvelope.self, forKey: .rule)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.dateTimeRecorded, forKey: .dateTimeRecorded)
        try container.encodeIfPresent(self.event, forKey: .event)
        try container.encodeIfPresent(self.flightStatus, forKey: .flightStatus)
        try container.encodeIfPresent(self.rule, forKey: .rule)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case dateTimeRecorded
        case event
        case flightStatus
        case rule
    }
}