import Foundation

extension Requests {
    public struct OrderDraftUpdateCargoReq: Codable, Hashable, Sendable {
        public let cargoId: String
        public let cargoUpdate: CargoClientUpdate1
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            cargoId: String,
            cargoUpdate: CargoClientUpdate1,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.cargoId = cargoId
            self.cargoUpdate = cargoUpdate
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.cargoId = try container.decode(String.self, forKey: .cargoId)
            self.cargoUpdate = try container.decode(CargoClientUpdate1.self, forKey: .cargoUpdate)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.cargoId, forKey: .cargoId)
            try container.encode(self.cargoUpdate, forKey: .cargoUpdate)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case cargoId = "cargo_id"
            case cargoUpdate = "cargo_update"
        }
    }
}