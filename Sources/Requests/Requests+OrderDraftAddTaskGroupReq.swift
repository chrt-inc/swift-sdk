import Foundation

extension Requests {
    public struct OrderDraftAddTaskGroupReq: Codable, Hashable, Sendable {
        public let flightSetupNotes: String?
        public let orderId: String
        public let orderScheduleTemplatePathIdempotencyKey: String?
        public let taskGroupType: TaskGroupTypeEnum1
        public let vehicleType: VehicleTypeEnum?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            flightSetupNotes: String? = nil,
            orderId: String,
            orderScheduleTemplatePathIdempotencyKey: String? = nil,
            taskGroupType: TaskGroupTypeEnum1,
            vehicleType: VehicleTypeEnum? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.flightSetupNotes = flightSetupNotes
            self.orderId = orderId
            self.orderScheduleTemplatePathIdempotencyKey = orderScheduleTemplatePathIdempotencyKey
            self.taskGroupType = taskGroupType
            self.vehicleType = vehicleType
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.flightSetupNotes = try container.decodeIfPresent(String.self, forKey: .flightSetupNotes)
            self.orderId = try container.decode(String.self, forKey: .orderId)
            self.orderScheduleTemplatePathIdempotencyKey = try container.decodeIfPresent(String.self, forKey: .orderScheduleTemplatePathIdempotencyKey)
            self.taskGroupType = try container.decode(TaskGroupTypeEnum1.self, forKey: .taskGroupType)
            self.vehicleType = try container.decodeIfPresent(VehicleTypeEnum.self, forKey: .vehicleType)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.flightSetupNotes, forKey: .flightSetupNotes)
            try container.encode(self.orderId, forKey: .orderId)
            try container.encodeIfPresent(self.orderScheduleTemplatePathIdempotencyKey, forKey: .orderScheduleTemplatePathIdempotencyKey)
            try container.encode(self.taskGroupType, forKey: .taskGroupType)
            try container.encodeIfPresent(self.vehicleType, forKey: .vehicleType)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case flightSetupNotes = "flight_setup_notes"
            case orderId = "order_id"
            case orderScheduleTemplatePathIdempotencyKey = "order_schedule_template_path_idempotency_key"
            case taskGroupType = "task_group_type"
            case vehicleType = "vehicle_type"
        }
    }
}