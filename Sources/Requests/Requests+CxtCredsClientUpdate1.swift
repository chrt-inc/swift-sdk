import Foundation

extension Requests {
    public struct CxtCredsClientUpdate1: Codable, Hashable, Sendable {
        public let baseUrl: String?
        public let cxtAuthType: CxtAuthTypeEnum1?
        public let cxtCustomerIds: [Int]?
        public let notes: String?
        public let notesSetToNone: Bool?
        public let password: String?
        public let passwordSetToNone: Bool?
        public let username: String?
        public let usernameSetToNone: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            baseUrl: String? = nil,
            cxtAuthType: CxtAuthTypeEnum1? = nil,
            cxtCustomerIds: [Int]? = nil,
            notes: String? = nil,
            notesSetToNone: Bool? = nil,
            password: String? = nil,
            passwordSetToNone: Bool? = nil,
            username: String? = nil,
            usernameSetToNone: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.baseUrl = baseUrl
            self.cxtAuthType = cxtAuthType
            self.cxtCustomerIds = cxtCustomerIds
            self.notes = notes
            self.notesSetToNone = notesSetToNone
            self.password = password
            self.passwordSetToNone = passwordSetToNone
            self.username = username
            self.usernameSetToNone = usernameSetToNone
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.baseUrl = try container.decodeIfPresent(String.self, forKey: .baseUrl)
            self.cxtAuthType = try container.decodeIfPresent(CxtAuthTypeEnum1.self, forKey: .cxtAuthType)
            self.cxtCustomerIds = try container.decodeIfPresent([Int].self, forKey: .cxtCustomerIds)
            self.notes = try container.decodeIfPresent(String.self, forKey: .notes)
            self.notesSetToNone = try container.decodeIfPresent(Bool.self, forKey: .notesSetToNone)
            self.password = try container.decodeIfPresent(String.self, forKey: .password)
            self.passwordSetToNone = try container.decodeIfPresent(Bool.self, forKey: .passwordSetToNone)
            self.username = try container.decodeIfPresent(String.self, forKey: .username)
            self.usernameSetToNone = try container.decodeIfPresent(Bool.self, forKey: .usernameSetToNone)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.baseUrl, forKey: .baseUrl)
            try container.encodeIfPresent(self.cxtAuthType, forKey: .cxtAuthType)
            try container.encodeIfPresent(self.cxtCustomerIds, forKey: .cxtCustomerIds)
            try container.encodeIfPresent(self.notes, forKey: .notes)
            try container.encodeIfPresent(self.notesSetToNone, forKey: .notesSetToNone)
            try container.encodeIfPresent(self.password, forKey: .password)
            try container.encodeIfPresent(self.passwordSetToNone, forKey: .passwordSetToNone)
            try container.encodeIfPresent(self.username, forKey: .username)
            try container.encodeIfPresent(self.usernameSetToNone, forKey: .usernameSetToNone)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case baseUrl = "base_url"
            case cxtAuthType = "cxt_auth_type"
            case cxtCustomerIds = "cxt_customer_ids"
            case notes
            case notesSetToNone = "notes__set_to_None"
            case password
            case passwordSetToNone = "password__set_to_None"
            case username
            case usernameSetToNone = "username__set_to_None"
        }
    }
}