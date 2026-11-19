import Foundation

extension Requests {
    public struct TaskLocationFromContactReq: Codable, Hashable, Sendable {
        public let contactId: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            contactId: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.contactId = contactId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.contactId = try container.decode(String.self, forKey: .contactId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.contactId, forKey: .contactId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case contactId = "contact_id"
        }
    }
}