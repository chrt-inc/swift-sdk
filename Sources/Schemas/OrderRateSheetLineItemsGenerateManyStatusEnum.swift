import Foundation

public enum OrderRateSheetLineItemsGenerateManyStatusEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case generated
    case skippedNoRateSheets = "skipped_no_rate_sheets"
    case failed
}