import Foundation

extension Requests {
    public struct DriverLastSeenReq: Codable, Hashable, Sendable {
        public let location: LocationFeature
        public let timestamp: Date?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            location: LocationFeature,
            timestamp: Date? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.location = location
            self.timestamp = timestamp
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.location = try container.decode(LocationFeature.self, forKey: .location)
            self.timestamp = try container.decodeIfPresent(Date.self, forKey: .timestamp)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.location, forKey: .location)
            try container.encodeIfPresent(self.timestamp, forKey: .timestamp)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case location
            case timestamp
        }
    }
}