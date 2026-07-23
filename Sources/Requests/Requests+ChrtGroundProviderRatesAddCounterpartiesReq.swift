import Foundation

extension Requests {
    public struct ChrtGroundProviderRatesAddCounterpartiesReq: Codable, Hashable, Sendable {
        public let counterpartyAccountIds: [String]?
        public let counterpartyDriverIds: [String]?
        public let counterpartyOffChrtOrgDataIds: [String]?
        public let counterpartyOrgIds: [String]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            counterpartyAccountIds: [String]? = nil,
            counterpartyDriverIds: [String]? = nil,
            counterpartyOffChrtOrgDataIds: [String]? = nil,
            counterpartyOrgIds: [String]? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.counterpartyAccountIds = counterpartyAccountIds
            self.counterpartyDriverIds = counterpartyDriverIds
            self.counterpartyOffChrtOrgDataIds = counterpartyOffChrtOrgDataIds
            self.counterpartyOrgIds = counterpartyOrgIds
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.counterpartyAccountIds = try container.decodeIfPresent([String].self, forKey: .counterpartyAccountIds)
            self.counterpartyDriverIds = try container.decodeIfPresent([String].self, forKey: .counterpartyDriverIds)
            self.counterpartyOffChrtOrgDataIds = try container.decodeIfPresent([String].self, forKey: .counterpartyOffChrtOrgDataIds)
            self.counterpartyOrgIds = try container.decodeIfPresent([String].self, forKey: .counterpartyOrgIds)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.counterpartyAccountIds, forKey: .counterpartyAccountIds)
            try container.encodeIfPresent(self.counterpartyDriverIds, forKey: .counterpartyDriverIds)
            try container.encodeIfPresent(self.counterpartyOffChrtOrgDataIds, forKey: .counterpartyOffChrtOrgDataIds)
            try container.encodeIfPresent(self.counterpartyOrgIds, forKey: .counterpartyOrgIds)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case counterpartyAccountIds = "counterparty_account_ids"
            case counterpartyDriverIds = "counterparty_driver_ids"
            case counterpartyOffChrtOrgDataIds = "counterparty_off_chrt_org_data_ids"
            case counterpartyOrgIds = "counterparty_org_ids"
        }
    }
}