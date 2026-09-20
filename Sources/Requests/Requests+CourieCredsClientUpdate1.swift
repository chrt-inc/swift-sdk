import Foundation

extension Requests {
    public struct CourieCredsClientUpdate1: Codable, Hashable, Sendable {
        public let apiKey: String?
        public let apiKeySetToNone: Bool?
        public let courierId: String?
        public let customerIds: [String]?
        public let notes: String?
        public let notesSetToNone: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            apiKey: String? = nil,
            apiKeySetToNone: Bool? = nil,
            courierId: String? = nil,
            customerIds: [String]? = nil,
            notes: String? = nil,
            notesSetToNone: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.apiKey = apiKey
            self.apiKeySetToNone = apiKeySetToNone
            self.courierId = courierId
            self.customerIds = customerIds
            self.notes = notes
            self.notesSetToNone = notesSetToNone
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.apiKey = try container.decodeIfPresent(String.self, forKey: .apiKey)
            self.apiKeySetToNone = try container.decodeIfPresent(Bool.self, forKey: .apiKeySetToNone)
            self.courierId = try container.decodeIfPresent(String.self, forKey: .courierId)
            self.customerIds = try container.decodeIfPresent([String].self, forKey: .customerIds)
            self.notes = try container.decodeIfPresent(String.self, forKey: .notes)
            self.notesSetToNone = try container.decodeIfPresent(Bool.self, forKey: .notesSetToNone)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.apiKey, forKey: .apiKey)
            try container.encodeIfPresent(self.apiKeySetToNone, forKey: .apiKeySetToNone)
            try container.encodeIfPresent(self.courierId, forKey: .courierId)
            try container.encodeIfPresent(self.customerIds, forKey: .customerIds)
            try container.encodeIfPresent(self.notes, forKey: .notes)
            try container.encodeIfPresent(self.notesSetToNone, forKey: .notesSetToNone)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case apiKey = "api_key"
            case apiKeySetToNone = "api_key__set_to_None"
            case courierId = "courier_id"
            case customerIds = "customer_ids"
            case notes
            case notesSetToNone = "notes__set_to_None"
        }
    }
}