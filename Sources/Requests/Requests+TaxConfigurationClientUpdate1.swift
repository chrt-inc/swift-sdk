import Foundation

extension Requests {
    public struct TaxConfigurationClientUpdate1: Codable, Hashable, Sendable {
        public let name: String?
        public let taxRules: [TaxRule1]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            name: String? = nil,
            taxRules: [TaxRule1]? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.name = name
            self.taxRules = taxRules
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.name = try container.decodeIfPresent(String.self, forKey: .name)
            self.taxRules = try container.decodeIfPresent([TaxRule1].self, forKey: .taxRules)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.name, forKey: .name)
            try container.encodeIfPresent(self.taxRules, forKey: .taxRules)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case name
            case taxRules = "tax_rules"
        }
    }
}