import Foundation

extension Requests {
    public struct OrderTemplateNewTaskArtifactMoveReq1: Codable, Hashable, Sendable {
        public let targetTaskKey: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            targetTaskKey: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.targetTaskKey = targetTaskKey
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.targetTaskKey = try container.decode(String.self, forKey: .targetTaskKey)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.targetTaskKey, forKey: .targetTaskKey)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case targetTaskKey = "target_task_key"
        }
    }
}