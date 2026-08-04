import Foundation

extension Requests {
    public struct OrderTemplateNewTaskMoveReq1: Codable, Hashable, Sendable {
        public let targetTaskGroupKey: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            targetTaskGroupKey: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.targetTaskGroupKey = targetTaskGroupKey
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.targetTaskGroupKey = try container.decode(String.self, forKey: .targetTaskGroupKey)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.targetTaskGroupKey, forKey: .targetTaskGroupKey)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case targetTaskGroupKey = "target_task_group_key"
        }
    }
}