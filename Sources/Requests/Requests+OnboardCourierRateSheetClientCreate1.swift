import Foundation

extension Requests {
    public struct OnboardCourierRateSheetClientCreate1: Codable, Hashable, Sendable {
        public let archived: Bool?
        public let comments: String?
        public let dayRateUsd: Double?
        public let name: String?
        public let schemaVersion: Int
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            archived: Bool? = nil,
            comments: String? = nil,
            dayRateUsd: Double? = nil,
            name: String? = nil,
            schemaVersion: Int,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.archived = archived
            self.comments = comments
            self.dayRateUsd = dayRateUsd
            self.name = name
            self.schemaVersion = schemaVersion
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.archived = try container.decodeIfPresent(Bool.self, forKey: .archived)
            self.comments = try container.decodeIfPresent(String.self, forKey: .comments)
            self.dayRateUsd = try container.decodeIfPresent(Double.self, forKey: .dayRateUsd)
            self.name = try container.decodeIfPresent(String.self, forKey: .name)
            self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.archived, forKey: .archived)
            try container.encodeIfPresent(self.comments, forKey: .comments)
            try container.encodeIfPresent(self.dayRateUsd, forKey: .dayRateUsd)
            try container.encodeIfPresent(self.name, forKey: .name)
            try container.encode(self.schemaVersion, forKey: .schemaVersion)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case archived
            case comments
            case dayRateUsd = "day_rate_usd"
            case name
            case schemaVersion = "schema_version"
        }
    }
}