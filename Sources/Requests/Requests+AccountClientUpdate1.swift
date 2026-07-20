import Foundation

extension Requests {
    public struct AccountClientUpdate1: Codable, Hashable, Sendable {
        public let location: LocationFeature?
        public let locationSetToNone: Bool?
        public let name: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            location: LocationFeature? = nil,
            locationSetToNone: Bool? = nil,
            name: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.location = location
            self.locationSetToNone = locationSetToNone
            self.name = name
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.location = try container.decodeIfPresent(LocationFeature.self, forKey: .location)
            self.locationSetToNone = try container.decodeIfPresent(Bool.self, forKey: .locationSetToNone)
            self.name = try container.decodeIfPresent(String.self, forKey: .name)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.location, forKey: .location)
            try container.encodeIfPresent(self.locationSetToNone, forKey: .locationSetToNone)
            try container.encodeIfPresent(self.name, forKey: .name)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case location
            case locationSetToNone = "location__set_to_None"
            case name
        }
    }
}