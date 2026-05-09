import Foundation

public enum LineItemProvenanceEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case rateSheet = "rate_sheet"
    case adHoc = "ad_hoc"
    case proForma = "pro_forma"
}