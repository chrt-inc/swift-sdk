import Foundation

public enum UnpricedReasonCodeEnum1: String, Codable, Hashable, CaseIterable, Sendable {
    case noRateSheet = "no_rate_sheet"
    case rateSheetNotFound = "rate_sheet_not_found"
    case rateSheetNotInEffect = "rate_sheet_not_in_effect"
    case ruleNotPricedYet = "rule_not_priced_yet"
    case missingStops = "missing_stops"
    case noLaneRate = "no_lane_rate"
    case noLocationRate = "no_location_rate"
    case missingMiles = "missing_miles"
    case noCargoToMeasure = "no_cargo_to_measure"
    case missingMeasurements = "missing_measurements"
    case chargedOnGrossWeight = "charged_on_gross_weight"
    case currencyLeftOut = "currency_left_out"
    case noPayableLines = "no_payable_lines"
    case noReceivableLinesToShare = "no_receivable_lines_to_share"
    case orderWideChargesLeftOut = "order_wide_charges_left_out"
    case noFuelSurchargeConfiguration = "no_fuel_surcharge_configuration"
}