import Foundation

public struct CourierPayDriverRateSheet1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    public let name: JSONValue?
    public let cargoTypes: JSONValue?
    public let vehicleTypes: JSONValue?
    public let routeTypes: JSONValue?
    public let driverIds: JSONValue?
    /// Must be a string starting with `org_`
    public let courierOrgId: String
    public let comments: JSONValue?
    public let baseMileageDistanceMiles: Double
    public let baseMileageRateUsdPerInstance: Double
    /// applies only to the additional miles
    public let additionalMileageRateUsdPerMile: Double
    public let longDistanceSurchargeMilesBeforeSurcharge: Double
    /// applies only to the additional miles
    public let longDistanceSurchargeRateUsdPerMile: Double
    public let fuelSurchargeRateUsdPerMile: Double
    public let waitTimeBeforeChargeMinutes: Double
    public let waitTimeRateUsdPerMinute: Double
    public let extraStopRateUsd: Double
    public let dangerousGoodsRateUsdPerInstance: Double
    public let afterHours: Double
    public let weekend: Double
    public let holiday: Double
    public let id: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        name: JSONValue? = nil,
        cargoTypes: JSONValue? = nil,
        vehicleTypes: JSONValue? = nil,
        routeTypes: JSONValue? = nil,
        driverIds: JSONValue? = nil,
        courierOrgId: String,
        comments: JSONValue? = nil,
        baseMileageDistanceMiles: Double,
        baseMileageRateUsdPerInstance: Double,
        additionalMileageRateUsdPerMile: Double,
        longDistanceSurchargeMilesBeforeSurcharge: Double,
        longDistanceSurchargeRateUsdPerMile: Double,
        fuelSurchargeRateUsdPerMile: Double,
        waitTimeBeforeChargeMinutes: Double,
        waitTimeRateUsdPerMinute: Double,
        extraStopRateUsd: Double,
        dangerousGoodsRateUsdPerInstance: Double,
        afterHours: Double,
        weekend: Double,
        holiday: Double,
        id: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.name = name
        self.cargoTypes = cargoTypes
        self.vehicleTypes = vehicleTypes
        self.routeTypes = routeTypes
        self.driverIds = driverIds
        self.courierOrgId = courierOrgId
        self.comments = comments
        self.baseMileageDistanceMiles = baseMileageDistanceMiles
        self.baseMileageRateUsdPerInstance = baseMileageRateUsdPerInstance
        self.additionalMileageRateUsdPerMile = additionalMileageRateUsdPerMile
        self.longDistanceSurchargeMilesBeforeSurcharge = longDistanceSurchargeMilesBeforeSurcharge
        self.longDistanceSurchargeRateUsdPerMile = longDistanceSurchargeRateUsdPerMile
        self.fuelSurchargeRateUsdPerMile = fuelSurchargeRateUsdPerMile
        self.waitTimeBeforeChargeMinutes = waitTimeBeforeChargeMinutes
        self.waitTimeRateUsdPerMinute = waitTimeRateUsdPerMinute
        self.extraStopRateUsd = extraStopRateUsd
        self.dangerousGoodsRateUsdPerInstance = dangerousGoodsRateUsdPerInstance
        self.afterHours = afterHours
        self.weekend = weekend
        self.holiday = holiday
        self.id = id
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.name = try container.decodeIfPresent(JSONValue.self, forKey: .name)
        self.cargoTypes = try container.decodeIfPresent(JSONValue.self, forKey: .cargoTypes)
        self.vehicleTypes = try container.decodeIfPresent(JSONValue.self, forKey: .vehicleTypes)
        self.routeTypes = try container.decodeIfPresent(JSONValue.self, forKey: .routeTypes)
        self.driverIds = try container.decodeIfPresent(JSONValue.self, forKey: .driverIds)
        self.courierOrgId = try container.decode(String.self, forKey: .courierOrgId)
        self.comments = try container.decodeIfPresent(JSONValue.self, forKey: .comments)
        self.baseMileageDistanceMiles = try container.decode(Double.self, forKey: .baseMileageDistanceMiles)
        self.baseMileageRateUsdPerInstance = try container.decode(Double.self, forKey: .baseMileageRateUsdPerInstance)
        self.additionalMileageRateUsdPerMile = try container.decode(Double.self, forKey: .additionalMileageRateUsdPerMile)
        self.longDistanceSurchargeMilesBeforeSurcharge = try container.decode(Double.self, forKey: .longDistanceSurchargeMilesBeforeSurcharge)
        self.longDistanceSurchargeRateUsdPerMile = try container.decode(Double.self, forKey: .longDistanceSurchargeRateUsdPerMile)
        self.fuelSurchargeRateUsdPerMile = try container.decode(Double.self, forKey: .fuelSurchargeRateUsdPerMile)
        self.waitTimeBeforeChargeMinutes = try container.decode(Double.self, forKey: .waitTimeBeforeChargeMinutes)
        self.waitTimeRateUsdPerMinute = try container.decode(Double.self, forKey: .waitTimeRateUsdPerMinute)
        self.extraStopRateUsd = try container.decode(Double.self, forKey: .extraStopRateUsd)
        self.dangerousGoodsRateUsdPerInstance = try container.decode(Double.self, forKey: .dangerousGoodsRateUsdPerInstance)
        self.afterHours = try container.decode(Double.self, forKey: .afterHours)
        self.weekend = try container.decode(Double.self, forKey: .weekend)
        self.holiday = try container.decode(Double.self, forKey: .holiday)
        self.id = try container.decode(String.self, forKey: .id)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encodeIfPresent(self.name, forKey: .name)
        try container.encodeIfPresent(self.cargoTypes, forKey: .cargoTypes)
        try container.encodeIfPresent(self.vehicleTypes, forKey: .vehicleTypes)
        try container.encodeIfPresent(self.routeTypes, forKey: .routeTypes)
        try container.encodeIfPresent(self.driverIds, forKey: .driverIds)
        try container.encode(self.courierOrgId, forKey: .courierOrgId)
        try container.encodeIfPresent(self.comments, forKey: .comments)
        try container.encode(self.baseMileageDistanceMiles, forKey: .baseMileageDistanceMiles)
        try container.encode(self.baseMileageRateUsdPerInstance, forKey: .baseMileageRateUsdPerInstance)
        try container.encode(self.additionalMileageRateUsdPerMile, forKey: .additionalMileageRateUsdPerMile)
        try container.encode(self.longDistanceSurchargeMilesBeforeSurcharge, forKey: .longDistanceSurchargeMilesBeforeSurcharge)
        try container.encode(self.longDistanceSurchargeRateUsdPerMile, forKey: .longDistanceSurchargeRateUsdPerMile)
        try container.encode(self.fuelSurchargeRateUsdPerMile, forKey: .fuelSurchargeRateUsdPerMile)
        try container.encode(self.waitTimeBeforeChargeMinutes, forKey: .waitTimeBeforeChargeMinutes)
        try container.encode(self.waitTimeRateUsdPerMinute, forKey: .waitTimeRateUsdPerMinute)
        try container.encode(self.extraStopRateUsd, forKey: .extraStopRateUsd)
        try container.encode(self.dangerousGoodsRateUsdPerInstance, forKey: .dangerousGoodsRateUsdPerInstance)
        try container.encode(self.afterHours, forKey: .afterHours)
        try container.encode(self.weekend, forKey: .weekend)
        try container.encode(self.holiday, forKey: .holiday)
        try container.encode(self.id, forKey: .id)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion = "schema_version"
        case name
        case cargoTypes = "cargo_types"
        case vehicleTypes = "vehicle_types"
        case routeTypes = "route_types"
        case driverIds = "driver_ids"
        case courierOrgId = "courier_org_id"
        case comments
        case baseMileageDistanceMiles = "base_mileage_distance_miles"
        case baseMileageRateUsdPerInstance = "base_mileage_rate_usd_per_instance"
        case additionalMileageRateUsdPerMile = "additional_mileage_rate_usd_per_mile"
        case longDistanceSurchargeMilesBeforeSurcharge = "long_distance_surcharge_miles_before_surcharge"
        case longDistanceSurchargeRateUsdPerMile = "long_distance_surcharge_rate_usd_per_mile"
        case fuelSurchargeRateUsdPerMile = "fuel_surcharge_rate_usd_per_mile"
        case waitTimeBeforeChargeMinutes = "wait_time_before_charge_minutes"
        case waitTimeRateUsdPerMinute = "wait_time_rate_usd_per_minute"
        case extraStopRateUsd = "extra_stop_rate_usd"
        case dangerousGoodsRateUsdPerInstance = "dangerous_goods_rate_usd_per_instance"
        case afterHours = "after_hours"
        case weekend
        case holiday
        case id = "_id"
    }
}