import Foundation

extension Requests {
    public struct ShipperPayCourierRateSheetClientUpdate1: Codable, Hashable, Sendable {
        public let name: Nullable<String>?
        public let cargoTypes: Nullable<[CargoTypeEnum1]>?
        public let vehicleTypes: Nullable<[VehicleTypeEnum]>?
        public let routeTypes: Nullable<[RouteTypeEnum1]>?
        /// Must be a string starting with `org_`
        public let shipperOrgId: Nullable<String>?
        public let offChrtShipperOrgInfoId: Nullable<String>?
        public let comments: Nullable<String>?
        public let baseMileageDistanceMiles: Nullable<Double>?
        public let baseMileageRateUsdPerInstance: Nullable<Double>?
        public let additionalMileageRateUsdPerMile: Nullable<Double>?
        public let longDistanceSurchargeMilesBeforeSurcharge: Nullable<Double>?
        public let longDistanceSurchargeRateUsdPerMile: Nullable<Double>?
        public let fuelSurchargeRateUsdPerMile: Nullable<Double>?
        public let waitTimeBeforeChargeMinutes: Nullable<Double>?
        public let waitTimeRateUsdPerMinute: Nullable<Double>?
        public let extraStopRateUsd: Nullable<Double>?
        public let dangerousGoodsRateUsdPerInstance: Nullable<Double>?
        public let afterHours: Nullable<Double>?
        public let weekend: Nullable<Double>?
        public let holiday: Nullable<Double>?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            name: Nullable<String>? = nil,
            cargoTypes: Nullable<[CargoTypeEnum1]>? = nil,
            vehicleTypes: Nullable<[VehicleTypeEnum]>? = nil,
            routeTypes: Nullable<[RouteTypeEnum1]>? = nil,
            shipperOrgId: Nullable<String>? = nil,
            offChrtShipperOrgInfoId: Nullable<String>? = nil,
            comments: Nullable<String>? = nil,
            baseMileageDistanceMiles: Nullable<Double>? = nil,
            baseMileageRateUsdPerInstance: Nullable<Double>? = nil,
            additionalMileageRateUsdPerMile: Nullable<Double>? = nil,
            longDistanceSurchargeMilesBeforeSurcharge: Nullable<Double>? = nil,
            longDistanceSurchargeRateUsdPerMile: Nullable<Double>? = nil,
            fuelSurchargeRateUsdPerMile: Nullable<Double>? = nil,
            waitTimeBeforeChargeMinutes: Nullable<Double>? = nil,
            waitTimeRateUsdPerMinute: Nullable<Double>? = nil,
            extraStopRateUsd: Nullable<Double>? = nil,
            dangerousGoodsRateUsdPerInstance: Nullable<Double>? = nil,
            afterHours: Nullable<Double>? = nil,
            weekend: Nullable<Double>? = nil,
            holiday: Nullable<Double>? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.name = name
            self.cargoTypes = cargoTypes
            self.vehicleTypes = vehicleTypes
            self.routeTypes = routeTypes
            self.shipperOrgId = shipperOrgId
            self.offChrtShipperOrgInfoId = offChrtShipperOrgInfoId
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
            self.name = try container.decodeNullableIfPresent(String.self, forKey: .name)
            self.cargoTypes = try container.decodeNullableIfPresent([CargoTypeEnum1].self, forKey: .cargoTypes)
            self.vehicleTypes = try container.decodeNullableIfPresent([VehicleTypeEnum].self, forKey: .vehicleTypes)
            self.routeTypes = try container.decodeNullableIfPresent([RouteTypeEnum1].self, forKey: .routeTypes)
            self.shipperOrgId = try container.decodeNullableIfPresent(String.self, forKey: .shipperOrgId)
            self.offChrtShipperOrgInfoId = try container.decodeNullableIfPresent(String.self, forKey: .offChrtShipperOrgInfoId)
            self.comments = try container.decodeNullableIfPresent(String.self, forKey: .comments)
            self.baseMileageDistanceMiles = try container.decodeNullableIfPresent(Double.self, forKey: .baseMileageDistanceMiles)
            self.baseMileageRateUsdPerInstance = try container.decodeNullableIfPresent(Double.self, forKey: .baseMileageRateUsdPerInstance)
            self.additionalMileageRateUsdPerMile = try container.decodeNullableIfPresent(Double.self, forKey: .additionalMileageRateUsdPerMile)
            self.longDistanceSurchargeMilesBeforeSurcharge = try container.decodeNullableIfPresent(Double.self, forKey: .longDistanceSurchargeMilesBeforeSurcharge)
            self.longDistanceSurchargeRateUsdPerMile = try container.decodeNullableIfPresent(Double.self, forKey: .longDistanceSurchargeRateUsdPerMile)
            self.fuelSurchargeRateUsdPerMile = try container.decodeNullableIfPresent(Double.self, forKey: .fuelSurchargeRateUsdPerMile)
            self.waitTimeBeforeChargeMinutes = try container.decodeNullableIfPresent(Double.self, forKey: .waitTimeBeforeChargeMinutes)
            self.waitTimeRateUsdPerMinute = try container.decodeNullableIfPresent(Double.self, forKey: .waitTimeRateUsdPerMinute)
            self.extraStopRateUsd = try container.decodeNullableIfPresent(Double.self, forKey: .extraStopRateUsd)
            self.dangerousGoodsRateUsdPerInstance = try container.decodeNullableIfPresent(Double.self, forKey: .dangerousGoodsRateUsdPerInstance)
            self.afterHours = try container.decodeNullableIfPresent(Double.self, forKey: .afterHours)
            self.weekend = try container.decodeNullableIfPresent(Double.self, forKey: .weekend)
            self.holiday = try container.decodeNullableIfPresent(Double.self, forKey: .holiday)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeNullableIfPresent(self.name, forKey: .name)
            try container.encodeNullableIfPresent(self.cargoTypes, forKey: .cargoTypes)
            try container.encodeNullableIfPresent(self.vehicleTypes, forKey: .vehicleTypes)
            try container.encodeNullableIfPresent(self.routeTypes, forKey: .routeTypes)
            try container.encodeNullableIfPresent(self.shipperOrgId, forKey: .shipperOrgId)
            try container.encodeNullableIfPresent(self.offChrtShipperOrgInfoId, forKey: .offChrtShipperOrgInfoId)
            try container.encodeNullableIfPresent(self.comments, forKey: .comments)
            try container.encodeNullableIfPresent(self.baseMileageDistanceMiles, forKey: .baseMileageDistanceMiles)
            try container.encodeNullableIfPresent(self.baseMileageRateUsdPerInstance, forKey: .baseMileageRateUsdPerInstance)
            try container.encodeNullableIfPresent(self.additionalMileageRateUsdPerMile, forKey: .additionalMileageRateUsdPerMile)
            try container.encodeNullableIfPresent(self.longDistanceSurchargeMilesBeforeSurcharge, forKey: .longDistanceSurchargeMilesBeforeSurcharge)
            try container.encodeNullableIfPresent(self.longDistanceSurchargeRateUsdPerMile, forKey: .longDistanceSurchargeRateUsdPerMile)
            try container.encodeNullableIfPresent(self.fuelSurchargeRateUsdPerMile, forKey: .fuelSurchargeRateUsdPerMile)
            try container.encodeNullableIfPresent(self.waitTimeBeforeChargeMinutes, forKey: .waitTimeBeforeChargeMinutes)
            try container.encodeNullableIfPresent(self.waitTimeRateUsdPerMinute, forKey: .waitTimeRateUsdPerMinute)
            try container.encodeNullableIfPresent(self.extraStopRateUsd, forKey: .extraStopRateUsd)
            try container.encodeNullableIfPresent(self.dangerousGoodsRateUsdPerInstance, forKey: .dangerousGoodsRateUsdPerInstance)
            try container.encodeNullableIfPresent(self.afterHours, forKey: .afterHours)
            try container.encodeNullableIfPresent(self.weekend, forKey: .weekend)
            try container.encodeNullableIfPresent(self.holiday, forKey: .holiday)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case name
            case cargoTypes = "cargo_types"
            case vehicleTypes = "vehicle_types"
            case routeTypes = "route_types"
            case shipperOrgId = "shipper_org_id"
            case offChrtShipperOrgInfoId = "off_chrt_shipper_org_info_id"
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