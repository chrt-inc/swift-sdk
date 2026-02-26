import Foundation

extension Requests {
    public struct SessionAddFlightReq1: Codable, Hashable, Sendable {
        public let sessionId: String
        public let flightNumber: String
        public let faFlightIds: [String]
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            sessionId: String,
            flightNumber: String,
            faFlightIds: [String],
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.sessionId = sessionId
            self.flightNumber = flightNumber
            self.faFlightIds = faFlightIds
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.sessionId = try container.decode(String.self, forKey: .sessionId)
            self.flightNumber = try container.decode(String.self, forKey: .flightNumber)
            self.faFlightIds = try container.decode([String].self, forKey: .faFlightIds)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.sessionId, forKey: .sessionId)
            try container.encode(self.flightNumber, forKey: .flightNumber)
            try container.encode(self.faFlightIds, forKey: .faFlightIds)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case sessionId = "session_id"
            case flightNumber = "flight_number"
            case faFlightIds = "fa_flight_ids"
        }
    }
}