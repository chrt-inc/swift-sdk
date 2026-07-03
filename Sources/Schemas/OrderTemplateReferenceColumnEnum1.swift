import Foundation

public enum OrderTemplateReferenceColumnEnum1: String, Codable, Hashable, CaseIterable, Sendable {
    case shipperOrgId = "shipper_org_id"
    case offChrtShipperOrgId = "off_chrt_shipper_org_id"
    case executorOrgIds = "executor_org_ids"
    case offChrtExecutorOrgIds = "off_chrt_executor_org_ids"
    case driverIds = "driver_ids"
    case directoryEntryIds = "directory_entry_ids"
}