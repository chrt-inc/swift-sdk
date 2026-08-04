import Foundation

extension Requests {
    public struct OrderTemplateNewTaskCargoAssociationsReq1: Codable, Hashable, Sendable {
        public let cargoKeys: [String]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            cargoKeys: [String]? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.cargoKeys = cargoKeys
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.cargoKeys = try container.decodeIfPresent([String].self, forKey: .cargoKeys)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.cargoKeys, forKey: .cargoKeys)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case cargoKeys = "cargo_keys"
        }
    }
}