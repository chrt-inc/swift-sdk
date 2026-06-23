import Foundation

extension Requests {
    public struct OperationsTasksBulkUpdateDeadlinesReq1: Codable, Hashable, Sendable {
        public let operationsTaskDeadlineUpdates: [OperationsTaskDeadlineUpdate1]
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            operationsTaskDeadlineUpdates: [OperationsTaskDeadlineUpdate1],
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.operationsTaskDeadlineUpdates = operationsTaskDeadlineUpdates
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.operationsTaskDeadlineUpdates = try container.decode([OperationsTaskDeadlineUpdate1].self, forKey: .operationsTaskDeadlineUpdates)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.operationsTaskDeadlineUpdates, forKey: .operationsTaskDeadlineUpdates)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case operationsTaskDeadlineUpdates = "operations_task_deadline_updates"
        }
    }
}