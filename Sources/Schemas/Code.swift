import Foundation

/// Stable code for client behavior; do not parse detail.
public enum Code: String, Codable, Hashable, CaseIterable, Sendable {
    case fileScanPending = "FILE_SCAN_PENDING"
    case fileMalwareDetected = "FILE_MALWARE_DETECTED"
    case fileScanUnsupported = "FILE_SCAN_UNSUPPORTED"
    case fileScanFailed = "FILE_SCAN_FAILED"
    case fileScanAccessDenied = "FILE_SCAN_ACCESS_DENIED"
    case fileScanStatusUnavailable = "FILE_SCAN_STATUS_UNAVAILABLE"
    case fileDownloadUnavailable = "FILE_DOWNLOAD_UNAVAILABLE"
    case fileNotFound = "FILE_NOT_FOUND"
}