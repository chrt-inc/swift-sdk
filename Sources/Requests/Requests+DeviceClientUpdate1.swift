import Foundation

extension Requests {
    public struct DeviceClientUpdate1: Codable, Hashable, Sendable {
        public let type: TrackingDeviceTypeEnum1?
        public let comments: String?
        public let offChrtReferenceId: String?
        public let typeSetToNone: Bool?
        public let commentsSetToNone: Bool?
        public let offChrtReferenceIdSetToNone: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            type: TrackingDeviceTypeEnum1? = nil,
            comments: String? = nil,
            offChrtReferenceId: String? = nil,
            typeSetToNone: Bool? = nil,
            commentsSetToNone: Bool? = nil,
            offChrtReferenceIdSetToNone: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.type = type
            self.comments = comments
            self.offChrtReferenceId = offChrtReferenceId
            self.typeSetToNone = typeSetToNone
            self.commentsSetToNone = commentsSetToNone
            self.offChrtReferenceIdSetToNone = offChrtReferenceIdSetToNone
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.type = try container.decodeIfPresent(TrackingDeviceTypeEnum1.self, forKey: .type)
            self.comments = try container.decodeIfPresent(String.self, forKey: .comments)
            self.offChrtReferenceId = try container.decodeIfPresent(String.self, forKey: .offChrtReferenceId)
            self.typeSetToNone = try container.decodeIfPresent(Bool.self, forKey: .typeSetToNone)
            self.commentsSetToNone = try container.decodeIfPresent(Bool.self, forKey: .commentsSetToNone)
            self.offChrtReferenceIdSetToNone = try container.decodeIfPresent(Bool.self, forKey: .offChrtReferenceIdSetToNone)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.type, forKey: .type)
            try container.encodeIfPresent(self.comments, forKey: .comments)
            try container.encodeIfPresent(self.offChrtReferenceId, forKey: .offChrtReferenceId)
            try container.encodeIfPresent(self.typeSetToNone, forKey: .typeSetToNone)
            try container.encodeIfPresent(self.commentsSetToNone, forKey: .commentsSetToNone)
            try container.encodeIfPresent(self.offChrtReferenceIdSetToNone, forKey: .offChrtReferenceIdSetToNone)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case type
            case comments
            case offChrtReferenceId = "off_chrt_reference_id"
            case typeSetToNone = "type__set_to_None"
            case commentsSetToNone = "comments__set_to_None"
            case offChrtReferenceIdSetToNone = "off_chrt_reference_id__set_to_None"
        }
    }
}