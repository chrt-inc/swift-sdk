import Foundation

extension Requests {
    public struct XceleratorCredsClientUpdate1: Codable, Hashable, Sendable {
        public let description: String?
        public let descriptionSetToNone: Bool?
        public let password: String?
        public let passwordSetToNone: Bool?
        public let username: String?
        public let usernameSetToNone: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            description: String? = nil,
            descriptionSetToNone: Bool? = nil,
            password: String? = nil,
            passwordSetToNone: Bool? = nil,
            username: String? = nil,
            usernameSetToNone: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.description = description
            self.descriptionSetToNone = descriptionSetToNone
            self.password = password
            self.passwordSetToNone = passwordSetToNone
            self.username = username
            self.usernameSetToNone = usernameSetToNone
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.description = try container.decodeIfPresent(String.self, forKey: .description)
            self.descriptionSetToNone = try container.decodeIfPresent(Bool.self, forKey: .descriptionSetToNone)
            self.password = try container.decodeIfPresent(String.self, forKey: .password)
            self.passwordSetToNone = try container.decodeIfPresent(Bool.self, forKey: .passwordSetToNone)
            self.username = try container.decodeIfPresent(String.self, forKey: .username)
            self.usernameSetToNone = try container.decodeIfPresent(Bool.self, forKey: .usernameSetToNone)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.description, forKey: .description)
            try container.encodeIfPresent(self.descriptionSetToNone, forKey: .descriptionSetToNone)
            try container.encodeIfPresent(self.password, forKey: .password)
            try container.encodeIfPresent(self.passwordSetToNone, forKey: .passwordSetToNone)
            try container.encodeIfPresent(self.username, forKey: .username)
            try container.encodeIfPresent(self.usernameSetToNone, forKey: .usernameSetToNone)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case description
            case descriptionSetToNone = "description__set_to_None"
            case password
            case passwordSetToNone = "password__set_to_None"
            case username
            case usernameSetToNone = "username__set_to_None"
        }
    }
}