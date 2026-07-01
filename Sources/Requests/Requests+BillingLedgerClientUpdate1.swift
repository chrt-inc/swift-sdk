import Foundation

extension Requests {
    public struct BillingLedgerClientUpdate1: Codable, Hashable, Sendable {
        public let comments: String?
        public let commentsSetToNone: Bool?
        public let name: String?
        public let nameSetToNone: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            comments: String? = nil,
            commentsSetToNone: Bool? = nil,
            name: String? = nil,
            nameSetToNone: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.comments = comments
            self.commentsSetToNone = commentsSetToNone
            self.name = name
            self.nameSetToNone = nameSetToNone
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.comments = try container.decodeIfPresent(String.self, forKey: .comments)
            self.commentsSetToNone = try container.decodeIfPresent(Bool.self, forKey: .commentsSetToNone)
            self.name = try container.decodeIfPresent(String.self, forKey: .name)
            self.nameSetToNone = try container.decodeIfPresent(Bool.self, forKey: .nameSetToNone)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.comments, forKey: .comments)
            try container.encodeIfPresent(self.commentsSetToNone, forKey: .commentsSetToNone)
            try container.encodeIfPresent(self.name, forKey: .name)
            try container.encodeIfPresent(self.nameSetToNone, forKey: .nameSetToNone)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case comments
            case commentsSetToNone = "comments__set_to_None"
            case name
            case nameSetToNone = "name__set_to_None"
        }
    }
}