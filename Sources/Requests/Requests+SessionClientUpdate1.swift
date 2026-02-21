import Foundation

extension Requests {
    public struct SessionClientUpdate1: Codable, Hashable, Sendable {
        public let offChrtReferenceId: String?
        public let comments: String?
        public let `public`: Bool?
        public let offChrtReferenceIdSetToNone: Bool?
        public let commentsSetToNone: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            offChrtReferenceId: String? = nil,
            comments: String? = nil,
            public: Bool? = nil,
            offChrtReferenceIdSetToNone: Bool? = nil,
            commentsSetToNone: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.offChrtReferenceId = offChrtReferenceId
            self.comments = comments
            self.public = `public`
            self.offChrtReferenceIdSetToNone = offChrtReferenceIdSetToNone
            self.commentsSetToNone = commentsSetToNone
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.offChrtReferenceId = try container.decodeIfPresent(String.self, forKey: .offChrtReferenceId)
            self.comments = try container.decodeIfPresent(String.self, forKey: .comments)
            self.public = try container.decodeIfPresent(Bool.self, forKey: .public)
            self.offChrtReferenceIdSetToNone = try container.decodeIfPresent(Bool.self, forKey: .offChrtReferenceIdSetToNone)
            self.commentsSetToNone = try container.decodeIfPresent(Bool.self, forKey: .commentsSetToNone)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.offChrtReferenceId, forKey: .offChrtReferenceId)
            try container.encodeIfPresent(self.comments, forKey: .comments)
            try container.encodeIfPresent(self.public, forKey: .public)
            try container.encodeIfPresent(self.offChrtReferenceIdSetToNone, forKey: .offChrtReferenceIdSetToNone)
            try container.encodeIfPresent(self.commentsSetToNone, forKey: .commentsSetToNone)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case offChrtReferenceId = "off_chrt_reference_id"
            case comments
            case `public`
            case offChrtReferenceIdSetToNone = "off_chrt_reference_id__set_to_None"
            case commentsSetToNone = "comments__set_to_None"
        }
    }
}