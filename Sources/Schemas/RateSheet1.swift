import Foundation

public struct RateSheet1: Codable, Hashable, Sendable {
    public let id: String
    /// applies only to the additional/incremental miles
    public let additionalMileageRateUsdPerMile: Double?
    public let afterHoursRateUsdPerInstance: Double?
    public let archived: Bool?
    public let baseMileageDistanceMiles: Double?
    public let baseMileageRateUsdPerInstance: Double?
    public let cargoTypes: [CargoTypeEnum1]?
    public let comments: String?
    public let dangerousGoodsRateUsdPerInstance: Double?
    public let extraStopRateUsd: Double?
    public let fuelSurchargeRateUsdPerMile: Double?
    public let holidayRateUsdPerInstance: Double?
    public let longDistanceSurchargeMilesBeforeSurcharge: Double?
    /// applies only to the additional/incremental miles
    public let longDistanceSurchargeRateUsdPerMile: Double?
    public let name: String?
    /// Must be a string starting with `org_`
    public let ownedByOrgId: String
    public let ownedByOrgType: OrgTypeEnum
    public let paymentVectorType: PaymentVectorTypeEnum1
    public let schemaVersion: Int
    public let serviceType: ServiceTypeEnum1
    public let vehicleTypes: [VehicleTypeEnum]?
    public let waitTimeBeforeChargeMinutes: Double?
    public let waitTimeRateUsdPerMinute: Double?
    public let weekendRateUsdPerInstance: Double?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        additionalMileageRateUsdPerMile: Double? = nil,
        afterHoursRateUsdPerInstance: Double? = nil,
        archived: Bool? = nil,
        baseMileageDistanceMiles: Double? = nil,
        baseMileageRateUsdPerInstance: Double? = nil,
        cargoTypes: [CargoTypeEnum1]? = nil,
        comments: String? = nil,
        dangerousGoodsRateUsdPerInstance: Double? = nil,
        extraStopRateUsd: Double? = nil,
        fuelSurchargeRateUsdPerMile: Double? = nil,
        holidayRateUsdPerInstance: Double? = nil,
        longDistanceSurchargeMilesBeforeSurcharge: Double? = nil,
        longDistanceSurchargeRateUsdPerMile: Double? = nil,
        name: String? = nil,
        ownedByOrgId: String,
        ownedByOrgType: OrgTypeEnum,
        paymentVectorType: PaymentVectorTypeEnum1,
        schemaVersion: Int,
        serviceType: ServiceTypeEnum1,
        vehicleTypes: [VehicleTypeEnum]? = nil,
        waitTimeBeforeChargeMinutes: Double? = nil,
        waitTimeRateUsdPerMinute: Double? = nil,
        weekendRateUsdPerInstance: Double? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.additionalMileageRateUsdPerMile = additionalMileageRateUsdPerMile
        self.afterHoursRateUsdPerInstance = afterHoursRateUsdPerInstance
        self.archived = archived
        self.baseMileageDistanceMiles = baseMileageDistanceMiles
        self.baseMileageRateUsdPerInstance = baseMileageRateUsdPerInstance
        self.cargoTypes = cargoTypes
        self.comments = comments
        self.dangerousGoodsRateUsdPerInstance = dangerousGoodsRateUsdPerInstance
        self.extraStopRateUsd = extraStopRateUsd
        self.fuelSurchargeRateUsdPerMile = fuelSurchargeRateUsdPerMile
        self.holidayRateUsdPerInstance = holidayRateUsdPerInstance
        self.longDistanceSurchargeMilesBeforeSurcharge = longDistanceSurchargeMilesBeforeSurcharge
        self.longDistanceSurchargeRateUsdPerMile = longDistanceSurchargeRateUsdPerMile
        self.name = name
        self.ownedByOrgId = ownedByOrgId
        self.ownedByOrgType = ownedByOrgType
        self.paymentVectorType = paymentVectorType
        self.schemaVersion = schemaVersion
        self.serviceType = serviceType
        self.vehicleTypes = vehicleTypes
        self.waitTimeBeforeChargeMinutes = waitTimeBeforeChargeMinutes
        self.waitTimeRateUsdPerMinute = waitTimeRateUsdPerMinute
        self.weekendRateUsdPerInstance = weekendRateUsdPerInstance
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.additionalMileageRateUsdPerMile = try container.decodeIfPresent(Double.self, forKey: .additionalMileageRateUsdPerMile)
        self.afterHoursRateUsdPerInstance = try container.decodeIfPresent(Double.self, forKey: .afterHoursRateUsdPerInstance)
        self.archived = try container.decodeIfPresent(Bool.self, forKey: .archived)
        self.baseMileageDistanceMiles = try container.decodeIfPresent(Double.self, forKey: .baseMileageDistanceMiles)
        self.baseMileageRateUsdPerInstance = try container.decodeIfPresent(Double.self, forKey: .baseMileageRateUsdPerInstance)
        self.cargoTypes = try container.decodeIfPresent([CargoTypeEnum1].self, forKey: .cargoTypes)
        self.comments = try container.decodeIfPresent(String.self, forKey: .comments)
        self.dangerousGoodsRateUsdPerInstance = try container.decodeIfPresent(Double.self, forKey: .dangerousGoodsRateUsdPerInstance)
        self.extraStopRateUsd = try container.decodeIfPresent(Double.self, forKey: .extraStopRateUsd)
        self.fuelSurchargeRateUsdPerMile = try container.decodeIfPresent(Double.self, forKey: .fuelSurchargeRateUsdPerMile)
        self.holidayRateUsdPerInstance = try container.decodeIfPresent(Double.self, forKey: .holidayRateUsdPerInstance)
        self.longDistanceSurchargeMilesBeforeSurcharge = try container.decodeIfPresent(Double.self, forKey: .longDistanceSurchargeMilesBeforeSurcharge)
        self.longDistanceSurchargeRateUsdPerMile = try container.decodeIfPresent(Double.self, forKey: .longDistanceSurchargeRateUsdPerMile)
        self.name = try container.decodeIfPresent(String.self, forKey: .name)
        self.ownedByOrgId = try container.decode(String.self, forKey: .ownedByOrgId)
        self.ownedByOrgType = try container.decode(OrgTypeEnum.self, forKey: .ownedByOrgType)
        self.paymentVectorType = try container.decode(PaymentVectorTypeEnum1.self, forKey: .paymentVectorType)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.serviceType = try container.decode(ServiceTypeEnum1.self, forKey: .serviceType)
        self.vehicleTypes = try container.decodeIfPresent([VehicleTypeEnum].self, forKey: .vehicleTypes)
        self.waitTimeBeforeChargeMinutes = try container.decodeIfPresent(Double.self, forKey: .waitTimeBeforeChargeMinutes)
        self.waitTimeRateUsdPerMinute = try container.decodeIfPresent(Double.self, forKey: .waitTimeRateUsdPerMinute)
        self.weekendRateUsdPerInstance = try container.decodeIfPresent(Double.self, forKey: .weekendRateUsdPerInstance)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encodeIfPresent(self.additionalMileageRateUsdPerMile, forKey: .additionalMileageRateUsdPerMile)
        try container.encodeIfPresent(self.afterHoursRateUsdPerInstance, forKey: .afterHoursRateUsdPerInstance)
        try container.encodeIfPresent(self.archived, forKey: .archived)
        try container.encodeIfPresent(self.baseMileageDistanceMiles, forKey: .baseMileageDistanceMiles)
        try container.encodeIfPresent(self.baseMileageRateUsdPerInstance, forKey: .baseMileageRateUsdPerInstance)
        try container.encodeIfPresent(self.cargoTypes, forKey: .cargoTypes)
        try container.encodeIfPresent(self.comments, forKey: .comments)
        try container.encodeIfPresent(self.dangerousGoodsRateUsdPerInstance, forKey: .dangerousGoodsRateUsdPerInstance)
        try container.encodeIfPresent(self.extraStopRateUsd, forKey: .extraStopRateUsd)
        try container.encodeIfPresent(self.fuelSurchargeRateUsdPerMile, forKey: .fuelSurchargeRateUsdPerMile)
        try container.encodeIfPresent(self.holidayRateUsdPerInstance, forKey: .holidayRateUsdPerInstance)
        try container.encodeIfPresent(self.longDistanceSurchargeMilesBeforeSurcharge, forKey: .longDistanceSurchargeMilesBeforeSurcharge)
        try container.encodeIfPresent(self.longDistanceSurchargeRateUsdPerMile, forKey: .longDistanceSurchargeRateUsdPerMile)
        try container.encodeIfPresent(self.name, forKey: .name)
        try container.encode(self.ownedByOrgId, forKey: .ownedByOrgId)
        try container.encode(self.ownedByOrgType, forKey: .ownedByOrgType)
        try container.encode(self.paymentVectorType, forKey: .paymentVectorType)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.serviceType, forKey: .serviceType)
        try container.encodeIfPresent(self.vehicleTypes, forKey: .vehicleTypes)
        try container.encodeIfPresent(self.waitTimeBeforeChargeMinutes, forKey: .waitTimeBeforeChargeMinutes)
        try container.encodeIfPresent(self.waitTimeRateUsdPerMinute, forKey: .waitTimeRateUsdPerMinute)
        try container.encodeIfPresent(self.weekendRateUsdPerInstance, forKey: .weekendRateUsdPerInstance)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case additionalMileageRateUsdPerMile = "additional_mileage_rate_usd_per_mile"
        case afterHoursRateUsdPerInstance = "after_hours_rate_usd_per_instance"
        case archived
        case baseMileageDistanceMiles = "base_mileage_distance_miles"
        case baseMileageRateUsdPerInstance = "base_mileage_rate_usd_per_instance"
        case cargoTypes = "cargo_types"
        case comments
        case dangerousGoodsRateUsdPerInstance = "dangerous_goods_rate_usd_per_instance"
        case extraStopRateUsd = "extra_stop_rate_usd"
        case fuelSurchargeRateUsdPerMile = "fuel_surcharge_rate_usd_per_mile"
        case holidayRateUsdPerInstance = "holiday_rate_usd_per_instance"
        case longDistanceSurchargeMilesBeforeSurcharge = "long_distance_surcharge_miles_before_surcharge"
        case longDistanceSurchargeRateUsdPerMile = "long_distance_surcharge_rate_usd_per_mile"
        case name
        case ownedByOrgId = "owned_by_org_id"
        case ownedByOrgType = "owned_by_org_type"
        case paymentVectorType = "payment_vector_type"
        case schemaVersion = "schema_version"
        case serviceType = "service_type"
        case vehicleTypes = "vehicle_types"
        case waitTimeBeforeChargeMinutes = "wait_time_before_charge_minutes"
        case waitTimeRateUsdPerMinute = "wait_time_rate_usd_per_minute"
        case weekendRateUsdPerInstance = "weekend_rate_usd_per_instance"
    }
}