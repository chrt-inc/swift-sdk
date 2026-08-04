import Foundation

extension Requests {
    public struct OrderTemplateNewTaskReorderReq1: Codable, Hashable, Sendable {
        public let orderedTaskKeys: [String]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            orderedTaskKeys: [String]? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.orderedTaskKeys = orderedTaskKeys
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.orderedTaskKeys = try container.decodeIfPresent([String].self, forKey: .orderedTaskKeys)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.orderedTaskKeys, forKey: .orderedTaskKeys)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case orderedTaskKeys = "ordered_task_keys"
        }
    }
}