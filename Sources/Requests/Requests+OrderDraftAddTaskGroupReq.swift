import Foundation

extension Requests {
    public struct OrderDraftAddTaskGroupReq: Codable, Hashable, Sendable {
        /// Must be a string starting with `org_`
        public let courierOrgId: String?
        public let orderId: String
        public let serviceType: ServiceTypeEnum1?
        public let taskGroupType: TaskGroupTypeEnum1
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            courierOrgId: String? = nil,
            orderId: String,
            serviceType: ServiceTypeEnum1? = nil,
            taskGroupType: TaskGroupTypeEnum1,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.courierOrgId = courierOrgId
            self.orderId = orderId
            self.serviceType = serviceType
            self.taskGroupType = taskGroupType
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.courierOrgId = try container.decodeIfPresent(String.self, forKey: .courierOrgId)
            self.orderId = try container.decode(String.self, forKey: .orderId)
            self.serviceType = try container.decodeIfPresent(ServiceTypeEnum1.self, forKey: .serviceType)
            self.taskGroupType = try container.decode(TaskGroupTypeEnum1.self, forKey: .taskGroupType)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.courierOrgId, forKey: .courierOrgId)
            try container.encode(self.orderId, forKey: .orderId)
            try container.encodeIfPresent(self.serviceType, forKey: .serviceType)
            try container.encode(self.taskGroupType, forKey: .taskGroupType)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case courierOrgId = "courier_org_id"
            case orderId = "order_id"
            case serviceType = "service_type"
            case taskGroupType = "task_group_type"
        }
    }
}