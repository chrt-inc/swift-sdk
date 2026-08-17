import Foundation

extension Requests {
    public struct CxtCredsClientCreate1: Codable, Hashable, Sendable {
        public let baseUrl: String
        public let cxtAuthType: CxtAuthTypeEnum1
        public let cxtCustomerIds: [Int]?
        public let notes: String?
        public let password: String
        public let schemaVersion: Int
        public let username: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            baseUrl: String,
            cxtAuthType: CxtAuthTypeEnum1,
            cxtCustomerIds: [Int]? = nil,
            notes: String? = nil,
            password: String,
            schemaVersion: Int,
            username: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.baseUrl = baseUrl
            self.cxtAuthType = cxtAuthType
            self.cxtCustomerIds = cxtCustomerIds
            self.notes = notes
            self.password = password
            self.schemaVersion = schemaVersion
            self.username = username
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.baseUrl = try container.decode(String.self, forKey: .baseUrl)
            self.cxtAuthType = try container.decode(CxtAuthTypeEnum1.self, forKey: .cxtAuthType)
            self.cxtCustomerIds = try container.decodeIfPresent([Int].self, forKey: .cxtCustomerIds)
            self.notes = try container.decodeIfPresent(String.self, forKey: .notes)
            self.password = try container.decode(String.self, forKey: .password)
            self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
            self.username = try container.decode(String.self, forKey: .username)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.baseUrl, forKey: .baseUrl)
            try container.encode(self.cxtAuthType, forKey: .cxtAuthType)
            try container.encodeIfPresent(self.cxtCustomerIds, forKey: .cxtCustomerIds)
            try container.encodeIfPresent(self.notes, forKey: .notes)
            try container.encode(self.password, forKey: .password)
            try container.encode(self.schemaVersion, forKey: .schemaVersion)
            try container.encode(self.username, forKey: .username)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case baseUrl = "base_url"
            case cxtAuthType = "cxt_auth_type"
            case cxtCustomerIds = "cxt_customer_ids"
            case notes
            case password
            case schemaVersion = "schema_version"
            case username
        }
    }
}