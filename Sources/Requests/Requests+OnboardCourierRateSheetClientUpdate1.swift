import Foundation

extension Requests {
    public struct OnboardCourierRateSheetClientUpdate1: Codable, Hashable, Sendable {
        public let name: String?
        public let comments: String?
        public let dayRateUsd: Double?
        public let nameSetToNone: Bool?
        public let commentsSetToNone: Bool?
        public let dayRateUsdSetToNone: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            name: String? = nil,
            comments: String? = nil,
            dayRateUsd: Double? = nil,
            nameSetToNone: Bool? = nil,
            commentsSetToNone: Bool? = nil,
            dayRateUsdSetToNone: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.name = name
            self.comments = comments
            self.dayRateUsd = dayRateUsd
            self.nameSetToNone = nameSetToNone
            self.commentsSetToNone = commentsSetToNone
            self.dayRateUsdSetToNone = dayRateUsdSetToNone
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.name = try container.decodeIfPresent(String.self, forKey: .name)
            self.comments = try container.decodeIfPresent(String.self, forKey: .comments)
            self.dayRateUsd = try container.decodeIfPresent(Double.self, forKey: .dayRateUsd)
            self.nameSetToNone = try container.decodeIfPresent(Bool.self, forKey: .nameSetToNone)
            self.commentsSetToNone = try container.decodeIfPresent(Bool.self, forKey: .commentsSetToNone)
            self.dayRateUsdSetToNone = try container.decodeIfPresent(Bool.self, forKey: .dayRateUsdSetToNone)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.name, forKey: .name)
            try container.encodeIfPresent(self.comments, forKey: .comments)
            try container.encodeIfPresent(self.dayRateUsd, forKey: .dayRateUsd)
            try container.encodeIfPresent(self.nameSetToNone, forKey: .nameSetToNone)
            try container.encodeIfPresent(self.commentsSetToNone, forKey: .commentsSetToNone)
            try container.encodeIfPresent(self.dayRateUsdSetToNone, forKey: .dayRateUsdSetToNone)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case name
            case comments
            case dayRateUsd = "day_rate_usd"
            case nameSetToNone = "name__set_to_None"
            case commentsSetToNone = "comments__set_to_None"
            case dayRateUsdSetToNone = "day_rate_usd__set_to_None"
        }
    }
}