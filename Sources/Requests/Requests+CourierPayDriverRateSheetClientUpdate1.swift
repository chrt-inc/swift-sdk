import Foundation

extension Requests {
    public struct CourierPayDriverRateSheetClientUpdate1: Codable, Hashable, Sendable {
        public let name: String?
        public let cargoTypes: [CargoTypeEnum1]?
        public let vehicleTypes: [VehicleTypeEnum]?
        public let routeTypes: [RouteTypeEnum1]?
        public let driverIds: [String]?
        public let comments: String?
        public let baseMileageDistanceMiles: Double?
        public let baseMileageRateUsdPerInstance: Double?
        public let additionalMileageRateUsdPerMile: Double?
        public let longDistanceSurchargeMilesBeforeSurcharge: Double?
        public let longDistanceSurchargeRateUsdPerMile: Double?
        public let fuelSurchargeRateUsdPerMile: Double?
        public let waitTimeBeforeChargeMinutes: Double?
        public let waitTimeRateUsdPerMinute: Double?
        public let extraStopRateUsd: Double?
        public let dangerousGoodsRateUsdPerInstance: Double?
        public let afterHours: Double?
        public let weekend: Double?
        public let holiday: Double?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            name: String? = nil,
            cargoTypes: [CargoTypeEnum1]? = nil,
            vehicleTypes: [VehicleTypeEnum]? = nil,
            routeTypes: [RouteTypeEnum1]? = nil,
            driverIds: [String]? = nil,
            comments: String? = nil,
            baseMileageDistanceMiles: Double? = nil,
            baseMileageRateUsdPerInstance: Double? = nil,
            additionalMileageRateUsdPerMile: Double? = nil,
            longDistanceSurchargeMilesBeforeSurcharge: Double? = nil,
            longDistanceSurchargeRateUsdPerMile: Double? = nil,
            fuelSurchargeRateUsdPerMile: Double? = nil,
            waitTimeBeforeChargeMinutes: Double? = nil,
            waitTimeRateUsdPerMinute: Double? = nil,
            extraStopRateUsd: Double? = nil,
            dangerousGoodsRateUsdPerInstance: Double? = nil,
            afterHours: Double? = nil,
            weekend: Double? = nil,
            holiday: Double? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.name = name
            self.cargoTypes = cargoTypes
            self.vehicleTypes = vehicleTypes
            self.routeTypes = routeTypes
            self.driverIds = driverIds
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
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.name = try container.decodeIfPresent(String.self, forKey: .name)
            self.cargoTypes = try container.decodeIfPresent([CargoTypeEnum1].self, forKey: .cargoTypes)
            self.vehicleTypes = try container.decodeIfPresent([VehicleTypeEnum].self, forKey: .vehicleTypes)
            self.routeTypes = try container.decodeIfPresent([RouteTypeEnum1].self, forKey: .routeTypes)
            self.driverIds = try container.decodeIfPresent([String].self, forKey: .driverIds)
            self.comments = try container.decodeIfPresent(String.self, forKey: .comments)
            self.baseMileageDistanceMiles = try container.decodeIfPresent(Double.self, forKey: .baseMileageDistanceMiles)
            self.baseMileageRateUsdPerInstance = try container.decodeIfPresent(Double.self, forKey: .baseMileageRateUsdPerInstance)
            self.additionalMileageRateUsdPerMile = try container.decodeIfPresent(Double.self, forKey: .additionalMileageRateUsdPerMile)
            self.longDistanceSurchargeMilesBeforeSurcharge = try container.decodeIfPresent(Double.self, forKey: .longDistanceSurchargeMilesBeforeSurcharge)
            self.longDistanceSurchargeRateUsdPerMile = try container.decodeIfPresent(Double.self, forKey: .longDistanceSurchargeRateUsdPerMile)
            self.fuelSurchargeRateUsdPerMile = try container.decodeIfPresent(Double.self, forKey: .fuelSurchargeRateUsdPerMile)
            self.waitTimeBeforeChargeMinutes = try container.decodeIfPresent(Double.self, forKey: .waitTimeBeforeChargeMinutes)
            self.waitTimeRateUsdPerMinute = try container.decodeIfPresent(Double.self, forKey: .waitTimeRateUsdPerMinute)
            self.extraStopRateUsd = try container.decodeIfPresent(Double.self, forKey: .extraStopRateUsd)
            self.dangerousGoodsRateUsdPerInstance = try container.decodeIfPresent(Double.self, forKey: .dangerousGoodsRateUsdPerInstance)
            self.afterHours = try container.decodeIfPresent(Double.self, forKey: .afterHours)
            self.weekend = try container.decodeIfPresent(Double.self, forKey: .weekend)
            self.holiday = try container.decodeIfPresent(Double.self, forKey: .holiday)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.name, forKey: .name)
            try container.encodeIfPresent(self.cargoTypes, forKey: .cargoTypes)
            try container.encodeIfPresent(self.vehicleTypes, forKey: .vehicleTypes)
            try container.encodeIfPresent(self.routeTypes, forKey: .routeTypes)
            try container.encodeIfPresent(self.driverIds, forKey: .driverIds)
            try container.encodeIfPresent(self.comments, forKey: .comments)
            try container.encodeIfPresent(self.baseMileageDistanceMiles, forKey: .baseMileageDistanceMiles)
            try container.encodeIfPresent(self.baseMileageRateUsdPerInstance, forKey: .baseMileageRateUsdPerInstance)
            try container.encodeIfPresent(self.additionalMileageRateUsdPerMile, forKey: .additionalMileageRateUsdPerMile)
            try container.encodeIfPresent(self.longDistanceSurchargeMilesBeforeSurcharge, forKey: .longDistanceSurchargeMilesBeforeSurcharge)
            try container.encodeIfPresent(self.longDistanceSurchargeRateUsdPerMile, forKey: .longDistanceSurchargeRateUsdPerMile)
            try container.encodeIfPresent(self.fuelSurchargeRateUsdPerMile, forKey: .fuelSurchargeRateUsdPerMile)
            try container.encodeIfPresent(self.waitTimeBeforeChargeMinutes, forKey: .waitTimeBeforeChargeMinutes)
            try container.encodeIfPresent(self.waitTimeRateUsdPerMinute, forKey: .waitTimeRateUsdPerMinute)
            try container.encodeIfPresent(self.extraStopRateUsd, forKey: .extraStopRateUsd)
            try container.encodeIfPresent(self.dangerousGoodsRateUsdPerInstance, forKey: .dangerousGoodsRateUsdPerInstance)
            try container.encodeIfPresent(self.afterHours, forKey: .afterHours)
            try container.encodeIfPresent(self.weekend, forKey: .weekend)
            try container.encodeIfPresent(self.holiday, forKey: .holiday)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case name
            case cargoTypes = "cargo_types"
            case vehicleTypes = "vehicle_types"
            case routeTypes = "route_types"
            case driverIds = "driver_ids"
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
        }
    }
}