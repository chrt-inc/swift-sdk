import Foundation

extension Requests {
    public struct OrderDraftAddTaskGroupReq: Codable, Hashable, Sendable {
        public let taskGroupType: TaskGroupTypeEnum1
        public let orderId: String
        /// Must be a string starting with `org_`
        public let courierOrgId: String?
        public let serviceType: ServiceTypeEnum1?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            taskGroupType: TaskGroupTypeEnum1,
            orderId: String,
            courierOrgId: String? = nil,
            serviceType: ServiceTypeEnum1? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.taskGroupType = taskGroupType
            self.orderId = orderId
            self.courierOrgId = courierOrgId
            self.serviceType = serviceType
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.taskGroupType = try container.decode(TaskGroupTypeEnum1.self, forKey: .taskGroupType)
            self.orderId = try container.decode(String.self, forKey: .orderId)
            self.courierOrgId = try container.decodeIfPresent(String.self, forKey: .courierOrgId)
            self.serviceType = try container.decodeIfPresent(ServiceTypeEnum1.self, forKey: .serviceType)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.taskGroupType, forKey: .taskGroupType)
            try container.encode(self.orderId, forKey: .orderId)
            try container.encodeIfPresent(self.courierOrgId, forKey: .courierOrgId)
            try container.encodeIfPresent(self.serviceType, forKey: .serviceType)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case taskGroupType = "task_group_type"
            case orderId = "order_id"
            case courierOrgId = "courier_org_id"
            case serviceType = "service_type"
        }
    }
}