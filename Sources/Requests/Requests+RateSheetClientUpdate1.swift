import Foundation

extension Requests {
    public struct RateSheetClientUpdate1: Codable, Hashable, Sendable {
        public let name: String?
        public let comments: String?
        public let cargoTypes: [CargoTypeEnum1]?
        public let vehicleTypes: [VehicleTypeEnum]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            name: String? = nil,
            comments: String? = nil,
            cargoTypes: [CargoTypeEnum1]? = nil,
            vehicleTypes: [VehicleTypeEnum]? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.name = name
            self.comments = comments
            self.cargoTypes = cargoTypes
            self.vehicleTypes = vehicleTypes
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.name = try container.decodeIfPresent(String.self, forKey: .name)
            self.comments = try container.decodeIfPresent(String.self, forKey: .comments)
            self.cargoTypes = try container.decodeIfPresent([CargoTypeEnum1].self, forKey: .cargoTypes)
            self.vehicleTypes = try container.decodeIfPresent([VehicleTypeEnum].self, forKey: .vehicleTypes)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.name, forKey: .name)
            try container.encodeIfPresent(self.comments, forKey: .comments)
            try container.encodeIfPresent(self.cargoTypes, forKey: .cargoTypes)
            try container.encodeIfPresent(self.vehicleTypes, forKey: .vehicleTypes)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case name
            case comments
            case cargoTypes = "cargo_types"
            case vehicleTypes = "vehicle_types"
        }
    }
}