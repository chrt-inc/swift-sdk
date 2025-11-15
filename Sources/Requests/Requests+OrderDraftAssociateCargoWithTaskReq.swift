import Foundation

extension Requests {
    public struct OrderDraftAssociateCargoWithTaskReq: Codable, Hashable, Sendable {
        public let orderId: String
        public let taskId: String
        public let cargoId: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            orderId: String,
            taskId: String,
            cargoId: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.orderId = orderId
            self.taskId = taskId
            self.cargoId = cargoId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.orderId = try container.decode(String.self, forKey: .orderId)
            self.taskId = try container.decode(String.self, forKey: .taskId)
            self.cargoId = try container.decode(String.self, forKey: .cargoId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.orderId, forKey: .orderId)
            try container.encode(self.taskId, forKey: .taskId)
            try container.encode(self.cargoId, forKey: .cargoId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case orderId = "order_id"
            case taskId = "task_id"
            case cargoId = "cargo_id"
        }
    }
}