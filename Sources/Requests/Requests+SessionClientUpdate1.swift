import Foundation

extension Requests {
    public struct SessionClientUpdate1: Codable, Hashable, Sendable {
        public let comments: String?
        public let commentsSetToNone: Bool?
        public let offChrtReferenceId: String?
        public let offChrtReferenceIdSetToNone: Bool?
        public let `public`: Bool?
        public let terminationScheduledForTimestamp: Date?
        public let terminationScheduledForTimestampSetToNone: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            comments: String? = nil,
            commentsSetToNone: Bool? = nil,
            offChrtReferenceId: String? = nil,
            offChrtReferenceIdSetToNone: Bool? = nil,
            public: Bool? = nil,
            terminationScheduledForTimestamp: Date? = nil,
            terminationScheduledForTimestampSetToNone: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.comments = comments
            self.commentsSetToNone = commentsSetToNone
            self.offChrtReferenceId = offChrtReferenceId
            self.offChrtReferenceIdSetToNone = offChrtReferenceIdSetToNone
            self.public = `public`
            self.terminationScheduledForTimestamp = terminationScheduledForTimestamp
            self.terminationScheduledForTimestampSetToNone = terminationScheduledForTimestampSetToNone
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.comments = try container.decodeIfPresent(String.self, forKey: .comments)
            self.commentsSetToNone = try container.decodeIfPresent(Bool.self, forKey: .commentsSetToNone)
            self.offChrtReferenceId = try container.decodeIfPresent(String.self, forKey: .offChrtReferenceId)
            self.offChrtReferenceIdSetToNone = try container.decodeIfPresent(Bool.self, forKey: .offChrtReferenceIdSetToNone)
            self.public = try container.decodeIfPresent(Bool.self, forKey: .public)
            self.terminationScheduledForTimestamp = try container.decodeIfPresent(Date.self, forKey: .terminationScheduledForTimestamp)
            self.terminationScheduledForTimestampSetToNone = try container.decodeIfPresent(Bool.self, forKey: .terminationScheduledForTimestampSetToNone)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.comments, forKey: .comments)
            try container.encodeIfPresent(self.commentsSetToNone, forKey: .commentsSetToNone)
            try container.encodeIfPresent(self.offChrtReferenceId, forKey: .offChrtReferenceId)
            try container.encodeIfPresent(self.offChrtReferenceIdSetToNone, forKey: .offChrtReferenceIdSetToNone)
            try container.encodeIfPresent(self.public, forKey: .public)
            try container.encodeIfPresent(self.terminationScheduledForTimestamp, forKey: .terminationScheduledForTimestamp)
            try container.encodeIfPresent(self.terminationScheduledForTimestampSetToNone, forKey: .terminationScheduledForTimestampSetToNone)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case comments
            case commentsSetToNone = "comments__set_to_None"
            case offChrtReferenceId = "off_chrt_reference_id"
            case offChrtReferenceIdSetToNone = "off_chrt_reference_id__set_to_None"
            case `public`
            case terminationScheduledForTimestamp = "termination_scheduled_for_timestamp"
            case terminationScheduledForTimestampSetToNone = "termination_scheduled_for_timestamp__set_to_None"
        }
    }
}