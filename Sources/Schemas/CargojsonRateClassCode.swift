import Foundation

/// https://github.com/champ-cargosystems-gmbh/cargojson.champ.aero/blob/master/src/main/java/aero/champ/cargojson/common/RateClassCode.java
public enum CargojsonRateClassCode: String, Codable, Hashable, CaseIterable, Sendable {
    case basicCharge = "BASIC_CHARGE"
    case classRateReduction = "CLASS_RATE_REDUCTION"
    case classRateSurcharge = "CLASS_RATE_SURCHARGE"
    case internationalPriorityServiceRate = "INTERNATIONAL_PRIORITY_SERVICE_RATE"
    case minimumCharge = "MINIMUM_CHARGE"
    case normalRate = "NORMAL_RATE"
    case quantityRate = "QUANTITY_RATE"
    case ratePerKilogram = "RATE_PER_KILOGRAM"
    case specificCommodityRate = "SPECIFIC_COMMODITY_RATE"
    case unitLoadDeviceAdditionalInformation = "UNIT_LOAD_DEVICE_ADDITIONAL_INFORMATION"
    case unitLoadDeviceAdditionalRate = "UNIT_LOAD_DEVICE_ADDITIONAL_RATE"
    case unitLoadDevideBasicChargeOrRate = "UNIT_LOAD_DEVIDE_BASIC_CHARGE_OR_RATE"
    case unitLoadDeviceDiscount = "UNIT_LOAD_DEVICE_DISCOUNT"
}