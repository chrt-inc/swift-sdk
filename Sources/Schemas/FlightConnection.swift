import Foundation

public struct FlightConnection: Codable, Hashable, Sendable {
    public let elapsedMinutes: Int?
    public let legs: [FlightConnectionLeg]
    public let score: Int?
    public let stops: Int
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        elapsedMinutes: Int? = nil,
        legs: [FlightConnectionLeg],
        score: Int? = nil,
        stops: Int,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.elapsedMinutes = elapsedMinutes
        self.legs = legs
        self.score = score
        self.stops = stops
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.elapsedMinutes = try container.decodeIfPresent(Int.self, forKey: .elapsedMinutes)
        self.legs = try container.decode([FlightConnectionLeg].self, forKey: .legs)
        self.score = try container.decodeIfPresent(Int.self, forKey: .score)
        self.stops = try container.decode(Int.self, forKey: .stops)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.elapsedMinutes, forKey: .elapsedMinutes)
        try container.encode(self.legs, forKey: .legs)
        try container.encodeIfPresent(self.score, forKey: .score)
        try container.encode(self.stops, forKey: .stops)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case elapsedMinutes = "elapsed_minutes"
        case legs
        case score
        case stops
    }
}