import Foundation

public struct FlightConnection: Codable, Hashable, Sendable {
    public let elapsedMinutes: Int?
    public let score: Int?
    public let stops: Int
    public let legs: [FlightConnectionLeg]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        elapsedMinutes: Int? = nil,
        score: Int? = nil,
        stops: Int,
        legs: [FlightConnectionLeg],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.elapsedMinutes = elapsedMinutes
        self.score = score
        self.stops = stops
        self.legs = legs
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.elapsedMinutes = try container.decodeIfPresent(Int.self, forKey: .elapsedMinutes)
        self.score = try container.decodeIfPresent(Int.self, forKey: .score)
        self.stops = try container.decode(Int.self, forKey: .stops)
        self.legs = try container.decode([FlightConnectionLeg].self, forKey: .legs)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.elapsedMinutes, forKey: .elapsedMinutes)
        try container.encodeIfPresent(self.score, forKey: .score)
        try container.encode(self.stops, forKey: .stops)
        try container.encode(self.legs, forKey: .legs)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case elapsedMinutes = "elapsed_minutes"
        case score
        case stops
        case legs
    }
}