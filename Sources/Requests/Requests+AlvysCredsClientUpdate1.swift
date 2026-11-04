import Foundation

extension Requests {
    public struct AlvysCredsClientUpdate1: Codable, Hashable, Sendable {
        public let clientId: String?
        public let clientSecret: String?
        public let clientSecretSetToNone: Bool?
        public let customerId: String?
        public let description: String?
        public let descriptionSetToNone: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            clientId: String? = nil,
            clientSecret: String? = nil,
            clientSecretSetToNone: Bool? = nil,
            customerId: String? = nil,
            description: String? = nil,
            descriptionSetToNone: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.clientId = clientId
            self.clientSecret = clientSecret
            self.clientSecretSetToNone = clientSecretSetToNone
            self.customerId = customerId
            self.description = description
            self.descriptionSetToNone = descriptionSetToNone
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.clientId = try container.decodeIfPresent(String.self, forKey: .clientId)
            self.clientSecret = try container.decodeIfPresent(String.self, forKey: .clientSecret)
            self.clientSecretSetToNone = try container.decodeIfPresent(Bool.self, forKey: .clientSecretSetToNone)
            self.customerId = try container.decodeIfPresent(String.self, forKey: .customerId)
            self.description = try container.decodeIfPresent(String.self, forKey: .description)
            self.descriptionSetToNone = try container.decodeIfPresent(Bool.self, forKey: .descriptionSetToNone)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.clientId, forKey: .clientId)
            try container.encodeIfPresent(self.clientSecret, forKey: .clientSecret)
            try container.encodeIfPresent(self.clientSecretSetToNone, forKey: .clientSecretSetToNone)
            try container.encodeIfPresent(self.customerId, forKey: .customerId)
            try container.encodeIfPresent(self.description, forKey: .description)
            try container.encodeIfPresent(self.descriptionSetToNone, forKey: .descriptionSetToNone)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case clientId = "client_id"
            case clientSecret = "client_secret"
            case clientSecretSetToNone = "client_secret__set_to_None"
            case customerId = "customer_id"
            case description
            case descriptionSetToNone = "description__set_to_None"
        }
    }
}