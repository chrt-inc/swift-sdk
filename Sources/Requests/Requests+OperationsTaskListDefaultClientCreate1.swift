import Foundation

extension Requests {
    public struct OperationsTaskListDefaultClientCreate1: Codable, Hashable, Sendable {
        public let counterpartyOffChrtOrgDataId: String?
        /// Must be a string starting with `org_`
        public let counterpartyOrgId: String?
        public let schemaVersion: Int
        public let serviceLine: ServiceLineEnum
        public let taskListsToApplyAtOrderCreation: [TaskListToApplyToOrder1]?
        public let taskListsToApplyAtOrderStaging: [TaskListToApplyToOrder1]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            counterpartyOffChrtOrgDataId: String? = nil,
            counterpartyOrgId: String? = nil,
            schemaVersion: Int,
            serviceLine: ServiceLineEnum,
            taskListsToApplyAtOrderCreation: [TaskListToApplyToOrder1]? = nil,
            taskListsToApplyAtOrderStaging: [TaskListToApplyToOrder1]? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.counterpartyOffChrtOrgDataId = counterpartyOffChrtOrgDataId
            self.counterpartyOrgId = counterpartyOrgId
            self.schemaVersion = schemaVersion
            self.serviceLine = serviceLine
            self.taskListsToApplyAtOrderCreation = taskListsToApplyAtOrderCreation
            self.taskListsToApplyAtOrderStaging = taskListsToApplyAtOrderStaging
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.counterpartyOffChrtOrgDataId = try container.decodeIfPresent(String.self, forKey: .counterpartyOffChrtOrgDataId)
            self.counterpartyOrgId = try container.decodeIfPresent(String.self, forKey: .counterpartyOrgId)
            self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
            self.serviceLine = try container.decode(ServiceLineEnum.self, forKey: .serviceLine)
            self.taskListsToApplyAtOrderCreation = try container.decodeIfPresent([TaskListToApplyToOrder1].self, forKey: .taskListsToApplyAtOrderCreation)
            self.taskListsToApplyAtOrderStaging = try container.decodeIfPresent([TaskListToApplyToOrder1].self, forKey: .taskListsToApplyAtOrderStaging)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.counterpartyOffChrtOrgDataId, forKey: .counterpartyOffChrtOrgDataId)
            try container.encodeIfPresent(self.counterpartyOrgId, forKey: .counterpartyOrgId)
            try container.encode(self.schemaVersion, forKey: .schemaVersion)
            try container.encode(self.serviceLine, forKey: .serviceLine)
            try container.encodeIfPresent(self.taskListsToApplyAtOrderCreation, forKey: .taskListsToApplyAtOrderCreation)
            try container.encodeIfPresent(self.taskListsToApplyAtOrderStaging, forKey: .taskListsToApplyAtOrderStaging)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case counterpartyOffChrtOrgDataId = "counterparty_off_chrt_org_data_id"
            case counterpartyOrgId = "counterparty_org_id"
            case schemaVersion = "schema_version"
            case serviceLine = "service_line"
            case taskListsToApplyAtOrderCreation = "task_lists_to_apply_at_order_creation"
            case taskListsToApplyAtOrderStaging = "task_lists_to_apply_at_order_staging"
        }
    }
}