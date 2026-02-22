import Foundation

extension Requests {
    public struct SessionClientUpdate1: Codable, Hashable, Sendable {
        public let offChrtReferenceId: String?
        public let comments: String?
        public let `public`: Bool?
        public let terminationScheduledForTimestamp: Date?
        public let offChrtReferenceIdSetToNone: Bool?
        public let commentsSetToNone: Bool?
        public let terminationScheduledForTimestampSetToNone: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            offChrtReferenceId: String? = nil,
            comments: String? = nil,
            public: Bool? = nil,
            terminationScheduledForTimestamp: Date? = nil,
            offChrtReferenceIdSetToNone: Bool? = nil,
            commentsSetToNone: Bool? = nil,
            terminationScheduledForTimestampSetToNone: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.offChrtReferenceId = offChrtReferenceId
            self.comments = comments
            self.public = `public`
            self.terminationScheduledForTimestamp = terminationScheduledForTimestamp
            self.offChrtReferenceIdSetToNone = offChrtReferenceIdSetToNone
            self.commentsSetToNone = commentsSetToNone
            self.terminationScheduledForTimestampSetToNone = terminationScheduledForTimestampSetToNone
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.offChrtReferenceId = try container.decodeIfPresent(String.self, forKey: .offChrtReferenceId)
            self.comments = try container.decodeIfPresent(String.self, forKey: .comments)
            self.public = try container.decodeIfPresent(Bool.self, forKey: .public)
            self.terminationScheduledForTimestamp = try container.decodeIfPresent(Date.self, forKey: .terminationScheduledForTimestamp)
            self.offChrtReferenceIdSetToNone = try container.decodeIfPresent(Bool.self, forKey: .offChrtReferenceIdSetToNone)
            self.commentsSetToNone = try container.decodeIfPresent(Bool.self, forKey: .commentsSetToNone)
            self.terminationScheduledForTimestampSetToNone = try container.decodeIfPresent(Bool.self, forKey: .terminationScheduledForTimestampSetToNone)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.offChrtReferenceId, forKey: .offChrtReferenceId)
            try container.encodeIfPresent(self.comments, forKey: .comments)
            try container.encodeIfPresent(self.public, forKey: .public)
            try container.encodeIfPresent(self.terminationScheduledForTimestamp, forKey: .terminationScheduledForTimestamp)
            try container.encodeIfPresent(self.offChrtReferenceIdSetToNone, forKey: .offChrtReferenceIdSetToNone)
            try container.encodeIfPresent(self.commentsSetToNone, forKey: .commentsSetToNone)
            try container.encodeIfPresent(self.terminationScheduledForTimestampSetToNone, forKey: .terminationScheduledForTimestampSetToNone)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case offChrtReferenceId = "off_chrt_reference_id"
            case comments
            case `public`
            case terminationScheduledForTimestamp = "termination_scheduled_for_timestamp"
            case offChrtReferenceIdSetToNone = "off_chrt_reference_id__set_to_None"
            case commentsSetToNone = "comments__set_to_None"
            case terminationScheduledForTimestampSetToNone = "termination_scheduled_for_timestamp__set_to_None"
        }
    }
}