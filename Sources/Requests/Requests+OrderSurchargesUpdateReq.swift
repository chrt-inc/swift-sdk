import Foundation

extension Requests {
    public struct OrderSurchargesUpdateReq: Codable, Hashable, Sendable {
        public let enabledSurchargeTypes: [OrderBillingSurchargeTypeEnum1]
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            enabledSurchargeTypes: [OrderBillingSurchargeTypeEnum1],
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.enabledSurchargeTypes = enabledSurchargeTypes
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.enabledSurchargeTypes = try container.decode([OrderBillingSurchargeTypeEnum1].self, forKey: .enabledSurchargeTypes)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.enabledSurchargeTypes, forKey: .enabledSurchargeTypes)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case enabledSurchargeTypes = "enabled_surcharge_types"
        }
    }
}