import Foundation

extension Requests {
    public struct OperationsTaskAddCommentReq1: Codable, Hashable, Sendable {
        public let comment: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            comment: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.comment = comment
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.comment = try container.decode(String.self, forKey: .comment)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.comment, forKey: .comment)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case comment
        }
    }
}