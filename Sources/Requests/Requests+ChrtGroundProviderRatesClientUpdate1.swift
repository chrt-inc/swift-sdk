import Foundation

extension Requests {
    public struct ChrtGroundProviderRatesClientUpdate1: Codable, Hashable, Sendable {
        public let additionalMileage: AdditionalMileageRate1?
        public let additionalMileageSetToNone: Bool?
        public let afterHours: AfterHoursRate1?
        public let afterHoursSetToNone: Bool?
        public let attempt: AttemptRate1?
        public let attemptSetToNone: Bool?
        public let baseMileage: BaseMileageRate1?
        public let baseMileageSetToNone: Bool?
        public let cargoTypes: [CargoTypeEnum1]?
        public let comments: String?
        public let commentsSetToNone: Bool?
        public let currencyCode: BillingCurrencyCodeEnum1?
        public let dangerousGoods: DangerousGoodsRate1?
        public let dangerousGoodsSetToNone: Bool?
        public let extraStop: ExtraStopRate1?
        public let extraStopSetToNone: Bool?
        public let flatFee: FlatFeeRate1?
        public let flatFeeSetToNone: Bool?
        public let fuelSurcharge: FuelSurchargeRate1?
        public let fuelSurchargeSetToNone: Bool?
        public let holiday: HolidayRate1?
        public let holidaySetToNone: Bool?
        public let longDistanceSurcharge: LongDistanceSurchargeRate1?
        public let longDistanceSurchargeSetToNone: Bool?
        public let name: String?
        public let nameSetToNone: Bool?
        public let pickAndHold: PickAndHoldRate1?
        public let pickAndHoldSetToNone: Bool?
        public let vehicleTypes: [VehicleTypeEnum]?
        public let waitTime: WaitTimeRate1?
        public let waitTimeSetToNone: Bool?
        public let weekend: WeekendRate1?
        public let weekendSetToNone: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            additionalMileage: AdditionalMileageRate1? = nil,
            additionalMileageSetToNone: Bool? = nil,
            afterHours: AfterHoursRate1? = nil,
            afterHoursSetToNone: Bool? = nil,
            attempt: AttemptRate1? = nil,
            attemptSetToNone: Bool? = nil,
            baseMileage: BaseMileageRate1? = nil,
            baseMileageSetToNone: Bool? = nil,
            cargoTypes: [CargoTypeEnum1]? = nil,
            comments: String? = nil,
            commentsSetToNone: Bool? = nil,
            currencyCode: BillingCurrencyCodeEnum1? = nil,
            dangerousGoods: DangerousGoodsRate1? = nil,
            dangerousGoodsSetToNone: Bool? = nil,
            extraStop: ExtraStopRate1? = nil,
            extraStopSetToNone: Bool? = nil,
            flatFee: FlatFeeRate1? = nil,
            flatFeeSetToNone: Bool? = nil,
            fuelSurcharge: FuelSurchargeRate1? = nil,
            fuelSurchargeSetToNone: Bool? = nil,
            holiday: HolidayRate1? = nil,
            holidaySetToNone: Bool? = nil,
            longDistanceSurcharge: LongDistanceSurchargeRate1? = nil,
            longDistanceSurchargeSetToNone: Bool? = nil,
            name: String? = nil,
            nameSetToNone: Bool? = nil,
            pickAndHold: PickAndHoldRate1? = nil,
            pickAndHoldSetToNone: Bool? = nil,
            vehicleTypes: [VehicleTypeEnum]? = nil,
            waitTime: WaitTimeRate1? = nil,
            waitTimeSetToNone: Bool? = nil,
            weekend: WeekendRate1? = nil,
            weekendSetToNone: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.additionalMileage = additionalMileage
            self.additionalMileageSetToNone = additionalMileageSetToNone
            self.afterHours = afterHours
            self.afterHoursSetToNone = afterHoursSetToNone
            self.attempt = attempt
            self.attemptSetToNone = attemptSetToNone
            self.baseMileage = baseMileage
            self.baseMileageSetToNone = baseMileageSetToNone
            self.cargoTypes = cargoTypes
            self.comments = comments
            self.commentsSetToNone = commentsSetToNone
            self.currencyCode = currencyCode
            self.dangerousGoods = dangerousGoods
            self.dangerousGoodsSetToNone = dangerousGoodsSetToNone
            self.extraStop = extraStop
            self.extraStopSetToNone = extraStopSetToNone
            self.flatFee = flatFee
            self.flatFeeSetToNone = flatFeeSetToNone
            self.fuelSurcharge = fuelSurcharge
            self.fuelSurchargeSetToNone = fuelSurchargeSetToNone
            self.holiday = holiday
            self.holidaySetToNone = holidaySetToNone
            self.longDistanceSurcharge = longDistanceSurcharge
            self.longDistanceSurchargeSetToNone = longDistanceSurchargeSetToNone
            self.name = name
            self.nameSetToNone = nameSetToNone
            self.pickAndHold = pickAndHold
            self.pickAndHoldSetToNone = pickAndHoldSetToNone
            self.vehicleTypes = vehicleTypes
            self.waitTime = waitTime
            self.waitTimeSetToNone = waitTimeSetToNone
            self.weekend = weekend
            self.weekendSetToNone = weekendSetToNone
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.additionalMileage = try container.decodeIfPresent(AdditionalMileageRate1.self, forKey: .additionalMileage)
            self.additionalMileageSetToNone = try container.decodeIfPresent(Bool.self, forKey: .additionalMileageSetToNone)
            self.afterHours = try container.decodeIfPresent(AfterHoursRate1.self, forKey: .afterHours)
            self.afterHoursSetToNone = try container.decodeIfPresent(Bool.self, forKey: .afterHoursSetToNone)
            self.attempt = try container.decodeIfPresent(AttemptRate1.self, forKey: .attempt)
            self.attemptSetToNone = try container.decodeIfPresent(Bool.self, forKey: .attemptSetToNone)
            self.baseMileage = try container.decodeIfPresent(BaseMileageRate1.self, forKey: .baseMileage)
            self.baseMileageSetToNone = try container.decodeIfPresent(Bool.self, forKey: .baseMileageSetToNone)
            self.cargoTypes = try container.decodeIfPresent([CargoTypeEnum1].self, forKey: .cargoTypes)
            self.comments = try container.decodeIfPresent(String.self, forKey: .comments)
            self.commentsSetToNone = try container.decodeIfPresent(Bool.self, forKey: .commentsSetToNone)
            self.currencyCode = try container.decodeIfPresent(BillingCurrencyCodeEnum1.self, forKey: .currencyCode)
            self.dangerousGoods = try container.decodeIfPresent(DangerousGoodsRate1.self, forKey: .dangerousGoods)
            self.dangerousGoodsSetToNone = try container.decodeIfPresent(Bool.self, forKey: .dangerousGoodsSetToNone)
            self.extraStop = try container.decodeIfPresent(ExtraStopRate1.self, forKey: .extraStop)
            self.extraStopSetToNone = try container.decodeIfPresent(Bool.self, forKey: .extraStopSetToNone)
            self.flatFee = try container.decodeIfPresent(FlatFeeRate1.self, forKey: .flatFee)
            self.flatFeeSetToNone = try container.decodeIfPresent(Bool.self, forKey: .flatFeeSetToNone)
            self.fuelSurcharge = try container.decodeIfPresent(FuelSurchargeRate1.self, forKey: .fuelSurcharge)
            self.fuelSurchargeSetToNone = try container.decodeIfPresent(Bool.self, forKey: .fuelSurchargeSetToNone)
            self.holiday = try container.decodeIfPresent(HolidayRate1.self, forKey: .holiday)
            self.holidaySetToNone = try container.decodeIfPresent(Bool.self, forKey: .holidaySetToNone)
            self.longDistanceSurcharge = try container.decodeIfPresent(LongDistanceSurchargeRate1.self, forKey: .longDistanceSurcharge)
            self.longDistanceSurchargeSetToNone = try container.decodeIfPresent(Bool.self, forKey: .longDistanceSurchargeSetToNone)
            self.name = try container.decodeIfPresent(String.self, forKey: .name)
            self.nameSetToNone = try container.decodeIfPresent(Bool.self, forKey: .nameSetToNone)
            self.pickAndHold = try container.decodeIfPresent(PickAndHoldRate1.self, forKey: .pickAndHold)
            self.pickAndHoldSetToNone = try container.decodeIfPresent(Bool.self, forKey: .pickAndHoldSetToNone)
            self.vehicleTypes = try container.decodeIfPresent([VehicleTypeEnum].self, forKey: .vehicleTypes)
            self.waitTime = try container.decodeIfPresent(WaitTimeRate1.self, forKey: .waitTime)
            self.waitTimeSetToNone = try container.decodeIfPresent(Bool.self, forKey: .waitTimeSetToNone)
            self.weekend = try container.decodeIfPresent(WeekendRate1.self, forKey: .weekend)
            self.weekendSetToNone = try container.decodeIfPresent(Bool.self, forKey: .weekendSetToNone)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.additionalMileage, forKey: .additionalMileage)
            try container.encodeIfPresent(self.additionalMileageSetToNone, forKey: .additionalMileageSetToNone)
            try container.encodeIfPresent(self.afterHours, forKey: .afterHours)
            try container.encodeIfPresent(self.afterHoursSetToNone, forKey: .afterHoursSetToNone)
            try container.encodeIfPresent(self.attempt, forKey: .attempt)
            try container.encodeIfPresent(self.attemptSetToNone, forKey: .attemptSetToNone)
            try container.encodeIfPresent(self.baseMileage, forKey: .baseMileage)
            try container.encodeIfPresent(self.baseMileageSetToNone, forKey: .baseMileageSetToNone)
            try container.encodeIfPresent(self.cargoTypes, forKey: .cargoTypes)
            try container.encodeIfPresent(self.comments, forKey: .comments)
            try container.encodeIfPresent(self.commentsSetToNone, forKey: .commentsSetToNone)
            try container.encodeIfPresent(self.currencyCode, forKey: .currencyCode)
            try container.encodeIfPresent(self.dangerousGoods, forKey: .dangerousGoods)
            try container.encodeIfPresent(self.dangerousGoodsSetToNone, forKey: .dangerousGoodsSetToNone)
            try container.encodeIfPresent(self.extraStop, forKey: .extraStop)
            try container.encodeIfPresent(self.extraStopSetToNone, forKey: .extraStopSetToNone)
            try container.encodeIfPresent(self.flatFee, forKey: .flatFee)
            try container.encodeIfPresent(self.flatFeeSetToNone, forKey: .flatFeeSetToNone)
            try container.encodeIfPresent(self.fuelSurcharge, forKey: .fuelSurcharge)
            try container.encodeIfPresent(self.fuelSurchargeSetToNone, forKey: .fuelSurchargeSetToNone)
            try container.encodeIfPresent(self.holiday, forKey: .holiday)
            try container.encodeIfPresent(self.holidaySetToNone, forKey: .holidaySetToNone)
            try container.encodeIfPresent(self.longDistanceSurcharge, forKey: .longDistanceSurcharge)
            try container.encodeIfPresent(self.longDistanceSurchargeSetToNone, forKey: .longDistanceSurchargeSetToNone)
            try container.encodeIfPresent(self.name, forKey: .name)
            try container.encodeIfPresent(self.nameSetToNone, forKey: .nameSetToNone)
            try container.encodeIfPresent(self.pickAndHold, forKey: .pickAndHold)
            try container.encodeIfPresent(self.pickAndHoldSetToNone, forKey: .pickAndHoldSetToNone)
            try container.encodeIfPresent(self.vehicleTypes, forKey: .vehicleTypes)
            try container.encodeIfPresent(self.waitTime, forKey: .waitTime)
            try container.encodeIfPresent(self.waitTimeSetToNone, forKey: .waitTimeSetToNone)
            try container.encodeIfPresent(self.weekend, forKey: .weekend)
            try container.encodeIfPresent(self.weekendSetToNone, forKey: .weekendSetToNone)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case additionalMileage = "additional_mileage"
            case additionalMileageSetToNone = "additional_mileage__set_to_None"
            case afterHours = "after_hours"
            case afterHoursSetToNone = "after_hours__set_to_None"
            case attempt
            case attemptSetToNone = "attempt__set_to_None"
            case baseMileage = "base_mileage"
            case baseMileageSetToNone = "base_mileage__set_to_None"
            case cargoTypes = "cargo_types"
            case comments
            case commentsSetToNone = "comments__set_to_None"
            case currencyCode = "currency_code"
            case dangerousGoods = "dangerous_goods"
            case dangerousGoodsSetToNone = "dangerous_goods__set_to_None"
            case extraStop = "extra_stop"
            case extraStopSetToNone = "extra_stop__set_to_None"
            case flatFee = "flat_fee"
            case flatFeeSetToNone = "flat_fee__set_to_None"
            case fuelSurcharge = "fuel_surcharge"
            case fuelSurchargeSetToNone = "fuel_surcharge__set_to_None"
            case holiday
            case holidaySetToNone = "holiday__set_to_None"
            case longDistanceSurcharge = "long_distance_surcharge"
            case longDistanceSurchargeSetToNone = "long_distance_surcharge__set_to_None"
            case name
            case nameSetToNone = "name__set_to_None"
            case pickAndHold = "pick_and_hold"
            case pickAndHoldSetToNone = "pick_and_hold__set_to_None"
            case vehicleTypes = "vehicle_types"
            case waitTime = "wait_time"
            case waitTimeSetToNone = "wait_time__set_to_None"
            case weekend
            case weekendSetToNone = "weekend__set_to_None"
        }
    }
}