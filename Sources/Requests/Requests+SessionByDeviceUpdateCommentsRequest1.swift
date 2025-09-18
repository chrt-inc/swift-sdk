import Foundation

extension Requests {
    public struct SessionByDeviceUpdateCommentsRequest1: Codable, Hashable, Sendable {
        public let sessionId: String
        public let comments: Nullable<String>?
        public let deleteComments: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            sessionId: String,
            comments: Nullable<String>? = nil,
            deleteComments: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.sessionId = sessionId
            self.comments = comments
            self.deleteComments = deleteComments
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.sessionId = try container.decode(String.self, forKey: .sessionId)
            self.comments = try container.decodeNullableIfPresent(String.self, forKey: .comments)
            self.deleteComments = try container.decodeIfPresent(Bool.self, forKey: .deleteComments)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.sessionId, forKey: .sessionId)
            try container.encodeNullableIfPresent(self.comments, forKey: .comments)
            try container.encodeIfPresent(self.deleteComments, forKey: .deleteComments)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case sessionId = "session_id"
            case comments
            case deleteComments = "delete_comments"
        }
    }
}