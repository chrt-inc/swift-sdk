import Foundation

/// https://github.com/champ-cargosystems-gmbh/cargojson.champ.aero/blob/master/src/main/java/aero/champ/cargojson/common/CASSIndicator.java
public enum CargojsonCassIndicator: String, Codable, Hashable, CaseIterable, Sendable {
    case awbAsInvoice = "AWB_AS_INVOICE"
    case cancelAwb = "CANCEL_AWB"
    case chargesCorrectionAdivce = "CHARGES_CORRECTION_ADIVCE"
    case debitOrCreditMemorandum = "DEBIT_OR_CREDIT_MEMORANDUM"
    case identification = "IDENTIFICATION"
    case lateReportingWaybills = "LATE_REPORTING_WAYBILLS"
    case noCommissionOrNegativeSalesIncentive = "NO_COMMISSION_OR_NEGATIVE_SALES_INCENTIVE"
    case originalData = "ORIGINAL_DATA"
    case revisedAdjustedData = "REVISED_ADJUSTED_DATA"
    case serviceAwb = "SERVICE_AWB"
    case taxCalculationRequired = "TAX_CALCULATION_REQUIRED"
    case voidAwb = "VOID_AWB"
}