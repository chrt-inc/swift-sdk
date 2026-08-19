import Foundation

extension Requests {
    public struct EcourierCredsClientUpdate1: Codable, Hashable, Sendable {
        public let ecourierCustomerCode: String?
        public let ecourierCustomerId: String?
        public let notes: String?
        public let notesSetToNone: Bool?
        public let password: String?
        public let passwordSetToNone: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            ecourierCustomerCode: String? = nil,
            ecourierCustomerId: String? = nil,
            notes: String? = nil,
            notesSetToNone: Bool? = nil,
            password: String? = nil,
            passwordSetToNone: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.ecourierCustomerCode = ecourierCustomerCode
            self.ecourierCustomerId = ecourierCustomerId
            self.notes = notes
            self.notesSetToNone = notesSetToNone
            self.password = password
            self.passwordSetToNone = passwordSetToNone
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.ecourierCustomerCode = try container.decodeIfPresent(String.self, forKey: .ecourierCustomerCode)
            self.ecourierCustomerId = try container.decodeIfPresent(String.self, forKey: .ecourierCustomerId)
            self.notes = try container.decodeIfPresent(String.self, forKey: .notes)
            self.notesSetToNone = try container.decodeIfPresent(Bool.self, forKey: .notesSetToNone)
            self.password = try container.decodeIfPresent(String.self, forKey: .password)
            self.passwordSetToNone = try container.decodeIfPresent(Bool.self, forKey: .passwordSetToNone)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.ecourierCustomerCode, forKey: .ecourierCustomerCode)
            try container.encodeIfPresent(self.ecourierCustomerId, forKey: .ecourierCustomerId)
            try container.encodeIfPresent(self.notes, forKey: .notes)
            try container.encodeIfPresent(self.notesSetToNone, forKey: .notesSetToNone)
            try container.encodeIfPresent(self.password, forKey: .password)
            try container.encodeIfPresent(self.passwordSetToNone, forKey: .passwordSetToNone)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case ecourierCustomerCode = "ecourier_customer_code"
            case ecourierCustomerId = "ecourier_customer_id"
            case notes
            case notesSetToNone = "notes__set_to_None"
            case password
            case passwordSetToNone = "password__set_to_None"
        }
    }
}