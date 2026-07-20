import Foundation

public enum OrderTemplateReferenceColumnEnum1: String, Codable, Hashable, CaseIterable, Sendable {
    case shipperOrgId = "shipper_org_id"
    case offChrtShipperOrgDataId = "off_chrt_shipper_org_data_id"
    case coordinatorShipperAccountIds = "coordinator_shipper_account_ids"
    case executorOrgIds = "executor_org_ids"
    case offChrtExecutorOrgDataIds = "off_chrt_executor_org_data_ids"
    case driverIds = "driver_ids"
    case contactIds = "contact_ids"
}