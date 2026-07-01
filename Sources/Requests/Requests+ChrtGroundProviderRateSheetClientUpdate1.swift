import Foundation

extension Requests {
    public struct ChrtGroundProviderRateSheetClientUpdate1: Codable, Hashable, Sendable {
        public let additionalMileageRateUsdPerMile: Double?
        public let additionalMileageRateUsdPerMileSetToNone: Bool?
        public let afterHoursRateUsdPerInstance: Double?
        public let afterHoursRateUsdPerInstanceSetToNone: Bool?
        public let attemptRateUsdPerInstance: Double?
        public let attemptRateUsdPerInstanceSetToNone: Bool?
        public let baseMileageDistanceMiles: Double?
        public let baseMileageDistanceMilesSetToNone: Bool?
        public let baseMileageRateUsdPerInstance: Double?
        public let baseMileageRateUsdPerInstanceSetToNone: Bool?
        public let cargoTypes: [CargoTypeEnum1]?
        public let comments: String?
        public let commentsSetToNone: Bool?
        public let dangerousGoodsRateUsdPerInstance: Double?
        public let dangerousGoodsRateUsdPerInstanceSetToNone: Bool?
        public let extraStopRateUsd: Double?
        public let extraStopRateUsdSetToNone: Bool?
        public let fuelSurchargeRateUsdPerMile: Double?
        public let fuelSurchargeRateUsdPerMileSetToNone: Bool?
        public let holidayRateUsdPerInstance: Double?
        public let holidayRateUsdPerInstanceSetToNone: Bool?
        public let longDistanceSurchargeMilesBeforeSurcharge: Double?
        public let longDistanceSurchargeMilesBeforeSurchargeSetToNone: Bool?
        public let longDistanceSurchargeRateUsdPerMile: Double?
        public let longDistanceSurchargeRateUsdPerMileSetToNone: Bool?
        public let name: String?
        public let nameSetToNone: Bool?
        public let pickAndHoldRateUsdPerInstance: Double?
        public let pickAndHoldRateUsdPerInstanceSetToNone: Bool?
        public let vehicleTypes: [VehicleTypeEnum]?
        public let waitTimeBeforeChargeMinutes: Double?
        public let waitTimeBeforeChargeMinutesSetToNone: Bool?
        public let waitTimeRateUsdPerMinute: Double?
        public let waitTimeRateUsdPerMinuteSetToNone: Bool?
        public let weekendRateUsdPerInstance: Double?
        public let weekendRateUsdPerInstanceSetToNone: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            additionalMileageRateUsdPerMile: Double? = nil,
            additionalMileageRateUsdPerMileSetToNone: Bool? = nil,
            afterHoursRateUsdPerInstance: Double? = nil,
            afterHoursRateUsdPerInstanceSetToNone: Bool? = nil,
            attemptRateUsdPerInstance: Double? = nil,
            attemptRateUsdPerInstanceSetToNone: Bool? = nil,
            baseMileageDistanceMiles: Double? = nil,
            baseMileageDistanceMilesSetToNone: Bool? = nil,
            baseMileageRateUsdPerInstance: Double? = nil,
            baseMileageRateUsdPerInstanceSetToNone: Bool? = nil,
            cargoTypes: [CargoTypeEnum1]? = nil,
            comments: String? = nil,
            commentsSetToNone: Bool? = nil,
            dangerousGoodsRateUsdPerInstance: Double? = nil,
            dangerousGoodsRateUsdPerInstanceSetToNone: Bool? = nil,
            extraStopRateUsd: Double? = nil,
            extraStopRateUsdSetToNone: Bool? = nil,
            fuelSurchargeRateUsdPerMile: Double? = nil,
            fuelSurchargeRateUsdPerMileSetToNone: Bool? = nil,
            holidayRateUsdPerInstance: Double? = nil,
            holidayRateUsdPerInstanceSetToNone: Bool? = nil,
            longDistanceSurchargeMilesBeforeSurcharge: Double? = nil,
            longDistanceSurchargeMilesBeforeSurchargeSetToNone: Bool? = nil,
            longDistanceSurchargeRateUsdPerMile: Double? = nil,
            longDistanceSurchargeRateUsdPerMileSetToNone: Bool? = nil,
            name: String? = nil,
            nameSetToNone: Bool? = nil,
            pickAndHoldRateUsdPerInstance: Double? = nil,
            pickAndHoldRateUsdPerInstanceSetToNone: Bool? = nil,
            vehicleTypes: [VehicleTypeEnum]? = nil,
            waitTimeBeforeChargeMinutes: Double? = nil,
            waitTimeBeforeChargeMinutesSetToNone: Bool? = nil,
            waitTimeRateUsdPerMinute: Double? = nil,
            waitTimeRateUsdPerMinuteSetToNone: Bool? = nil,
            weekendRateUsdPerInstance: Double? = nil,
            weekendRateUsdPerInstanceSetToNone: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.additionalMileageRateUsdPerMile = additionalMileageRateUsdPerMile
            self.additionalMileageRateUsdPerMileSetToNone = additionalMileageRateUsdPerMileSetToNone
            self.afterHoursRateUsdPerInstance = afterHoursRateUsdPerInstance
            self.afterHoursRateUsdPerInstanceSetToNone = afterHoursRateUsdPerInstanceSetToNone
            self.attemptRateUsdPerInstance = attemptRateUsdPerInstance
            self.attemptRateUsdPerInstanceSetToNone = attemptRateUsdPerInstanceSetToNone
            self.baseMileageDistanceMiles = baseMileageDistanceMiles
            self.baseMileageDistanceMilesSetToNone = baseMileageDistanceMilesSetToNone
            self.baseMileageRateUsdPerInstance = baseMileageRateUsdPerInstance
            self.baseMileageRateUsdPerInstanceSetToNone = baseMileageRateUsdPerInstanceSetToNone
            self.cargoTypes = cargoTypes
            self.comments = comments
            self.commentsSetToNone = commentsSetToNone
            self.dangerousGoodsRateUsdPerInstance = dangerousGoodsRateUsdPerInstance
            self.dangerousGoodsRateUsdPerInstanceSetToNone = dangerousGoodsRateUsdPerInstanceSetToNone
            self.extraStopRateUsd = extraStopRateUsd
            self.extraStopRateUsdSetToNone = extraStopRateUsdSetToNone
            self.fuelSurchargeRateUsdPerMile = fuelSurchargeRateUsdPerMile
            self.fuelSurchargeRateUsdPerMileSetToNone = fuelSurchargeRateUsdPerMileSetToNone
            self.holidayRateUsdPerInstance = holidayRateUsdPerInstance
            self.holidayRateUsdPerInstanceSetToNone = holidayRateUsdPerInstanceSetToNone
            self.longDistanceSurchargeMilesBeforeSurcharge = longDistanceSurchargeMilesBeforeSurcharge
            self.longDistanceSurchargeMilesBeforeSurchargeSetToNone = longDistanceSurchargeMilesBeforeSurchargeSetToNone
            self.longDistanceSurchargeRateUsdPerMile = longDistanceSurchargeRateUsdPerMile
            self.longDistanceSurchargeRateUsdPerMileSetToNone = longDistanceSurchargeRateUsdPerMileSetToNone
            self.name = name
            self.nameSetToNone = nameSetToNone
            self.pickAndHoldRateUsdPerInstance = pickAndHoldRateUsdPerInstance
            self.pickAndHoldRateUsdPerInstanceSetToNone = pickAndHoldRateUsdPerInstanceSetToNone
            self.vehicleTypes = vehicleTypes
            self.waitTimeBeforeChargeMinutes = waitTimeBeforeChargeMinutes
            self.waitTimeBeforeChargeMinutesSetToNone = waitTimeBeforeChargeMinutesSetToNone
            self.waitTimeRateUsdPerMinute = waitTimeRateUsdPerMinute
            self.waitTimeRateUsdPerMinuteSetToNone = waitTimeRateUsdPerMinuteSetToNone
            self.weekendRateUsdPerInstance = weekendRateUsdPerInstance
            self.weekendRateUsdPerInstanceSetToNone = weekendRateUsdPerInstanceSetToNone
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.additionalMileageRateUsdPerMile = try container.decodeIfPresent(Double.self, forKey: .additionalMileageRateUsdPerMile)
            self.additionalMileageRateUsdPerMileSetToNone = try container.decodeIfPresent(Bool.self, forKey: .additionalMileageRateUsdPerMileSetToNone)
            self.afterHoursRateUsdPerInstance = try container.decodeIfPresent(Double.self, forKey: .afterHoursRateUsdPerInstance)
            self.afterHoursRateUsdPerInstanceSetToNone = try container.decodeIfPresent(Bool.self, forKey: .afterHoursRateUsdPerInstanceSetToNone)
            self.attemptRateUsdPerInstance = try container.decodeIfPresent(Double.self, forKey: .attemptRateUsdPerInstance)
            self.attemptRateUsdPerInstanceSetToNone = try container.decodeIfPresent(Bool.self, forKey: .attemptRateUsdPerInstanceSetToNone)
            self.baseMileageDistanceMiles = try container.decodeIfPresent(Double.self, forKey: .baseMileageDistanceMiles)
            self.baseMileageDistanceMilesSetToNone = try container.decodeIfPresent(Bool.self, forKey: .baseMileageDistanceMilesSetToNone)
            self.baseMileageRateUsdPerInstance = try container.decodeIfPresent(Double.self, forKey: .baseMileageRateUsdPerInstance)
            self.baseMileageRateUsdPerInstanceSetToNone = try container.decodeIfPresent(Bool.self, forKey: .baseMileageRateUsdPerInstanceSetToNone)
            self.cargoTypes = try container.decodeIfPresent([CargoTypeEnum1].self, forKey: .cargoTypes)
            self.comments = try container.decodeIfPresent(String.self, forKey: .comments)
            self.commentsSetToNone = try container.decodeIfPresent(Bool.self, forKey: .commentsSetToNone)
            self.dangerousGoodsRateUsdPerInstance = try container.decodeIfPresent(Double.self, forKey: .dangerousGoodsRateUsdPerInstance)
            self.dangerousGoodsRateUsdPerInstanceSetToNone = try container.decodeIfPresent(Bool.self, forKey: .dangerousGoodsRateUsdPerInstanceSetToNone)
            self.extraStopRateUsd = try container.decodeIfPresent(Double.self, forKey: .extraStopRateUsd)
            self.extraStopRateUsdSetToNone = try container.decodeIfPresent(Bool.self, forKey: .extraStopRateUsdSetToNone)
            self.fuelSurchargeRateUsdPerMile = try container.decodeIfPresent(Double.self, forKey: .fuelSurchargeRateUsdPerMile)
            self.fuelSurchargeRateUsdPerMileSetToNone = try container.decodeIfPresent(Bool.self, forKey: .fuelSurchargeRateUsdPerMileSetToNone)
            self.holidayRateUsdPerInstance = try container.decodeIfPresent(Double.self, forKey: .holidayRateUsdPerInstance)
            self.holidayRateUsdPerInstanceSetToNone = try container.decodeIfPresent(Bool.self, forKey: .holidayRateUsdPerInstanceSetToNone)
            self.longDistanceSurchargeMilesBeforeSurcharge = try container.decodeIfPresent(Double.self, forKey: .longDistanceSurchargeMilesBeforeSurcharge)
            self.longDistanceSurchargeMilesBeforeSurchargeSetToNone = try container.decodeIfPresent(Bool.self, forKey: .longDistanceSurchargeMilesBeforeSurchargeSetToNone)
            self.longDistanceSurchargeRateUsdPerMile = try container.decodeIfPresent(Double.self, forKey: .longDistanceSurchargeRateUsdPerMile)
            self.longDistanceSurchargeRateUsdPerMileSetToNone = try container.decodeIfPresent(Bool.self, forKey: .longDistanceSurchargeRateUsdPerMileSetToNone)
            self.name = try container.decodeIfPresent(String.self, forKey: .name)
            self.nameSetToNone = try container.decodeIfPresent(Bool.self, forKey: .nameSetToNone)
            self.pickAndHoldRateUsdPerInstance = try container.decodeIfPresent(Double.self, forKey: .pickAndHoldRateUsdPerInstance)
            self.pickAndHoldRateUsdPerInstanceSetToNone = try container.decodeIfPresent(Bool.self, forKey: .pickAndHoldRateUsdPerInstanceSetToNone)
            self.vehicleTypes = try container.decodeIfPresent([VehicleTypeEnum].self, forKey: .vehicleTypes)
            self.waitTimeBeforeChargeMinutes = try container.decodeIfPresent(Double.self, forKey: .waitTimeBeforeChargeMinutes)
            self.waitTimeBeforeChargeMinutesSetToNone = try container.decodeIfPresent(Bool.self, forKey: .waitTimeBeforeChargeMinutesSetToNone)
            self.waitTimeRateUsdPerMinute = try container.decodeIfPresent(Double.self, forKey: .waitTimeRateUsdPerMinute)
            self.waitTimeRateUsdPerMinuteSetToNone = try container.decodeIfPresent(Bool.self, forKey: .waitTimeRateUsdPerMinuteSetToNone)
            self.weekendRateUsdPerInstance = try container.decodeIfPresent(Double.self, forKey: .weekendRateUsdPerInstance)
            self.weekendRateUsdPerInstanceSetToNone = try container.decodeIfPresent(Bool.self, forKey: .weekendRateUsdPerInstanceSetToNone)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.additionalMileageRateUsdPerMile, forKey: .additionalMileageRateUsdPerMile)
            try container.encodeIfPresent(self.additionalMileageRateUsdPerMileSetToNone, forKey: .additionalMileageRateUsdPerMileSetToNone)
            try container.encodeIfPresent(self.afterHoursRateUsdPerInstance, forKey: .afterHoursRateUsdPerInstance)
            try container.encodeIfPresent(self.afterHoursRateUsdPerInstanceSetToNone, forKey: .afterHoursRateUsdPerInstanceSetToNone)
            try container.encodeIfPresent(self.attemptRateUsdPerInstance, forKey: .attemptRateUsdPerInstance)
            try container.encodeIfPresent(self.attemptRateUsdPerInstanceSetToNone, forKey: .attemptRateUsdPerInstanceSetToNone)
            try container.encodeIfPresent(self.baseMileageDistanceMiles, forKey: .baseMileageDistanceMiles)
            try container.encodeIfPresent(self.baseMileageDistanceMilesSetToNone, forKey: .baseMileageDistanceMilesSetToNone)
            try container.encodeIfPresent(self.baseMileageRateUsdPerInstance, forKey: .baseMileageRateUsdPerInstance)
            try container.encodeIfPresent(self.baseMileageRateUsdPerInstanceSetToNone, forKey: .baseMileageRateUsdPerInstanceSetToNone)
            try container.encodeIfPresent(self.cargoTypes, forKey: .cargoTypes)
            try container.encodeIfPresent(self.comments, forKey: .comments)
            try container.encodeIfPresent(self.commentsSetToNone, forKey: .commentsSetToNone)
            try container.encodeIfPresent(self.dangerousGoodsRateUsdPerInstance, forKey: .dangerousGoodsRateUsdPerInstance)
            try container.encodeIfPresent(self.dangerousGoodsRateUsdPerInstanceSetToNone, forKey: .dangerousGoodsRateUsdPerInstanceSetToNone)
            try container.encodeIfPresent(self.extraStopRateUsd, forKey: .extraStopRateUsd)
            try container.encodeIfPresent(self.extraStopRateUsdSetToNone, forKey: .extraStopRateUsdSetToNone)
            try container.encodeIfPresent(self.fuelSurchargeRateUsdPerMile, forKey: .fuelSurchargeRateUsdPerMile)
            try container.encodeIfPresent(self.fuelSurchargeRateUsdPerMileSetToNone, forKey: .fuelSurchargeRateUsdPerMileSetToNone)
            try container.encodeIfPresent(self.holidayRateUsdPerInstance, forKey: .holidayRateUsdPerInstance)
            try container.encodeIfPresent(self.holidayRateUsdPerInstanceSetToNone, forKey: .holidayRateUsdPerInstanceSetToNone)
            try container.encodeIfPresent(self.longDistanceSurchargeMilesBeforeSurcharge, forKey: .longDistanceSurchargeMilesBeforeSurcharge)
            try container.encodeIfPresent(self.longDistanceSurchargeMilesBeforeSurchargeSetToNone, forKey: .longDistanceSurchargeMilesBeforeSurchargeSetToNone)
            try container.encodeIfPresent(self.longDistanceSurchargeRateUsdPerMile, forKey: .longDistanceSurchargeRateUsdPerMile)
            try container.encodeIfPresent(self.longDistanceSurchargeRateUsdPerMileSetToNone, forKey: .longDistanceSurchargeRateUsdPerMileSetToNone)
            try container.encodeIfPresent(self.name, forKey: .name)
            try container.encodeIfPresent(self.nameSetToNone, forKey: .nameSetToNone)
            try container.encodeIfPresent(self.pickAndHoldRateUsdPerInstance, forKey: .pickAndHoldRateUsdPerInstance)
            try container.encodeIfPresent(self.pickAndHoldRateUsdPerInstanceSetToNone, forKey: .pickAndHoldRateUsdPerInstanceSetToNone)
            try container.encodeIfPresent(self.vehicleTypes, forKey: .vehicleTypes)
            try container.encodeIfPresent(self.waitTimeBeforeChargeMinutes, forKey: .waitTimeBeforeChargeMinutes)
            try container.encodeIfPresent(self.waitTimeBeforeChargeMinutesSetToNone, forKey: .waitTimeBeforeChargeMinutesSetToNone)
            try container.encodeIfPresent(self.waitTimeRateUsdPerMinute, forKey: .waitTimeRateUsdPerMinute)
            try container.encodeIfPresent(self.waitTimeRateUsdPerMinuteSetToNone, forKey: .waitTimeRateUsdPerMinuteSetToNone)
            try container.encodeIfPresent(self.weekendRateUsdPerInstance, forKey: .weekendRateUsdPerInstance)
            try container.encodeIfPresent(self.weekendRateUsdPerInstanceSetToNone, forKey: .weekendRateUsdPerInstanceSetToNone)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case additionalMileageRateUsdPerMile = "additional_mileage_rate_usd_per_mile"
            case additionalMileageRateUsdPerMileSetToNone = "additional_mileage_rate_usd_per_mile__set_to_None"
            case afterHoursRateUsdPerInstance = "after_hours_rate_usd_per_instance"
            case afterHoursRateUsdPerInstanceSetToNone = "after_hours_rate_usd_per_instance__set_to_None"
            case attemptRateUsdPerInstance = "attempt_rate_usd_per_instance"
            case attemptRateUsdPerInstanceSetToNone = "attempt_rate_usd_per_instance__set_to_None"
            case baseMileageDistanceMiles = "base_mileage_distance_miles"
            case baseMileageDistanceMilesSetToNone = "base_mileage_distance_miles__set_to_None"
            case baseMileageRateUsdPerInstance = "base_mileage_rate_usd_per_instance"
            case baseMileageRateUsdPerInstanceSetToNone = "base_mileage_rate_usd_per_instance__set_to_None"
            case cargoTypes = "cargo_types"
            case comments
            case commentsSetToNone = "comments__set_to_None"
            case dangerousGoodsRateUsdPerInstance = "dangerous_goods_rate_usd_per_instance"
            case dangerousGoodsRateUsdPerInstanceSetToNone = "dangerous_goods_rate_usd_per_instance__set_to_None"
            case extraStopRateUsd = "extra_stop_rate_usd"
            case extraStopRateUsdSetToNone = "extra_stop_rate_usd__set_to_None"
            case fuelSurchargeRateUsdPerMile = "fuel_surcharge_rate_usd_per_mile"
            case fuelSurchargeRateUsdPerMileSetToNone = "fuel_surcharge_rate_usd_per_mile__set_to_None"
            case holidayRateUsdPerInstance = "holiday_rate_usd_per_instance"
            case holidayRateUsdPerInstanceSetToNone = "holiday_rate_usd_per_instance__set_to_None"
            case longDistanceSurchargeMilesBeforeSurcharge = "long_distance_surcharge_miles_before_surcharge"
            case longDistanceSurchargeMilesBeforeSurchargeSetToNone = "long_distance_surcharge_miles_before_surcharge__set_to_None"
            case longDistanceSurchargeRateUsdPerMile = "long_distance_surcharge_rate_usd_per_mile"
            case longDistanceSurchargeRateUsdPerMileSetToNone = "long_distance_surcharge_rate_usd_per_mile__set_to_None"
            case name
            case nameSetToNone = "name__set_to_None"
            case pickAndHoldRateUsdPerInstance = "pick_and_hold_rate_usd_per_instance"
            case pickAndHoldRateUsdPerInstanceSetToNone = "pick_and_hold_rate_usd_per_instance__set_to_None"
            case vehicleTypes = "vehicle_types"
            case waitTimeBeforeChargeMinutes = "wait_time_before_charge_minutes"
            case waitTimeBeforeChargeMinutesSetToNone = "wait_time_before_charge_minutes__set_to_None"
            case waitTimeRateUsdPerMinute = "wait_time_rate_usd_per_minute"
            case waitTimeRateUsdPerMinuteSetToNone = "wait_time_rate_usd_per_minute__set_to_None"
            case weekendRateUsdPerInstance = "weekend_rate_usd_per_instance"
            case weekendRateUsdPerInstanceSetToNone = "weekend_rate_usd_per_instance__set_to_None"
        }
    }
}