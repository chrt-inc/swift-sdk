import Foundation

extension Requests {
    public struct OrderTemplateNewTaskGroupReorderReq1: Codable, Hashable, Sendable {
        public let orderedTaskGroupKeys: [String]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            orderedTaskGroupKeys: [String]? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.orderedTaskGroupKeys = orderedTaskGroupKeys
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.orderedTaskGroupKeys = try container.decodeIfPresent([String].self, forKey: .orderedTaskGroupKeys)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.orderedTaskGroupKeys, forKey: .orderedTaskGroupKeys)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case orderedTaskGroupKeys = "ordered_task_group_keys"
        }
    }
}