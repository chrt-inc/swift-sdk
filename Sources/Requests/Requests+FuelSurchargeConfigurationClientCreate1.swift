import Foundation

extension Requests {
    public struct FuelSurchargeConfigurationClientCreate1: Codable, Hashable, Sendable {
        public let counterpartyDriverId: String?
        public let counterpartyOffChrtOrgDataId: String?
        /// Must be a string starting with `org_`
        public let counterpartyOrgId: String?
        public let invoiceType: InvoiceTypeEnum1
        public let name: String
        public let rates: [FuelSurchargeConfigurationRate1]
        public let schemaVersion: Int
        public let shipperAccountId: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            counterpartyDriverId: String? = nil,
            counterpartyOffChrtOrgDataId: String? = nil,
            counterpartyOrgId: String? = nil,
            invoiceType: InvoiceTypeEnum1,
            name: String,
            rates: [FuelSurchargeConfigurationRate1],
            schemaVersion: Int,
            shipperAccountId: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.counterpartyDriverId = counterpartyDriverId
            self.counterpartyOffChrtOrgDataId = counterpartyOffChrtOrgDataId
            self.counterpartyOrgId = counterpartyOrgId
            self.invoiceType = invoiceType
            self.name = name
            self.rates = rates
            self.schemaVersion = schemaVersion
            self.shipperAccountId = shipperAccountId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.counterpartyDriverId = try container.decodeIfPresent(String.self, forKey: .counterpartyDriverId)
            self.counterpartyOffChrtOrgDataId = try container.decodeIfPresent(String.self, forKey: .counterpartyOffChrtOrgDataId)
            self.counterpartyOrgId = try container.decodeIfPresent(String.self, forKey: .counterpartyOrgId)
            self.invoiceType = try container.decode(InvoiceTypeEnum1.self, forKey: .invoiceType)
            self.name = try container.decode(String.self, forKey: .name)
            self.rates = try container.decode([FuelSurchargeConfigurationRate1].self, forKey: .rates)
            self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
            self.shipperAccountId = try container.decodeIfPresent(String.self, forKey: .shipperAccountId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.counterpartyDriverId, forKey: .counterpartyDriverId)
            try container.encodeIfPresent(self.counterpartyOffChrtOrgDataId, forKey: .counterpartyOffChrtOrgDataId)
            try container.encodeIfPresent(self.counterpartyOrgId, forKey: .counterpartyOrgId)
            try container.encode(self.invoiceType, forKey: .invoiceType)
            try container.encode(self.name, forKey: .name)
            try container.encode(self.rates, forKey: .rates)
            try container.encode(self.schemaVersion, forKey: .schemaVersion)
            try container.encodeIfPresent(self.shipperAccountId, forKey: .shipperAccountId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case counterpartyDriverId = "counterparty_driver_id"
            case counterpartyOffChrtOrgDataId = "counterparty_off_chrt_org_data_id"
            case counterpartyOrgId = "counterparty_org_id"
            case invoiceType = "invoice_type"
            case name
            case rates
            case schemaVersion = "schema_version"
            case shipperAccountId = "shipper_account_id"
        }
    }
}