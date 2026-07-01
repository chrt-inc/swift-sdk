import Foundation

/// OOOI-equivalent times. Gate = out/in, runway = off/on.
public struct CiriumOperationalTimes: Codable, Hashable, Sendable {
    public let actualGateArrival: CiriumDate?
    public let actualGateDeparture: CiriumDate?
    public let actualRunwayArrival: CiriumDate?
    public let actualRunwayDeparture: CiriumDate?
    public let estimatedGateArrival: CiriumDate?
    public let estimatedGateDeparture: CiriumDate?
    public let estimatedRunwayArrival: CiriumDate?
    public let estimatedRunwayDeparture: CiriumDate?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        actualGateArrival: CiriumDate? = nil,
        actualGateDeparture: CiriumDate? = nil,
        actualRunwayArrival: CiriumDate? = nil,
        actualRunwayDeparture: CiriumDate? = nil,
        estimatedGateArrival: CiriumDate? = nil,
        estimatedGateDeparture: CiriumDate? = nil,
        estimatedRunwayArrival: CiriumDate? = nil,
        estimatedRunwayDeparture: CiriumDate? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.actualGateArrival = actualGateArrival
        self.actualGateDeparture = actualGateDeparture
        self.actualRunwayArrival = actualRunwayArrival
        self.actualRunwayDeparture = actualRunwayDeparture
        self.estimatedGateArrival = estimatedGateArrival
        self.estimatedGateDeparture = estimatedGateDeparture
        self.estimatedRunwayArrival = estimatedRunwayArrival
        self.estimatedRunwayDeparture = estimatedRunwayDeparture
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.actualGateArrival = try container.decodeIfPresent(CiriumDate.self, forKey: .actualGateArrival)
        self.actualGateDeparture = try container.decodeIfPresent(CiriumDate.self, forKey: .actualGateDeparture)
        self.actualRunwayArrival = try container.decodeIfPresent(CiriumDate.self, forKey: .actualRunwayArrival)
        self.actualRunwayDeparture = try container.decodeIfPresent(CiriumDate.self, forKey: .actualRunwayDeparture)
        self.estimatedGateArrival = try container.decodeIfPresent(CiriumDate.self, forKey: .estimatedGateArrival)
        self.estimatedGateDeparture = try container.decodeIfPresent(CiriumDate.self, forKey: .estimatedGateDeparture)
        self.estimatedRunwayArrival = try container.decodeIfPresent(CiriumDate.self, forKey: .estimatedRunwayArrival)
        self.estimatedRunwayDeparture = try container.decodeIfPresent(CiriumDate.self, forKey: .estimatedRunwayDeparture)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.actualGateArrival, forKey: .actualGateArrival)
        try container.encodeIfPresent(self.actualGateDeparture, forKey: .actualGateDeparture)
        try container.encodeIfPresent(self.actualRunwayArrival, forKey: .actualRunwayArrival)
        try container.encodeIfPresent(self.actualRunwayDeparture, forKey: .actualRunwayDeparture)
        try container.encodeIfPresent(self.estimatedGateArrival, forKey: .estimatedGateArrival)
        try container.encodeIfPresent(self.estimatedGateDeparture, forKey: .estimatedGateDeparture)
        try container.encodeIfPresent(self.estimatedRunwayArrival, forKey: .estimatedRunwayArrival)
        try container.encodeIfPresent(self.estimatedRunwayDeparture, forKey: .estimatedRunwayDeparture)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case actualGateArrival
        case actualGateDeparture
        case actualRunwayArrival
        case actualRunwayDeparture
        case estimatedGateArrival
        case estimatedGateDeparture
        case estimatedRunwayArrival
        case estimatedRunwayDeparture
    }
}