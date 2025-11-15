import Foundation

extension Requests {
    public struct OrderDraftCreateCargoReq: Codable, Hashable, Sendable {
        public let orderId: String
        public let cargo: CargoClientCreate1
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            orderId: String,
            cargo: CargoClientCreate1,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.orderId = orderId
            self.cargo = cargo
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.orderId = try container.decode(String.self, forKey: .orderId)
            self.cargo = try container.decode(CargoClientCreate1.self, forKey: .cargo)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.orderId, forKey: .orderId)
            try container.encode(self.cargo, forKey: .cargo)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case orderId = "order_id"
            case cargo
        }
    }
}