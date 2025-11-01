import Foundation

extension Requests {
    public struct SessionByDeviceUpdateRequest1: Codable, Hashable, Sendable {
        public let sessionId: String
        public let comments: String?
        public let deleteComments: Bool?
        public let `public`: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            sessionId: String,
            comments: String? = nil,
            deleteComments: Bool? = nil,
            public: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.sessionId = sessionId
            self.comments = comments
            self.deleteComments = deleteComments
            self.public = `public`
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.sessionId = try container.decode(String.self, forKey: .sessionId)
            self.comments = try container.decodeIfPresent(String.self, forKey: .comments)
            self.deleteComments = try container.decodeIfPresent(Bool.self, forKey: .deleteComments)
            self.public = try container.decodeIfPresent(Bool.self, forKey: .public)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.sessionId, forKey: .sessionId)
            try container.encodeIfPresent(self.comments, forKey: .comments)
            try container.encodeIfPresent(self.deleteComments, forKey: .deleteComments)
            try container.encodeIfPresent(self.public, forKey: .public)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case sessionId = "session_id"
            case comments
            case deleteComments = "delete_comments"
            case `public`
        }
    }
}