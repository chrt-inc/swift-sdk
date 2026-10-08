import Foundation

extension Requests {
    public struct ShipperCoordinatorUpdateKnownShipperReq: Codable, Hashable, Sendable {
        public let knownShipper: Bool
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            knownShipper: Bool,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.knownShipper = knownShipper
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.knownShipper = try container.decode(Bool.self, forKey: .knownShipper)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.knownShipper, forKey: .knownShipper)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case knownShipper = "known_shipper"
        }
    }
}