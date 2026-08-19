import Foundation

extension Requests {
    public struct EcourierCredsClientCreate1: Codable, Hashable, Sendable {
        /// Origin of the courier's e-Courier host, with no path. The request path is derived from `ecourier_database`.
        public let baseUrl: String
        public let ecourierCustomerCode: String
        public let ecourierCustomerId: String
        public let ecourierDatabase: String
        public let notes: String?
        public let password: String
        public let schemaVersion: Int
        public let username: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            baseUrl: String,
            ecourierCustomerCode: String,
            ecourierCustomerId: String,
            ecourierDatabase: String,
            notes: String? = nil,
            password: String,
            schemaVersion: Int,
            username: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.baseUrl = baseUrl
            self.ecourierCustomerCode = ecourierCustomerCode
            self.ecourierCustomerId = ecourierCustomerId
            self.ecourierDatabase = ecourierDatabase
            self.notes = notes
            self.password = password
            self.schemaVersion = schemaVersion
            self.username = username
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.baseUrl = try container.decode(String.self, forKey: .baseUrl)
            self.ecourierCustomerCode = try container.decode(String.self, forKey: .ecourierCustomerCode)
            self.ecourierCustomerId = try container.decode(String.self, forKey: .ecourierCustomerId)
            self.ecourierDatabase = try container.decode(String.self, forKey: .ecourierDatabase)
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
            try container.encode(self.ecourierCustomerCode, forKey: .ecourierCustomerCode)
            try container.encode(self.ecourierCustomerId, forKey: .ecourierCustomerId)
            try container.encode(self.ecourierDatabase, forKey: .ecourierDatabase)
            try container.encodeIfPresent(self.notes, forKey: .notes)
            try container.encode(self.password, forKey: .password)
            try container.encode(self.schemaVersion, forKey: .schemaVersion)
            try container.encode(self.username, forKey: .username)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case baseUrl = "base_url"
            case ecourierCustomerCode = "ecourier_customer_code"
            case ecourierCustomerId = "ecourier_customer_id"
            case ecourierDatabase = "ecourier_database"
            case notes
            case password
            case schemaVersion = "schema_version"
            case username
        }
    }
}