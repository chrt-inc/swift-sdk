import Foundation

extension Requests {
    public struct ChrtGroundProviderRateSheetClientUpdate1: Codable, Hashable, Sendable {
        public let name: String?
        public let comments: String?
        public let cargoTypes: [CargoTypeEnum1]?
        public let vehicleTypes: [VehicleTypeEnum]?
        public let baseMileageDistanceMiles: Double?
        public let baseMileageRateUsdPerInstance: Double?
        public let additionalMileageRateUsdPerMile: Double?
        public let longDistanceSurchargeMilesBeforeSurcharge: Double?
        public let longDistanceSurchargeRateUsdPerMile: Double?
        public let fuelSurchargeRateUsdPerMile: Double?
        public let waitTimeBeforeChargeMinutes: Double?
        public let waitTimeRateUsdPerMinute: Double?
        public let extraStopRateUsd: Double?
        public let attemptRateUsdPerInstance: Double?
        public let pickAndHoldRateUsdPerInstance: Double?
        public let dangerousGoodsRateUsdPerInstance: Double?
        public let afterHoursRateUsdPerInstance: Double?
        public let weekendRateUsdPerInstance: Double?
        public let holidayRateUsdPerInstance: Double?
        public let nameSetToNone: Bool?
        public let commentsSetToNone: Bool?
        public let baseMileageDistanceMilesSetToNone: Bool?
        public let baseMileageRateUsdPerInstanceSetToNone: Bool?
        public let additionalMileageRateUsdPerMileSetToNone: Bool?
        public let longDistanceSurchargeMilesBeforeSurchargeSetToNone: Bool?
        public let longDistanceSurchargeRateUsdPerMileSetToNone: Bool?
        public let fuelSurchargeRateUsdPerMileSetToNone: Bool?
        public let waitTimeBeforeChargeMinutesSetToNone: Bool?
        public let waitTimeRateUsdPerMinuteSetToNone: Bool?
        public let extraStopRateUsdSetToNone: Bool?
        public let attemptRateUsdPerInstanceSetToNone: Bool?
        public let pickAndHoldRateUsdPerInstanceSetToNone: Bool?
        public let dangerousGoodsRateUsdPerInstanceSetToNone: Bool?
        public let afterHoursRateUsdPerInstanceSetToNone: Bool?
        public let weekendRateUsdPerInstanceSetToNone: Bool?
        public let holidayRateUsdPerInstanceSetToNone: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            name: String? = nil,
            comments: String? = nil,
            cargoTypes: [CargoTypeEnum1]? = nil,
            vehicleTypes: [VehicleTypeEnum]? = nil,
            baseMileageDistanceMiles: Double? = nil,
            baseMileageRateUsdPerInstance: Double? = nil,
            additionalMileageRateUsdPerMile: Double? = nil,
            longDistanceSurchargeMilesBeforeSurcharge: Double? = nil,
            longDistanceSurchargeRateUsdPerMile: Double? = nil,
            fuelSurchargeRateUsdPerMile: Double? = nil,
            waitTimeBeforeChargeMinutes: Double? = nil,
            waitTimeRateUsdPerMinute: Double? = nil,
            extraStopRateUsd: Double? = nil,
            attemptRateUsdPerInstance: Double? = nil,
            pickAndHoldRateUsdPerInstance: Double? = nil,
            dangerousGoodsRateUsdPerInstance: Double? = nil,
            afterHoursRateUsdPerInstance: Double? = nil,
            weekendRateUsdPerInstance: Double? = nil,
            holidayRateUsdPerInstance: Double? = nil,
            nameSetToNone: Bool? = nil,
            commentsSetToNone: Bool? = nil,
            baseMileageDistanceMilesSetToNone: Bool? = nil,
            baseMileageRateUsdPerInstanceSetToNone: Bool? = nil,
            additionalMileageRateUsdPerMileSetToNone: Bool? = nil,
            longDistanceSurchargeMilesBeforeSurchargeSetToNone: Bool? = nil,
            longDistanceSurchargeRateUsdPerMileSetToNone: Bool? = nil,
            fuelSurchargeRateUsdPerMileSetToNone: Bool? = nil,
            waitTimeBeforeChargeMinutesSetToNone: Bool? = nil,
            waitTimeRateUsdPerMinuteSetToNone: Bool? = nil,
            extraStopRateUsdSetToNone: Bool? = nil,
            attemptRateUsdPerInstanceSetToNone: Bool? = nil,
            pickAndHoldRateUsdPerInstanceSetToNone: Bool? = nil,
            dangerousGoodsRateUsdPerInstanceSetToNone: Bool? = nil,
            afterHoursRateUsdPerInstanceSetToNone: Bool? = nil,
            weekendRateUsdPerInstanceSetToNone: Bool? = nil,
            holidayRateUsdPerInstanceSetToNone: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.name = name
            self.comments = comments
            self.cargoTypes = cargoTypes
            self.vehicleTypes = vehicleTypes
            self.baseMileageDistanceMiles = baseMileageDistanceMiles
            self.baseMileageRateUsdPerInstance = baseMileageRateUsdPerInstance
            self.additionalMileageRateUsdPerMile = additionalMileageRateUsdPerMile
            self.longDistanceSurchargeMilesBeforeSurcharge = longDistanceSurchargeMilesBeforeSurcharge
            self.longDistanceSurchargeRateUsdPerMile = longDistanceSurchargeRateUsdPerMile
            self.fuelSurchargeRateUsdPerMile = fuelSurchargeRateUsdPerMile
            self.waitTimeBeforeChargeMinutes = waitTimeBeforeChargeMinutes
            self.waitTimeRateUsdPerMinute = waitTimeRateUsdPerMinute
            self.extraStopRateUsd = extraStopRateUsd
            self.attemptRateUsdPerInstance = attemptRateUsdPerInstance
            self.pickAndHoldRateUsdPerInstance = pickAndHoldRateUsdPerInstance
            self.dangerousGoodsRateUsdPerInstance = dangerousGoodsRateUsdPerInstance
            self.afterHoursRateUsdPerInstance = afterHoursRateUsdPerInstance
            self.weekendRateUsdPerInstance = weekendRateUsdPerInstance
            self.holidayRateUsdPerInstance = holidayRateUsdPerInstance
            self.nameSetToNone = nameSetToNone
            self.commentsSetToNone = commentsSetToNone
            self.baseMileageDistanceMilesSetToNone = baseMileageDistanceMilesSetToNone
            self.baseMileageRateUsdPerInstanceSetToNone = baseMileageRateUsdPerInstanceSetToNone
            self.additionalMileageRateUsdPerMileSetToNone = additionalMileageRateUsdPerMileSetToNone
            self.longDistanceSurchargeMilesBeforeSurchargeSetToNone = longDistanceSurchargeMilesBeforeSurchargeSetToNone
            self.longDistanceSurchargeRateUsdPerMileSetToNone = longDistanceSurchargeRateUsdPerMileSetToNone
            self.fuelSurchargeRateUsdPerMileSetToNone = fuelSurchargeRateUsdPerMileSetToNone
            self.waitTimeBeforeChargeMinutesSetToNone = waitTimeBeforeChargeMinutesSetToNone
            self.waitTimeRateUsdPerMinuteSetToNone = waitTimeRateUsdPerMinuteSetToNone
            self.extraStopRateUsdSetToNone = extraStopRateUsdSetToNone
            self.attemptRateUsdPerInstanceSetToNone = attemptRateUsdPerInstanceSetToNone
            self.pickAndHoldRateUsdPerInstanceSetToNone = pickAndHoldRateUsdPerInstanceSetToNone
            self.dangerousGoodsRateUsdPerInstanceSetToNone = dangerousGoodsRateUsdPerInstanceSetToNone
            self.afterHoursRateUsdPerInstanceSetToNone = afterHoursRateUsdPerInstanceSetToNone
            self.weekendRateUsdPerInstanceSetToNone = weekendRateUsdPerInstanceSetToNone
            self.holidayRateUsdPerInstanceSetToNone = holidayRateUsdPerInstanceSetToNone
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.name = try container.decodeIfPresent(String.self, forKey: .name)
            self.comments = try container.decodeIfPresent(String.self, forKey: .comments)
            self.cargoTypes = try container.decodeIfPresent([CargoTypeEnum1].self, forKey: .cargoTypes)
            self.vehicleTypes = try container.decodeIfPresent([VehicleTypeEnum].self, forKey: .vehicleTypes)
            self.baseMileageDistanceMiles = try container.decodeIfPresent(Double.self, forKey: .baseMileageDistanceMiles)
            self.baseMileageRateUsdPerInstance = try container.decodeIfPresent(Double.self, forKey: .baseMileageRateUsdPerInstance)
            self.additionalMileageRateUsdPerMile = try container.decodeIfPresent(Double.self, forKey: .additionalMileageRateUsdPerMile)
            self.longDistanceSurchargeMilesBeforeSurcharge = try container.decodeIfPresent(Double.self, forKey: .longDistanceSurchargeMilesBeforeSurcharge)
            self.longDistanceSurchargeRateUsdPerMile = try container.decodeIfPresent(Double.self, forKey: .longDistanceSurchargeRateUsdPerMile)
            self.fuelSurchargeRateUsdPerMile = try container.decodeIfPresent(Double.self, forKey: .fuelSurchargeRateUsdPerMile)
            self.waitTimeBeforeChargeMinutes = try container.decodeIfPresent(Double.self, forKey: .waitTimeBeforeChargeMinutes)
            self.waitTimeRateUsdPerMinute = try container.decodeIfPresent(Double.self, forKey: .waitTimeRateUsdPerMinute)
            self.extraStopRateUsd = try container.decodeIfPresent(Double.self, forKey: .extraStopRateUsd)
            self.attemptRateUsdPerInstance = try container.decodeIfPresent(Double.self, forKey: .attemptRateUsdPerInstance)
            self.pickAndHoldRateUsdPerInstance = try container.decodeIfPresent(Double.self, forKey: .pickAndHoldRateUsdPerInstance)
            self.dangerousGoodsRateUsdPerInstance = try container.decodeIfPresent(Double.self, forKey: .dangerousGoodsRateUsdPerInstance)
            self.afterHoursRateUsdPerInstance = try container.decodeIfPresent(Double.self, forKey: .afterHoursRateUsdPerInstance)
            self.weekendRateUsdPerInstance = try container.decodeIfPresent(Double.self, forKey: .weekendRateUsdPerInstance)
            self.holidayRateUsdPerInstance = try container.decodeIfPresent(Double.self, forKey: .holidayRateUsdPerInstance)
            self.nameSetToNone = try container.decodeIfPresent(Bool.self, forKey: .nameSetToNone)
            self.commentsSetToNone = try container.decodeIfPresent(Bool.self, forKey: .commentsSetToNone)
            self.baseMileageDistanceMilesSetToNone = try container.decodeIfPresent(Bool.self, forKey: .baseMileageDistanceMilesSetToNone)
            self.baseMileageRateUsdPerInstanceSetToNone = try container.decodeIfPresent(Bool.self, forKey: .baseMileageRateUsdPerInstanceSetToNone)
            self.additionalMileageRateUsdPerMileSetToNone = try container.decodeIfPresent(Bool.self, forKey: .additionalMileageRateUsdPerMileSetToNone)
            self.longDistanceSurchargeMilesBeforeSurchargeSetToNone = try container.decodeIfPresent(Bool.self, forKey: .longDistanceSurchargeMilesBeforeSurchargeSetToNone)
            self.longDistanceSurchargeRateUsdPerMileSetToNone = try container.decodeIfPresent(Bool.self, forKey: .longDistanceSurchargeRateUsdPerMileSetToNone)
            self.fuelSurchargeRateUsdPerMileSetToNone = try container.decodeIfPresent(Bool.self, forKey: .fuelSurchargeRateUsdPerMileSetToNone)
            self.waitTimeBeforeChargeMinutesSetToNone = try container.decodeIfPresent(Bool.self, forKey: .waitTimeBeforeChargeMinutesSetToNone)
            self.waitTimeRateUsdPerMinuteSetToNone = try container.decodeIfPresent(Bool.self, forKey: .waitTimeRateUsdPerMinuteSetToNone)
            self.extraStopRateUsdSetToNone = try container.decodeIfPresent(Bool.self, forKey: .extraStopRateUsdSetToNone)
            self.attemptRateUsdPerInstanceSetToNone = try container.decodeIfPresent(Bool.self, forKey: .attemptRateUsdPerInstanceSetToNone)
            self.pickAndHoldRateUsdPerInstanceSetToNone = try container.decodeIfPresent(Bool.self, forKey: .pickAndHoldRateUsdPerInstanceSetToNone)
            self.dangerousGoodsRateUsdPerInstanceSetToNone = try container.decodeIfPresent(Bool.self, forKey: .dangerousGoodsRateUsdPerInstanceSetToNone)
            self.afterHoursRateUsdPerInstanceSetToNone = try container.decodeIfPresent(Bool.self, forKey: .afterHoursRateUsdPerInstanceSetToNone)
            self.weekendRateUsdPerInstanceSetToNone = try container.decodeIfPresent(Bool.self, forKey: .weekendRateUsdPerInstanceSetToNone)
            self.holidayRateUsdPerInstanceSetToNone = try container.decodeIfPresent(Bool.self, forKey: .holidayRateUsdPerInstanceSetToNone)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.name, forKey: .name)
            try container.encodeIfPresent(self.comments, forKey: .comments)
            try container.encodeIfPresent(self.cargoTypes, forKey: .cargoTypes)
            try container.encodeIfPresent(self.vehicleTypes, forKey: .vehicleTypes)
            try container.encodeIfPresent(self.baseMileageDistanceMiles, forKey: .baseMileageDistanceMiles)
            try container.encodeIfPresent(self.baseMileageRateUsdPerInstance, forKey: .baseMileageRateUsdPerInstance)
            try container.encodeIfPresent(self.additionalMileageRateUsdPerMile, forKey: .additionalMileageRateUsdPerMile)
            try container.encodeIfPresent(self.longDistanceSurchargeMilesBeforeSurcharge, forKey: .longDistanceSurchargeMilesBeforeSurcharge)
            try container.encodeIfPresent(self.longDistanceSurchargeRateUsdPerMile, forKey: .longDistanceSurchargeRateUsdPerMile)
            try container.encodeIfPresent(self.fuelSurchargeRateUsdPerMile, forKey: .fuelSurchargeRateUsdPerMile)
            try container.encodeIfPresent(self.waitTimeBeforeChargeMinutes, forKey: .waitTimeBeforeChargeMinutes)
            try container.encodeIfPresent(self.waitTimeRateUsdPerMinute, forKey: .waitTimeRateUsdPerMinute)
            try container.encodeIfPresent(self.extraStopRateUsd, forKey: .extraStopRateUsd)
            try container.encodeIfPresent(self.attemptRateUsdPerInstance, forKey: .attemptRateUsdPerInstance)
            try container.encodeIfPresent(self.pickAndHoldRateUsdPerInstance, forKey: .pickAndHoldRateUsdPerInstance)
            try container.encodeIfPresent(self.dangerousGoodsRateUsdPerInstance, forKey: .dangerousGoodsRateUsdPerInstance)
            try container.encodeIfPresent(self.afterHoursRateUsdPerInstance, forKey: .afterHoursRateUsdPerInstance)
            try container.encodeIfPresent(self.weekendRateUsdPerInstance, forKey: .weekendRateUsdPerInstance)
            try container.encodeIfPresent(self.holidayRateUsdPerInstance, forKey: .holidayRateUsdPerInstance)
            try container.encodeIfPresent(self.nameSetToNone, forKey: .nameSetToNone)
            try container.encodeIfPresent(self.commentsSetToNone, forKey: .commentsSetToNone)
            try container.encodeIfPresent(self.baseMileageDistanceMilesSetToNone, forKey: .baseMileageDistanceMilesSetToNone)
            try container.encodeIfPresent(self.baseMileageRateUsdPerInstanceSetToNone, forKey: .baseMileageRateUsdPerInstanceSetToNone)
            try container.encodeIfPresent(self.additionalMileageRateUsdPerMileSetToNone, forKey: .additionalMileageRateUsdPerMileSetToNone)
            try container.encodeIfPresent(self.longDistanceSurchargeMilesBeforeSurchargeSetToNone, forKey: .longDistanceSurchargeMilesBeforeSurchargeSetToNone)
            try container.encodeIfPresent(self.longDistanceSurchargeRateUsdPerMileSetToNone, forKey: .longDistanceSurchargeRateUsdPerMileSetToNone)
            try container.encodeIfPresent(self.fuelSurchargeRateUsdPerMileSetToNone, forKey: .fuelSurchargeRateUsdPerMileSetToNone)
            try container.encodeIfPresent(self.waitTimeBeforeChargeMinutesSetToNone, forKey: .waitTimeBeforeChargeMinutesSetToNone)
            try container.encodeIfPresent(self.waitTimeRateUsdPerMinuteSetToNone, forKey: .waitTimeRateUsdPerMinuteSetToNone)
            try container.encodeIfPresent(self.extraStopRateUsdSetToNone, forKey: .extraStopRateUsdSetToNone)
            try container.encodeIfPresent(self.attemptRateUsdPerInstanceSetToNone, forKey: .attemptRateUsdPerInstanceSetToNone)
            try container.encodeIfPresent(self.pickAndHoldRateUsdPerInstanceSetToNone, forKey: .pickAndHoldRateUsdPerInstanceSetToNone)
            try container.encodeIfPresent(self.dangerousGoodsRateUsdPerInstanceSetToNone, forKey: .dangerousGoodsRateUsdPerInstanceSetToNone)
            try container.encodeIfPresent(self.afterHoursRateUsdPerInstanceSetToNone, forKey: .afterHoursRateUsdPerInstanceSetToNone)
            try container.encodeIfPresent(self.weekendRateUsdPerInstanceSetToNone, forKey: .weekendRateUsdPerInstanceSetToNone)
            try container.encodeIfPresent(self.holidayRateUsdPerInstanceSetToNone, forKey: .holidayRateUsdPerInstanceSetToNone)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case name
            case comments
            case cargoTypes = "cargo_types"
            case vehicleTypes = "vehicle_types"
            case baseMileageDistanceMiles = "base_mileage_distance_miles"
            case baseMileageRateUsdPerInstance = "base_mileage_rate_usd_per_instance"
            case additionalMileageRateUsdPerMile = "additional_mileage_rate_usd_per_mile"
            case longDistanceSurchargeMilesBeforeSurcharge = "long_distance_surcharge_miles_before_surcharge"
            case longDistanceSurchargeRateUsdPerMile = "long_distance_surcharge_rate_usd_per_mile"
            case fuelSurchargeRateUsdPerMile = "fuel_surcharge_rate_usd_per_mile"
            case waitTimeBeforeChargeMinutes = "wait_time_before_charge_minutes"
            case waitTimeRateUsdPerMinute = "wait_time_rate_usd_per_minute"
            case extraStopRateUsd = "extra_stop_rate_usd"
            case attemptRateUsdPerInstance = "attempt_rate_usd_per_instance"
            case pickAndHoldRateUsdPerInstance = "pick_and_hold_rate_usd_per_instance"
            case dangerousGoodsRateUsdPerInstance = "dangerous_goods_rate_usd_per_instance"
            case afterHoursRateUsdPerInstance = "after_hours_rate_usd_per_instance"
            case weekendRateUsdPerInstance = "weekend_rate_usd_per_instance"
            case holidayRateUsdPerInstance = "holiday_rate_usd_per_instance"
            case nameSetToNone = "name__set_to_None"
            case commentsSetToNone = "comments__set_to_None"
            case baseMileageDistanceMilesSetToNone = "base_mileage_distance_miles__set_to_None"
            case baseMileageRateUsdPerInstanceSetToNone = "base_mileage_rate_usd_per_instance__set_to_None"
            case additionalMileageRateUsdPerMileSetToNone = "additional_mileage_rate_usd_per_mile__set_to_None"
            case longDistanceSurchargeMilesBeforeSurchargeSetToNone = "long_distance_surcharge_miles_before_surcharge__set_to_None"
            case longDistanceSurchargeRateUsdPerMileSetToNone = "long_distance_surcharge_rate_usd_per_mile__set_to_None"
            case fuelSurchargeRateUsdPerMileSetToNone = "fuel_surcharge_rate_usd_per_mile__set_to_None"
            case waitTimeBeforeChargeMinutesSetToNone = "wait_time_before_charge_minutes__set_to_None"
            case waitTimeRateUsdPerMinuteSetToNone = "wait_time_rate_usd_per_minute__set_to_None"
            case extraStopRateUsdSetToNone = "extra_stop_rate_usd__set_to_None"
            case attemptRateUsdPerInstanceSetToNone = "attempt_rate_usd_per_instance__set_to_None"
            case pickAndHoldRateUsdPerInstanceSetToNone = "pick_and_hold_rate_usd_per_instance__set_to_None"
            case dangerousGoodsRateUsdPerInstanceSetToNone = "dangerous_goods_rate_usd_per_instance__set_to_None"
            case afterHoursRateUsdPerInstanceSetToNone = "after_hours_rate_usd_per_instance__set_to_None"
            case weekendRateUsdPerInstanceSetToNone = "weekend_rate_usd_per_instance__set_to_None"
            case holidayRateUsdPerInstanceSetToNone = "holiday_rate_usd_per_instance__set_to_None"
        }
    }
}