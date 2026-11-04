import Foundation

extension Requests {
    public struct AlvysCredsClientCreate1: Codable, Hashable, Sendable {
        public let clientId: String
        public let clientSecret: String
        public let customerId: String
        public let description: String?
        public let schemaVersion: Int
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            clientId: String,
            clientSecret: String,
            customerId: String,
            description: String? = nil,
            schemaVersion: Int,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.clientId = clientId
            self.clientSecret = clientSecret
            self.customerId = customerId
            self.description = description
            self.schemaVersion = schemaVersion
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.clientId = try container.decode(String.self, forKey: .clientId)
            self.clientSecret = try container.decode(String.self, forKey: .clientSecret)
            self.customerId = try container.decode(String.self, forKey: .customerId)
            self.description = try container.decodeIfPresent(String.self, forKey: .description)
            self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.clientId, forKey: .clientId)
            try container.encode(self.clientSecret, forKey: .clientSecret)
            try container.encode(self.customerId, forKey: .customerId)
            try container.encodeIfPresent(self.description, forKey: .description)
            try container.encode(self.schemaVersion, forKey: .schemaVersion)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case clientId = "client_id"
            case clientSecret = "client_secret"
            case customerId = "customer_id"
            case description
            case schemaVersion = "schema_version"
        }
    }
}