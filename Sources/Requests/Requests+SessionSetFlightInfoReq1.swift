import Foundation

extension Requests {
    public struct SessionSetFlightInfoReq1: Codable, Hashable, Sendable {
        /// Ordered list of flights to follow for the session. Replaces any existing flight legs. Pass an empty list to clear all flight legs.
        public let flightLegs: [FlightLegClientCreate1]
        public let sessionId: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            flightLegs: [FlightLegClientCreate1],
            sessionId: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.flightLegs = flightLegs
            self.sessionId = sessionId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.flightLegs = try container.decode([FlightLegClientCreate1].self, forKey: .flightLegs)
            self.sessionId = try container.decode(String.self, forKey: .sessionId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.flightLegs, forKey: .flightLegs)
            try container.encode(self.sessionId, forKey: .sessionId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case flightLegs = "flight_legs"
            case sessionId = "session_id"
        }
    }
}