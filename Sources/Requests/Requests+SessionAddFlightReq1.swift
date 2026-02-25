import Foundation

extension Requests {
    public struct SessionAddFlightReq1: Codable, Hashable, Sendable {
        public let faFlightIds: [String]
        public let flightNumber: String
        public let sessionId: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            faFlightIds: [String],
            flightNumber: String,
            sessionId: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.faFlightIds = faFlightIds
            self.flightNumber = flightNumber
            self.sessionId = sessionId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.faFlightIds = try container.decode([String].self, forKey: .faFlightIds)
            self.flightNumber = try container.decode(String.self, forKey: .flightNumber)
            self.sessionId = try container.decode(String.self, forKey: .sessionId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.faFlightIds, forKey: .faFlightIds)
            try container.encode(self.flightNumber, forKey: .flightNumber)
            try container.encode(self.sessionId, forKey: .sessionId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case faFlightIds = "fa_flight_ids"
            case flightNumber = "flight_number"
            case sessionId = "session_id"
        }
    }
}