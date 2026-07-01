import Foundation

extension Requests {
    public struct DriverByDriverDataPointClientCreate1: Codable, Hashable, Sendable {
        public let location: LocationFeature
        public let schemaVersion: Int
        public let timestamp: Date
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            location: LocationFeature,
            schemaVersion: Int,
            timestamp: Date,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.location = location
            self.schemaVersion = schemaVersion
            self.timestamp = timestamp
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.location = try container.decode(LocationFeature.self, forKey: .location)
            self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
            self.timestamp = try container.decode(Date.self, forKey: .timestamp)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.location, forKey: .location)
            try container.encode(self.schemaVersion, forKey: .schemaVersion)
            try container.encode(self.timestamp, forKey: .timestamp)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case location
            case schemaVersion = "schema_version"
            case timestamp
        }
    }
}