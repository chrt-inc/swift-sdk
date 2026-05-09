import Foundation

extension Requests {
    public struct DepartmentClientUpdate1: Codable, Hashable, Sendable {
        public let name: String?
        public let location: LocationFeature?
        public let locationSetToNone: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            name: String? = nil,
            location: LocationFeature? = nil,
            locationSetToNone: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.name = name
            self.location = location
            self.locationSetToNone = locationSetToNone
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.name = try container.decodeIfPresent(String.self, forKey: .name)
            self.location = try container.decodeIfPresent(LocationFeature.self, forKey: .location)
            self.locationSetToNone = try container.decodeIfPresent(Bool.self, forKey: .locationSetToNone)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.name, forKey: .name)
            try container.encodeIfPresent(self.location, forKey: .location)
            try container.encodeIfPresent(self.locationSetToNone, forKey: .locationSetToNone)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case name
            case location
            case locationSetToNone = "location__set_to_None"
        }
    }
}