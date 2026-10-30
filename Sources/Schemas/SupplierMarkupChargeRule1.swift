import Foundation

public struct SupplierMarkupChargeRule1: Codable, Hashable, Sendable {
    public let appliesToLineItemTypes: [InvoiceLineItemTypeEnum1]
    public let appliesToRelationshipTypes: [SupplierMarkupChargeRule1AppliesToRelationshipTypesItem]?
    public let chargedPer: TaskGroup?
    public let combineSourcesIntoOneCharge: Bool?
    public let exportRefSageItemId: String?
    public let lineItemDescription: String
    public let pricingMethod: RateSheetRulePricingMethodEnum1
    public let pricingPercentage: Double
    public let ruleKey: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        appliesToLineItemTypes: [InvoiceLineItemTypeEnum1],
        appliesToRelationshipTypes: [SupplierMarkupChargeRule1AppliesToRelationshipTypesItem]? = nil,
        chargedPer: TaskGroup? = nil,
        combineSourcesIntoOneCharge: Bool? = nil,
        exportRefSageItemId: String? = nil,
        lineItemDescription: String,
        pricingMethod: RateSheetRulePricingMethodEnum1,
        pricingPercentage: Double,
        ruleKey: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.appliesToLineItemTypes = appliesToLineItemTypes
        self.appliesToRelationshipTypes = appliesToRelationshipTypes
        self.chargedPer = chargedPer
        self.combineSourcesIntoOneCharge = combineSourcesIntoOneCharge
        self.exportRefSageItemId = exportRefSageItemId
        self.lineItemDescription = lineItemDescription
        self.pricingMethod = pricingMethod
        self.pricingPercentage = pricingPercentage
        self.ruleKey = ruleKey
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.appliesToLineItemTypes = try container.decode([InvoiceLineItemTypeEnum1].self, forKey: .appliesToLineItemTypes)
        self.appliesToRelationshipTypes = try container.decodeIfPresent([SupplierMarkupChargeRule1AppliesToRelationshipTypesItem].self, forKey: .appliesToRelationshipTypes)
        self.chargedPer = try container.decodeIfPresent(TaskGroup.self, forKey: .chargedPer)
        self.combineSourcesIntoOneCharge = try container.decodeIfPresent(Bool.self, forKey: .combineSourcesIntoOneCharge)
        self.exportRefSageItemId = try container.decodeIfPresent(String.self, forKey: .exportRefSageItemId)
        self.lineItemDescription = try container.decode(String.self, forKey: .lineItemDescription)
        self.pricingMethod = try container.decode(RateSheetRulePricingMethodEnum1.self, forKey: .pricingMethod)
        self.pricingPercentage = try container.decode(Double.self, forKey: .pricingPercentage)
        self.ruleKey = try container.decodeIfPresent(String.self, forKey: .ruleKey)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.appliesToLineItemTypes, forKey: .appliesToLineItemTypes)
        try container.encodeIfPresent(self.appliesToRelationshipTypes, forKey: .appliesToRelationshipTypes)
        try container.encodeIfPresent(self.chargedPer, forKey: .chargedPer)
        try container.encodeIfPresent(self.combineSourcesIntoOneCharge, forKey: .combineSourcesIntoOneCharge)
        try container.encodeIfPresent(self.exportRefSageItemId, forKey: .exportRefSageItemId)
        try container.encode(self.lineItemDescription, forKey: .lineItemDescription)
        try container.encode(self.pricingMethod, forKey: .pricingMethod)
        try container.encode(self.pricingPercentage, forKey: .pricingPercentage)
        try container.encodeIfPresent(self.ruleKey, forKey: .ruleKey)
    }

    public enum TaskGroup: String, Codable, Hashable, CaseIterable, Sendable {
        case taskGroup = "task_group"
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case appliesToLineItemTypes = "applies_to_line_item_types"
        case appliesToRelationshipTypes = "applies_to_relationship_types"
        case chargedPer = "charged_per"
        case combineSourcesIntoOneCharge = "combine_sources_into_one_charge"
        case exportRefSageItemId = "export_ref__sage__item_id"
        case lineItemDescription = "line_item_description"
        case pricingMethod = "pricing_method"
        case pricingPercentage = "pricing_percentage"
        case ruleKey = "rule_key"
    }
}