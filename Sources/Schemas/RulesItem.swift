import Foundation

public enum RulesItem: Codable, Hashable, Sendable {
    case afterHours(AfterHoursChargeRule1)
    case airWaybillResale(AirWaybillResaleChargeRule1)
    case attempt(AttemptChargeRule1)
    case baseRate(BaseRateChargeRule1)
    case dangerousGoods(DangerousGoodsChargeRule1)
    case equipment(EquipmentChargeRule1)
    case extraStop(ExtraStopChargeRule1)
    case flightTicketResale(FlightTicketResaleChargeRule1)
    case fuelSurcharge(FuelSurchargeChargeRule1)
    case holiday(HolidayChargeRule1)
    case locationRate(LocationRateChargeRule1)
    case longDistanceMileage(LongDistanceMileageChargeRule1)
    case mileage(MileageChargeRule1)
    case onboardCourierMissionBase(OnboardCourierMissionBaseChargeRule1)
    case orderMinimum(OrderMinimumChargeRule1)
    case pickAndHold(PickAndHoldChargeRule1)
    case pieceCount(PieceCountChargeRule1)
    case revenueShare(RevenueShareChargeRule1)
    case supplierMarkup(SupplierMarkupChargeRule1)
    case vehicleSurcharge(VehicleSurchargeChargeRule1)
    case waitTime(WaitTimeChargeRule1)
    case weekend(WeekendChargeRule1)
    case weight(WeightChargeRule1)
    case zoneToZone(ZoneToZoneChargeRule1)

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let discriminant = try container.decode(String.self, forKey: .ruleType)
        switch discriminant {
        case "after_hours":
            self = .afterHours(try AfterHoursChargeRule1(from: decoder))
        case "air_waybill_resale":
            self = .airWaybillResale(try AirWaybillResaleChargeRule1(from: decoder))
        case "attempt":
            self = .attempt(try AttemptChargeRule1(from: decoder))
        case "base_rate":
            self = .baseRate(try BaseRateChargeRule1(from: decoder))
        case "dangerous_goods":
            self = .dangerousGoods(try DangerousGoodsChargeRule1(from: decoder))
        case "equipment":
            self = .equipment(try EquipmentChargeRule1(from: decoder))
        case "extra_stop":
            self = .extraStop(try ExtraStopChargeRule1(from: decoder))
        case "flight_ticket_resale":
            self = .flightTicketResale(try FlightTicketResaleChargeRule1(from: decoder))
        case "fuel_surcharge":
            self = .fuelSurcharge(try FuelSurchargeChargeRule1(from: decoder))
        case "holiday":
            self = .holiday(try HolidayChargeRule1(from: decoder))
        case "location_rate":
            self = .locationRate(try LocationRateChargeRule1(from: decoder))
        case "long_distance_mileage":
            self = .longDistanceMileage(try LongDistanceMileageChargeRule1(from: decoder))
        case "mileage":
            self = .mileage(try MileageChargeRule1(from: decoder))
        case "onboard_courier_mission_base":
            self = .onboardCourierMissionBase(try OnboardCourierMissionBaseChargeRule1(from: decoder))
        case "order_minimum":
            self = .orderMinimum(try OrderMinimumChargeRule1(from: decoder))
        case "pick_and_hold":
            self = .pickAndHold(try PickAndHoldChargeRule1(from: decoder))
        case "piece_count":
            self = .pieceCount(try PieceCountChargeRule1(from: decoder))
        case "revenue_share":
            self = .revenueShare(try RevenueShareChargeRule1(from: decoder))
        case "supplier_markup":
            self = .supplierMarkup(try SupplierMarkupChargeRule1(from: decoder))
        case "vehicle_surcharge":
            self = .vehicleSurcharge(try VehicleSurchargeChargeRule1(from: decoder))
        case "wait_time":
            self = .waitTime(try WaitTimeChargeRule1(from: decoder))
        case "weekend":
            self = .weekend(try WeekendChargeRule1(from: decoder))
        case "weight":
            self = .weight(try WeightChargeRule1(from: decoder))
        case "zone_to_zone":
            self = .zoneToZone(try ZoneToZoneChargeRule1(from: decoder))
        default:
            throw DecodingError.dataCorrupted(
                DecodingError.Context(
                    codingPath: decoder.codingPath,
                    debugDescription: "Unknown shape discriminant value: \(discriminant)"
                )
            )
        }
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        switch self {
        case .afterHours(let data):
            try container.encode("after_hours", forKey: .ruleType)
            try data.encode(to: encoder)
        case .airWaybillResale(let data):
            try container.encode("air_waybill_resale", forKey: .ruleType)
            try data.encode(to: encoder)
        case .attempt(let data):
            try container.encode("attempt", forKey: .ruleType)
            try data.encode(to: encoder)
        case .baseRate(let data):
            try container.encode("base_rate", forKey: .ruleType)
            try data.encode(to: encoder)
        case .dangerousGoods(let data):
            try container.encode("dangerous_goods", forKey: .ruleType)
            try data.encode(to: encoder)
        case .equipment(let data):
            try container.encode("equipment", forKey: .ruleType)
            try data.encode(to: encoder)
        case .extraStop(let data):
            try container.encode("extra_stop", forKey: .ruleType)
            try data.encode(to: encoder)
        case .flightTicketResale(let data):
            try container.encode("flight_ticket_resale", forKey: .ruleType)
            try data.encode(to: encoder)
        case .fuelSurcharge(let data):
            try container.encode("fuel_surcharge", forKey: .ruleType)
            try data.encode(to: encoder)
        case .holiday(let data):
            try container.encode("holiday", forKey: .ruleType)
            try data.encode(to: encoder)
        case .locationRate(let data):
            try container.encode("location_rate", forKey: .ruleType)
            try data.encode(to: encoder)
        case .longDistanceMileage(let data):
            try container.encode("long_distance_mileage", forKey: .ruleType)
            try data.encode(to: encoder)
        case .mileage(let data):
            try container.encode("mileage", forKey: .ruleType)
            try data.encode(to: encoder)
        case .onboardCourierMissionBase(let data):
            try container.encode("onboard_courier_mission_base", forKey: .ruleType)
            try data.encode(to: encoder)
        case .orderMinimum(let data):
            try container.encode("order_minimum", forKey: .ruleType)
            try data.encode(to: encoder)
        case .pickAndHold(let data):
            try container.encode("pick_and_hold", forKey: .ruleType)
            try data.encode(to: encoder)
        case .pieceCount(let data):
            try container.encode("piece_count", forKey: .ruleType)
            try data.encode(to: encoder)
        case .revenueShare(let data):
            try container.encode("revenue_share", forKey: .ruleType)
            try data.encode(to: encoder)
        case .supplierMarkup(let data):
            try container.encode("supplier_markup", forKey: .ruleType)
            try data.encode(to: encoder)
        case .vehicleSurcharge(let data):
            try container.encode("vehicle_surcharge", forKey: .ruleType)
            try data.encode(to: encoder)
        case .waitTime(let data):
            try container.encode("wait_time", forKey: .ruleType)
            try data.encode(to: encoder)
        case .weekend(let data):
            try container.encode("weekend", forKey: .ruleType)
            try data.encode(to: encoder)
        case .weight(let data):
            try container.encode("weight", forKey: .ruleType)
            try data.encode(to: encoder)
        case .zoneToZone(let data):
            try container.encode("zone_to_zone", forKey: .ruleType)
            try data.encode(to: encoder)
        }
    }

    enum CodingKeys: String, CodingKey, CaseIterable {
        case ruleType = "rule_type"
    }
}