import Foundation

extension Requests {
    public struct RateSheetClientUpdate1: Codable, Hashable, Sendable {
        public let cargoTypes: [CargoTypeEnum1]?
        public let comments: String?
        public let name: String?
        public let vehicleTypes: [VehicleTypeEnum]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            cargoTypes: [CargoTypeEnum1]? = nil,
            comments: String? = nil,
            name: String? = nil,
            vehicleTypes: [VehicleTypeEnum]? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.cargoTypes = cargoTypes
            self.comments = comments
            self.name = name
            self.vehicleTypes = vehicleTypes
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.cargoTypes = try container.decodeIfPresent([CargoTypeEnum1].self, forKey: .cargoTypes)
            self.comments = try container.decodeIfPresent(String.self, forKey: .comments)
            self.name = try container.decodeIfPresent(String.self, forKey: .name)
            self.vehicleTypes = try container.decodeIfPresent([VehicleTypeEnum].self, forKey: .vehicleTypes)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.cargoTypes, forKey: .cargoTypes)
            try container.encodeIfPresent(self.comments, forKey: .comments)
            try container.encodeIfPresent(self.name, forKey: .name)
            try container.encodeIfPresent(self.vehicleTypes, forKey: .vehicleTypes)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case cargoTypes = "cargo_types"
            case comments
            case name
            case vehicleTypes = "vehicle_types"
        }
    }
}