import Foundation

public struct CiriumAirportResources: Codable, Hashable, Sendable {
    public let arrivalGate: String?
    public let arrivalTerminal: String?
    public let departureGate: String?
    public let departureTerminal: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        arrivalGate: String? = nil,
        arrivalTerminal: String? = nil,
        departureGate: String? = nil,
        departureTerminal: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.arrivalGate = arrivalGate
        self.arrivalTerminal = arrivalTerminal
        self.departureGate = departureGate
        self.departureTerminal = departureTerminal
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.arrivalGate = try container.decodeIfPresent(String.self, forKey: .arrivalGate)
        self.arrivalTerminal = try container.decodeIfPresent(String.self, forKey: .arrivalTerminal)
        self.departureGate = try container.decodeIfPresent(String.self, forKey: .departureGate)
        self.departureTerminal = try container.decodeIfPresent(String.self, forKey: .departureTerminal)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.arrivalGate, forKey: .arrivalGate)
        try container.encodeIfPresent(self.arrivalTerminal, forKey: .arrivalTerminal)
        try container.encodeIfPresent(self.departureGate, forKey: .departureGate)
        try container.encodeIfPresent(self.departureTerminal, forKey: .departureTerminal)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case arrivalGate
        case arrivalTerminal
        case departureGate
        case departureTerminal
    }
}