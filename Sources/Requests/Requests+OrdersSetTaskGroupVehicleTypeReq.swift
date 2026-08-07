import Foundation

extension Requests {
    public struct OrdersSetTaskGroupVehicleTypeReq: Codable, Hashable, Sendable {
        public let vehicleType: VehicleTypeEnum
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            vehicleType: VehicleTypeEnum,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.vehicleType = vehicleType
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.vehicleType = try container.decode(VehicleTypeEnum.self, forKey: .vehicleType)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.vehicleType, forKey: .vehicleType)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case vehicleType = "vehicle_type"
        }
    }
}