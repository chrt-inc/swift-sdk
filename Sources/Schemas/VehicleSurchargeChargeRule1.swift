import Foundation

public struct VehicleSurchargeChargeRule1: Codable, Hashable, Sendable {
    public let appliesToLineItemTypes: [InvoiceLineItemTypeEnum1]?
    public let chargedPer: VehicleSurchargeChargeRule1ChargedPer?
    public let exportRefSageItemId: String?
    public let flatRate: Double?
    public let lineItemDescription: String
    public let ruleKey: String?
    public let surchargePercentage: Double?
    public let vehicleTypes: [VehicleTypeEnum]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        appliesToLineItemTypes: [InvoiceLineItemTypeEnum1]? = nil,
        chargedPer: VehicleSurchargeChargeRule1ChargedPer? = nil,
        exportRefSageItemId: String? = nil,
        flatRate: Double? = nil,
        lineItemDescription: String,
        ruleKey: String? = nil,
        surchargePercentage: Double? = nil,
        vehicleTypes: [VehicleTypeEnum],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.appliesToLineItemTypes = appliesToLineItemTypes
        self.chargedPer = chargedPer
        self.exportRefSageItemId = exportRefSageItemId
        self.flatRate = flatRate
        self.lineItemDescription = lineItemDescription
        self.ruleKey = ruleKey
        self.surchargePercentage = surchargePercentage
        self.vehicleTypes = vehicleTypes
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.appliesToLineItemTypes = try container.decodeIfPresent([InvoiceLineItemTypeEnum1].self, forKey: .appliesToLineItemTypes)
        self.chargedPer = try container.decodeIfPresent(VehicleSurchargeChargeRule1ChargedPer.self, forKey: .chargedPer)
        self.exportRefSageItemId = try container.decodeIfPresent(String.self, forKey: .exportRefSageItemId)
        self.flatRate = try container.decodeIfPresent(Double.self, forKey: .flatRate)
        self.lineItemDescription = try container.decode(String.self, forKey: .lineItemDescription)
        self.ruleKey = try container.decodeIfPresent(String.self, forKey: .ruleKey)
        self.surchargePercentage = try container.decodeIfPresent(Double.self, forKey: .surchargePercentage)
        self.vehicleTypes = try container.decode([VehicleTypeEnum].self, forKey: .vehicleTypes)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.appliesToLineItemTypes, forKey: .appliesToLineItemTypes)
        try container.encodeIfPresent(self.chargedPer, forKey: .chargedPer)
        try container.encodeIfPresent(self.exportRefSageItemId, forKey: .exportRefSageItemId)
        try container.encodeIfPresent(self.flatRate, forKey: .flatRate)
        try container.encode(self.lineItemDescription, forKey: .lineItemDescription)
        try container.encodeIfPresent(self.ruleKey, forKey: .ruleKey)
        try container.encodeIfPresent(self.surchargePercentage, forKey: .surchargePercentage)
        try container.encode(self.vehicleTypes, forKey: .vehicleTypes)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case appliesToLineItemTypes = "applies_to_line_item_types"
        case chargedPer = "charged_per"
        case exportRefSageItemId = "export_ref__sage__item_id"
        case flatRate = "flat_rate"
        case lineItemDescription = "line_item_description"
        case ruleKey = "rule_key"
        case surchargePercentage = "surcharge_percentage"
        case vehicleTypes = "vehicle_types"
    }
}