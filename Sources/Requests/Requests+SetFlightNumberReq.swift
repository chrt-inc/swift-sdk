import Foundation

extension Requests {
    public struct SetFlightNumberReq: Codable, Hashable, Sendable {
        /// Flight number to set on the task group
        public let flightNumber: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            flightNumber: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.flightNumber = flightNumber
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.flightNumber = try container.decode(String.self, forKey: .flightNumber)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.flightNumber, forKey: .flightNumber)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case flightNumber = "flight_number"
        }
    }
}