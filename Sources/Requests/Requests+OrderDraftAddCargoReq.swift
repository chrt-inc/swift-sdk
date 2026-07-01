import Foundation

extension Requests {
    public struct OrderDraftAddCargoReq: Codable, Hashable, Sendable {
        public let cargo: CargoClientCreate1
        public let orderId: String
        public let orderScheduleTemplatePathIdempotencyKey: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            cargo: CargoClientCreate1,
            orderId: String,
            orderScheduleTemplatePathIdempotencyKey: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.cargo = cargo
            self.orderId = orderId
            self.orderScheduleTemplatePathIdempotencyKey = orderScheduleTemplatePathIdempotencyKey
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.cargo = try container.decode(CargoClientCreate1.self, forKey: .cargo)
            self.orderId = try container.decode(String.self, forKey: .orderId)
            self.orderScheduleTemplatePathIdempotencyKey = try container.decodeIfPresent(String.self, forKey: .orderScheduleTemplatePathIdempotencyKey)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.cargo, forKey: .cargo)
            try container.encode(self.orderId, forKey: .orderId)
            try container.encodeIfPresent(self.orderScheduleTemplatePathIdempotencyKey, forKey: .orderScheduleTemplatePathIdempotencyKey)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case cargo
            case orderId = "order_id"
            case orderScheduleTemplatePathIdempotencyKey = "order_schedule_template_path_idempotency_key"
        }
    }
}