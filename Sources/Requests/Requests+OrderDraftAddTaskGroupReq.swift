import Foundation

extension Requests {
    public struct OrderDraftAddTaskGroupReq: Codable, Hashable, Sendable {
        public let taskGroupType: TaskGroupTypeEnum1
        public let orderId: String
        public let orderScheduleTemplatePathIdempotencyKey: String?
        public let vehicleType: VehicleTypeEnum?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            taskGroupType: TaskGroupTypeEnum1,
            orderId: String,
            orderScheduleTemplatePathIdempotencyKey: String? = nil,
            vehicleType: VehicleTypeEnum? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.taskGroupType = taskGroupType
            self.orderId = orderId
            self.orderScheduleTemplatePathIdempotencyKey = orderScheduleTemplatePathIdempotencyKey
            self.vehicleType = vehicleType
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.taskGroupType = try container.decode(TaskGroupTypeEnum1.self, forKey: .taskGroupType)
            self.orderId = try container.decode(String.self, forKey: .orderId)
            self.orderScheduleTemplatePathIdempotencyKey = try container.decodeIfPresent(String.self, forKey: .orderScheduleTemplatePathIdempotencyKey)
            self.vehicleType = try container.decodeIfPresent(VehicleTypeEnum.self, forKey: .vehicleType)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.taskGroupType, forKey: .taskGroupType)
            try container.encode(self.orderId, forKey: .orderId)
            try container.encodeIfPresent(self.orderScheduleTemplatePathIdempotencyKey, forKey: .orderScheduleTemplatePathIdempotencyKey)
            try container.encodeIfPresent(self.vehicleType, forKey: .vehicleType)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case taskGroupType = "task_group_type"
            case orderId = "order_id"
            case orderScheduleTemplatePathIdempotencyKey = "order_schedule_template_path_idempotency_key"
            case vehicleType = "vehicle_type"
        }
    }
}