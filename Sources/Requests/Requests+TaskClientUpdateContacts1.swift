import Foundation

extension Requests {
    public struct TaskClientUpdateContacts1: Codable, Hashable, Sendable {
        public let contactIds: [String]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            contactIds: [String]? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.contactIds = contactIds
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.contactIds = try container.decodeIfPresent([String].self, forKey: .contactIds)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.contactIds, forKey: .contactIds)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case contactIds = "contact_ids"
        }
    }
}