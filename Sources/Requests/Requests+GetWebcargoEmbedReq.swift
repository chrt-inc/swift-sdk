import Foundation

extension Requests {
    public struct GetWebcargoEmbedReq: Codable, Hashable, Sendable {
        public let origin: String
        public let destination: String
        public let departure: String
        public let country: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            origin: String,
            destination: String,
            departure: String,
            country: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.origin = origin
            self.destination = destination
            self.departure = departure
            self.country = country
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.origin = try container.decode(String.self, forKey: .origin)
            self.destination = try container.decode(String.self, forKey: .destination)
            self.departure = try container.decode(String.self, forKey: .departure)
            self.country = try container.decode(String.self, forKey: .country)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.origin, forKey: .origin)
            try container.encode(self.destination, forKey: .destination)
            try container.encode(self.departure, forKey: .departure)
            try container.encode(self.country, forKey: .country)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case origin
            case destination
            case departure
            case country
        }
    }
}