import Foundation

/// OOOI-equivalent times. Gate = out/in, runway = off/on.
public struct CiriumOperationalTimes: Codable, Hashable, Sendable {
    public let estimatedGateDeparture: CiriumDate?
    public let actualGateDeparture: CiriumDate?
    public let estimatedRunwayDeparture: CiriumDate?
    public let actualRunwayDeparture: CiriumDate?
    public let estimatedGateArrival: CiriumDate?
    public let actualGateArrival: CiriumDate?
    public let estimatedRunwayArrival: CiriumDate?
    public let actualRunwayArrival: CiriumDate?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        estimatedGateDeparture: CiriumDate? = nil,
        actualGateDeparture: CiriumDate? = nil,
        estimatedRunwayDeparture: CiriumDate? = nil,
        actualRunwayDeparture: CiriumDate? = nil,
        estimatedGateArrival: CiriumDate? = nil,
        actualGateArrival: CiriumDate? = nil,
        estimatedRunwayArrival: CiriumDate? = nil,
        actualRunwayArrival: CiriumDate? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.estimatedGateDeparture = estimatedGateDeparture
        self.actualGateDeparture = actualGateDeparture
        self.estimatedRunwayDeparture = estimatedRunwayDeparture
        self.actualRunwayDeparture = actualRunwayDeparture
        self.estimatedGateArrival = estimatedGateArrival
        self.actualGateArrival = actualGateArrival
        self.estimatedRunwayArrival = estimatedRunwayArrival
        self.actualRunwayArrival = actualRunwayArrival
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.estimatedGateDeparture = try container.decodeIfPresent(CiriumDate.self, forKey: .estimatedGateDeparture)
        self.actualGateDeparture = try container.decodeIfPresent(CiriumDate.self, forKey: .actualGateDeparture)
        self.estimatedRunwayDeparture = try container.decodeIfPresent(CiriumDate.self, forKey: .estimatedRunwayDeparture)
        self.actualRunwayDeparture = try container.decodeIfPresent(CiriumDate.self, forKey: .actualRunwayDeparture)
        self.estimatedGateArrival = try container.decodeIfPresent(CiriumDate.self, forKey: .estimatedGateArrival)
        self.actualGateArrival = try container.decodeIfPresent(CiriumDate.self, forKey: .actualGateArrival)
        self.estimatedRunwayArrival = try container.decodeIfPresent(CiriumDate.self, forKey: .estimatedRunwayArrival)
        self.actualRunwayArrival = try container.decodeIfPresent(CiriumDate.self, forKey: .actualRunwayArrival)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.estimatedGateDeparture, forKey: .estimatedGateDeparture)
        try container.encodeIfPresent(self.actualGateDeparture, forKey: .actualGateDeparture)
        try container.encodeIfPresent(self.estimatedRunwayDeparture, forKey: .estimatedRunwayDeparture)
        try container.encodeIfPresent(self.actualRunwayDeparture, forKey: .actualRunwayDeparture)
        try container.encodeIfPresent(self.estimatedGateArrival, forKey: .estimatedGateArrival)
        try container.encodeIfPresent(self.actualGateArrival, forKey: .actualGateArrival)
        try container.encodeIfPresent(self.estimatedRunwayArrival, forKey: .estimatedRunwayArrival)
        try container.encodeIfPresent(self.actualRunwayArrival, forKey: .actualRunwayArrival)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case estimatedGateDeparture
        case actualGateDeparture
        case estimatedRunwayDeparture
        case actualRunwayDeparture
        case estimatedGateArrival
        case actualGateArrival
        case estimatedRunwayArrival
        case actualRunwayArrival
    }
}