import Foundation

extension Requests {
    public struct RateSheetClientCreate1: Codable, Hashable, Sendable {
        public let schemaVersion: Int
        public let archived: Bool?
        public let name: String?
        public let comments: String?
        public let cargoTypes: [CargoTypeEnum1]?
        public let vehicleTypes: [VehicleTypeEnum]?
        public let serviceType: ServiceTypeEnum1
        public let baseMileageDistanceMiles: Double?
        public let baseMileageRateUsdPerInstance: Double?
        /// applies only to the additional/incremental miles
        public let additionalMileageRateUsdPerMile: Double?
        public let longDistanceSurchargeMilesBeforeSurcharge: Double?
        /// applies only to the additional/incremental miles
        public let longDistanceSurchargeRateUsdPerMile: Double?
        public let fuelSurchargeRateUsdPerMile: Double?
        public let waitTimeBeforeChargeMinutes: Double?
        public let waitTimeRateUsdPerMinute: Double?
        public let extraStopRateUsd: Double?
        public let dangerousGoodsRateUsdPerInstance: Double?
        public let afterHoursRateUsdPerInstance: Double?
        public let weekendRateUsdPerInstance: Double?
        public let holidayRateUsdPerInstance: Double?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            schemaVersion: Int,
            archived: Bool? = nil,
            name: String? = nil,
            comments: String? = nil,
            cargoTypes: [CargoTypeEnum1]? = nil,
            vehicleTypes: [VehicleTypeEnum]? = nil,
            serviceType: ServiceTypeEnum1,
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
            afterHoursRateUsdPerInstance: Double? = nil,
            weekendRateUsdPerInstance: Double? = nil,
            holidayRateUsdPerInstance: Double? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.schemaVersion = schemaVersion
            self.archived = archived
            self.name = name
            self.comments = comments
            self.cargoTypes = cargoTypes
            self.vehicleTypes = vehicleTypes
            self.serviceType = serviceType
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
            self.afterHoursRateUsdPerInstance = afterHoursRateUsdPerInstance
            self.weekendRateUsdPerInstance = weekendRateUsdPerInstance
            self.holidayRateUsdPerInstance = holidayRateUsdPerInstance
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
            self.archived = try container.decodeIfPresent(Bool.self, forKey: .archived)
            self.name = try container.decodeIfPresent(String.self, forKey: .name)
            self.comments = try container.decodeIfPresent(String.self, forKey: .comments)
            self.cargoTypes = try container.decodeIfPresent([CargoTypeEnum1].self, forKey: .cargoTypes)
            self.vehicleTypes = try container.decodeIfPresent([VehicleTypeEnum].self, forKey: .vehicleTypes)
            self.serviceType = try container.decode(ServiceTypeEnum1.self, forKey: .serviceType)
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
            self.afterHoursRateUsdPerInstance = try container.decodeIfPresent(Double.self, forKey: .afterHoursRateUsdPerInstance)
            self.weekendRateUsdPerInstance = try container.decodeIfPresent(Double.self, forKey: .weekendRateUsdPerInstance)
            self.holidayRateUsdPerInstance = try container.decodeIfPresent(Double.self, forKey: .holidayRateUsdPerInstance)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.schemaVersion, forKey: .schemaVersion)
            try container.encodeIfPresent(self.archived, forKey: .archived)
            try container.encodeIfPresent(self.name, forKey: .name)
            try container.encodeIfPresent(self.comments, forKey: .comments)
            try container.encodeIfPresent(self.cargoTypes, forKey: .cargoTypes)
            try container.encodeIfPresent(self.vehicleTypes, forKey: .vehicleTypes)
            try container.encode(self.serviceType, forKey: .serviceType)
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
            try container.encodeIfPresent(self.afterHoursRateUsdPerInstance, forKey: .afterHoursRateUsdPerInstance)
            try container.encodeIfPresent(self.weekendRateUsdPerInstance, forKey: .weekendRateUsdPerInstance)
            try container.encodeIfPresent(self.holidayRateUsdPerInstance, forKey: .holidayRateUsdPerInstance)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case schemaVersion = "schema_version"
            case archived
            case name
            case comments
            case cargoTypes = "cargo_types"
            case vehicleTypes = "vehicle_types"
            case serviceType = "service_type"
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
            case afterHoursRateUsdPerInstance = "after_hours_rate_usd_per_instance"
            case weekendRateUsdPerInstance = "weekend_rate_usd_per_instance"
            case holidayRateUsdPerInstance = "holiday_rate_usd_per_instance"
        }
    }
}