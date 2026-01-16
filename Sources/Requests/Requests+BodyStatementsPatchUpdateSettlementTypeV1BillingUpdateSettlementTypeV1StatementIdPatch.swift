import Foundation

extension Requests {
    public struct BodyStatementsPatchUpdateSettlementTypeV1BillingUpdateSettlementTypeV1StatementIdPatch: Codable, Hashable, Sendable {
        public let settlementType: SettlementTypeEnum1
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            settlementType: SettlementTypeEnum1,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.settlementType = settlementType
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.settlementType = try container.decode(SettlementTypeEnum1.self, forKey: .settlementType)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.settlementType, forKey: .settlementType)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case settlementType = "settlement_type"
        }
    }
}