import Foundation

extension Requests {
    public struct ChrtGroundProviderRatesClientCreate1: Codable, Hashable, Sendable {
        public let additionalMileage: AdditionalMileageRate1?
        public let afterHours: AfterHoursRate1?
        public let archived: Bool?
        public let attempt: AttemptRate1?
        public let baseMileage: BaseMileageRate1?
        public let cargoTypes: [CargoTypeEnum1]?
        public let comments: String?
        public let counterpartyAccountIds: [String]?
        public let counterpartyDriverIds: [String]?
        public let counterpartyOffChrtOrgDataIds: [String]?
        public let counterpartyOrgIds: [String]?
        public let currencyCode: BillingCurrencyCodeEnum1
        public let dangerousGoods: DangerousGoodsRate1?
        public let extraStop: ExtraStopRate1?
        public let flatFee: FlatFeeRate1?
        public let fuelSurcharge: FuelSurchargeRate1?
        public let holiday: HolidayRate1?
        public let longDistanceSurcharge: LongDistanceSurchargeRate1?
        public let name: String?
        public let pickAndHold: PickAndHoldRate1?
        public let schemaVersion: Int
        public let vehicleTypes: [VehicleTypeEnum]?
        public let waitTime: WaitTimeRate1?
        public let weekend: WeekendRate1?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            additionalMileage: AdditionalMileageRate1? = nil,
            afterHours: AfterHoursRate1? = nil,
            archived: Bool? = nil,
            attempt: AttemptRate1? = nil,
            baseMileage: BaseMileageRate1? = nil,
            cargoTypes: [CargoTypeEnum1]? = nil,
            comments: String? = nil,
            counterpartyAccountIds: [String]? = nil,
            counterpartyDriverIds: [String]? = nil,
            counterpartyOffChrtOrgDataIds: [String]? = nil,
            counterpartyOrgIds: [String]? = nil,
            currencyCode: BillingCurrencyCodeEnum1,
            dangerousGoods: DangerousGoodsRate1? = nil,
            extraStop: ExtraStopRate1? = nil,
            flatFee: FlatFeeRate1? = nil,
            fuelSurcharge: FuelSurchargeRate1? = nil,
            holiday: HolidayRate1? = nil,
            longDistanceSurcharge: LongDistanceSurchargeRate1? = nil,
            name: String? = nil,
            pickAndHold: PickAndHoldRate1? = nil,
            schemaVersion: Int,
            vehicleTypes: [VehicleTypeEnum]? = nil,
            waitTime: WaitTimeRate1? = nil,
            weekend: WeekendRate1? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.additionalMileage = additionalMileage
            self.afterHours = afterHours
            self.archived = archived
            self.attempt = attempt
            self.baseMileage = baseMileage
            self.cargoTypes = cargoTypes
            self.comments = comments
            self.counterpartyAccountIds = counterpartyAccountIds
            self.counterpartyDriverIds = counterpartyDriverIds
            self.counterpartyOffChrtOrgDataIds = counterpartyOffChrtOrgDataIds
            self.counterpartyOrgIds = counterpartyOrgIds
            self.currencyCode = currencyCode
            self.dangerousGoods = dangerousGoods
            self.extraStop = extraStop
            self.flatFee = flatFee
            self.fuelSurcharge = fuelSurcharge
            self.holiday = holiday
            self.longDistanceSurcharge = longDistanceSurcharge
            self.name = name
            self.pickAndHold = pickAndHold
            self.schemaVersion = schemaVersion
            self.vehicleTypes = vehicleTypes
            self.waitTime = waitTime
            self.weekend = weekend
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.additionalMileage = try container.decodeIfPresent(AdditionalMileageRate1.self, forKey: .additionalMileage)
            self.afterHours = try container.decodeIfPresent(AfterHoursRate1.self, forKey: .afterHours)
            self.archived = try container.decodeIfPresent(Bool.self, forKey: .archived)
            self.attempt = try container.decodeIfPresent(AttemptRate1.self, forKey: .attempt)
            self.baseMileage = try container.decodeIfPresent(BaseMileageRate1.self, forKey: .baseMileage)
            self.cargoTypes = try container.decodeIfPresent([CargoTypeEnum1].self, forKey: .cargoTypes)
            self.comments = try container.decodeIfPresent(String.self, forKey: .comments)
            self.counterpartyAccountIds = try container.decodeIfPresent([String].self, forKey: .counterpartyAccountIds)
            self.counterpartyDriverIds = try container.decodeIfPresent([String].self, forKey: .counterpartyDriverIds)
            self.counterpartyOffChrtOrgDataIds = try container.decodeIfPresent([String].self, forKey: .counterpartyOffChrtOrgDataIds)
            self.counterpartyOrgIds = try container.decodeIfPresent([String].self, forKey: .counterpartyOrgIds)
            self.currencyCode = try container.decode(BillingCurrencyCodeEnum1.self, forKey: .currencyCode)
            self.dangerousGoods = try container.decodeIfPresent(DangerousGoodsRate1.self, forKey: .dangerousGoods)
            self.extraStop = try container.decodeIfPresent(ExtraStopRate1.self, forKey: .extraStop)
            self.flatFee = try container.decodeIfPresent(FlatFeeRate1.self, forKey: .flatFee)
            self.fuelSurcharge = try container.decodeIfPresent(FuelSurchargeRate1.self, forKey: .fuelSurcharge)
            self.holiday = try container.decodeIfPresent(HolidayRate1.self, forKey: .holiday)
            self.longDistanceSurcharge = try container.decodeIfPresent(LongDistanceSurchargeRate1.self, forKey: .longDistanceSurcharge)
            self.name = try container.decodeIfPresent(String.self, forKey: .name)
            self.pickAndHold = try container.decodeIfPresent(PickAndHoldRate1.self, forKey: .pickAndHold)
            self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
            self.vehicleTypes = try container.decodeIfPresent([VehicleTypeEnum].self, forKey: .vehicleTypes)
            self.waitTime = try container.decodeIfPresent(WaitTimeRate1.self, forKey: .waitTime)
            self.weekend = try container.decodeIfPresent(WeekendRate1.self, forKey: .weekend)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.additionalMileage, forKey: .additionalMileage)
            try container.encodeIfPresent(self.afterHours, forKey: .afterHours)
            try container.encodeIfPresent(self.archived, forKey: .archived)
            try container.encodeIfPresent(self.attempt, forKey: .attempt)
            try container.encodeIfPresent(self.baseMileage, forKey: .baseMileage)
            try container.encodeIfPresent(self.cargoTypes, forKey: .cargoTypes)
            try container.encodeIfPresent(self.comments, forKey: .comments)
            try container.encodeIfPresent(self.counterpartyAccountIds, forKey: .counterpartyAccountIds)
            try container.encodeIfPresent(self.counterpartyDriverIds, forKey: .counterpartyDriverIds)
            try container.encodeIfPresent(self.counterpartyOffChrtOrgDataIds, forKey: .counterpartyOffChrtOrgDataIds)
            try container.encodeIfPresent(self.counterpartyOrgIds, forKey: .counterpartyOrgIds)
            try container.encode(self.currencyCode, forKey: .currencyCode)
            try container.encodeIfPresent(self.dangerousGoods, forKey: .dangerousGoods)
            try container.encodeIfPresent(self.extraStop, forKey: .extraStop)
            try container.encodeIfPresent(self.flatFee, forKey: .flatFee)
            try container.encodeIfPresent(self.fuelSurcharge, forKey: .fuelSurcharge)
            try container.encodeIfPresent(self.holiday, forKey: .holiday)
            try container.encodeIfPresent(self.longDistanceSurcharge, forKey: .longDistanceSurcharge)
            try container.encodeIfPresent(self.name, forKey: .name)
            try container.encodeIfPresent(self.pickAndHold, forKey: .pickAndHold)
            try container.encode(self.schemaVersion, forKey: .schemaVersion)
            try container.encodeIfPresent(self.vehicleTypes, forKey: .vehicleTypes)
            try container.encodeIfPresent(self.waitTime, forKey: .waitTime)
            try container.encodeIfPresent(self.weekend, forKey: .weekend)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case additionalMileage = "additional_mileage"
            case afterHours = "after_hours"
            case archived
            case attempt
            case baseMileage = "base_mileage"
            case cargoTypes = "cargo_types"
            case comments
            case counterpartyAccountIds = "counterparty_account_ids"
            case counterpartyDriverIds = "counterparty_driver_ids"
            case counterpartyOffChrtOrgDataIds = "counterparty_off_chrt_org_data_ids"
            case counterpartyOrgIds = "counterparty_org_ids"
            case currencyCode = "currency_code"
            case dangerousGoods = "dangerous_goods"
            case extraStop = "extra_stop"
            case flatFee = "flat_fee"
            case fuelSurcharge = "fuel_surcharge"
            case holiday
            case longDistanceSurcharge = "long_distance_surcharge"
            case name
            case pickAndHold = "pick_and_hold"
            case schemaVersion = "schema_version"
            case vehicleTypes = "vehicle_types"
            case waitTime = "wait_time"
            case weekend
        }
    }
}