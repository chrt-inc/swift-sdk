import Foundation

extension Requests {
    public struct DeviceClientUpdate1: Codable, Hashable, Sendable {
        public let comments: String?
        public let commentsSetToNone: Bool?
        public let offChrtReferenceId: String?
        public let offChrtReferenceIdSetToNone: Bool?
        public let type: TrackingDeviceTypeEnum1?
        public let typeSetToNone: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            comments: String? = nil,
            commentsSetToNone: Bool? = nil,
            offChrtReferenceId: String? = nil,
            offChrtReferenceIdSetToNone: Bool? = nil,
            type: TrackingDeviceTypeEnum1? = nil,
            typeSetToNone: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.comments = comments
            self.commentsSetToNone = commentsSetToNone
            self.offChrtReferenceId = offChrtReferenceId
            self.offChrtReferenceIdSetToNone = offChrtReferenceIdSetToNone
            self.type = type
            self.typeSetToNone = typeSetToNone
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.comments = try container.decodeIfPresent(String.self, forKey: .comments)
            self.commentsSetToNone = try container.decodeIfPresent(Bool.self, forKey: .commentsSetToNone)
            self.offChrtReferenceId = try container.decodeIfPresent(String.self, forKey: .offChrtReferenceId)
            self.offChrtReferenceIdSetToNone = try container.decodeIfPresent(Bool.self, forKey: .offChrtReferenceIdSetToNone)
            self.type = try container.decodeIfPresent(TrackingDeviceTypeEnum1.self, forKey: .type)
            self.typeSetToNone = try container.decodeIfPresent(Bool.self, forKey: .typeSetToNone)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.comments, forKey: .comments)
            try container.encodeIfPresent(self.commentsSetToNone, forKey: .commentsSetToNone)
            try container.encodeIfPresent(self.offChrtReferenceId, forKey: .offChrtReferenceId)
            try container.encodeIfPresent(self.offChrtReferenceIdSetToNone, forKey: .offChrtReferenceIdSetToNone)
            try container.encodeIfPresent(self.type, forKey: .type)
            try container.encodeIfPresent(self.typeSetToNone, forKey: .typeSetToNone)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case comments
            case commentsSetToNone = "comments__set_to_None"
            case offChrtReferenceId = "off_chrt_reference_id"
            case offChrtReferenceIdSetToNone = "off_chrt_reference_id__set_to_None"
            case type
            case typeSetToNone = "type__set_to_None"
        }
    }
}