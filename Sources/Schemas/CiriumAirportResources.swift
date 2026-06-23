import Foundation

public struct CiriumAirportResources: Codable, Hashable, Sendable {
    public let departureTerminal: String?
    public let departureGate: String?
    public let arrivalTerminal: String?
    public let arrivalGate: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        departureTerminal: String? = nil,
        departureGate: String? = nil,
        arrivalTerminal: String? = nil,
        arrivalGate: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.departureTerminal = departureTerminal
        self.departureGate = departureGate
        self.arrivalTerminal = arrivalTerminal
        self.arrivalGate = arrivalGate
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.departureTerminal = try container.decodeIfPresent(String.self, forKey: .departureTerminal)
        self.departureGate = try container.decodeIfPresent(String.self, forKey: .departureGate)
        self.arrivalTerminal = try container.decodeIfPresent(String.self, forKey: .arrivalTerminal)
        self.arrivalGate = try container.decodeIfPresent(String.self, forKey: .arrivalGate)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.departureTerminal, forKey: .departureTerminal)
        try container.encodeIfPresent(self.departureGate, forKey: .departureGate)
        try container.encodeIfPresent(self.arrivalTerminal, forKey: .arrivalTerminal)
        try container.encodeIfPresent(self.arrivalGate, forKey: .arrivalGate)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case departureTerminal
        case departureGate
        case arrivalTerminal
        case arrivalGate
    }
}