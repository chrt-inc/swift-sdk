import Foundation

extension Requests {
    public struct SetVehicleTypeReq: Codable, Hashable, Sendable {
        public let vehicleType: VehicleTypeEnum?
        public let vehicleTypeSetToNone: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            vehicleType: VehicleTypeEnum? = nil,
            vehicleTypeSetToNone: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.vehicleType = vehicleType
            self.vehicleTypeSetToNone = vehicleTypeSetToNone
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.vehicleType = try container.decodeIfPresent(VehicleTypeEnum.self, forKey: .vehicleType)
            self.vehicleTypeSetToNone = try container.decodeIfPresent(Bool.self, forKey: .vehicleTypeSetToNone)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.vehicleType, forKey: .vehicleType)
            try container.encodeIfPresent(self.vehicleTypeSetToNone, forKey: .vehicleTypeSetToNone)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case vehicleType = "vehicle_type"
            case vehicleTypeSetToNone = "vehicle_type__set_to_None"
        }
    }
}