import Foundation

/// Early-warning signal level on shipment execution (alerts.level).
public enum CargoAiTrackAndTraceAlertLevelEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case ok = "OK"
    case watch = "WATCH"
    case atRisk = "AT_RISK"
}