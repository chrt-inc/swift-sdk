import Foundation

public struct TaskGroup1: Codable, Hashable, Sendable {
    public let id: String
    public let cancelledAtTimestamp: Date?
    public let completedAtTimestamp: Date?
    /// Must be a string starting with `org_`
    public let coordinatorOrgId: String?
    /// Must be a string starting with `org_`
    public let createdByOrgId: String
    /// Must be a string starting with `user_`
    public let createdByUserId: String?
    public let draftStartedAtTimestamp: Date
    public let driverId: String?
    public let exceptionAtTimestamp: Date?
    /// Must be a string starting with `org_`
    public let executorOrgId: String?
    public let flightLegIds: [String]?
    public let flightSetupNotes: String?
    public let inProgressAtTimestamp: Date?
    public let messages: [TaskGroupMessage1]?
    public let mileageAsserted: Bool?
    public let mileageEstimated: Double?
    public let mileageObserved: Double?
    public let offChrtExecutorOrgId: String?
    public let offChrtShipperOrgId: String?
    public let orderId: String
    /// Must be a URL-safe string of 1-64 characters. Allowed characters: A-Z, a-z, 0-9, '.', '_', '~', '-' (RFC 3986 unreserved).
    public let orderOffChrtReferenceId: String?
    public let orderShortId: String
    public let providerPayDriverBillingLedgerPeriodId: String?
    public let providerPayDriverLineItemGroupId: String?
    public let providerPayDriverRateSheetId: String?
    public let providerPayProviderBillingLedgerPeriodId: String?
    public let providerPayProviderLineItemGroupId: String?
    public let providerPayProviderRateSheetId: String?
    public let schemaVersion: Int
    /// Must be a string starting with `org_`
    public let shipperOrgId: String?
    public let shipperPayProviderBillingLedgerPeriodId: String?
    public let shipperPayProviderLineItemGroupId: String?
    public let shipperPayProviderRateSheetId: String?
    public let skippedAtTimestamp: Date?
    public let stagedAtTimestamp: Date?
    public let status: TaskGroupStatusEnum1?
    public let taskGroupS3ObjectMetadataIds: [String]?
    public let taskGroupType: TaskGroupTypeEnum1
    public let taskIds: [String]?
    public let vehicleType: VehicleTypeEnum?
    public let waitTimeTotalMinutes: Double?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        cancelledAtTimestamp: Date? = nil,
        completedAtTimestamp: Date? = nil,
        coordinatorOrgId: String? = nil,
        createdByOrgId: String,
        createdByUserId: String? = nil,
        draftStartedAtTimestamp: Date,
        driverId: String? = nil,
        exceptionAtTimestamp: Date? = nil,
        executorOrgId: String? = nil,
        flightLegIds: [String]? = nil,
        flightSetupNotes: String? = nil,
        inProgressAtTimestamp: Date? = nil,
        messages: [TaskGroupMessage1]? = nil,
        mileageAsserted: Bool? = nil,
        mileageEstimated: Double? = nil,
        mileageObserved: Double? = nil,
        offChrtExecutorOrgId: String? = nil,
        offChrtShipperOrgId: String? = nil,
        orderId: String,
        orderOffChrtReferenceId: String? = nil,
        orderShortId: String,
        providerPayDriverBillingLedgerPeriodId: String? = nil,
        providerPayDriverLineItemGroupId: String? = nil,
        providerPayDriverRateSheetId: String? = nil,
        providerPayProviderBillingLedgerPeriodId: String? = nil,
        providerPayProviderLineItemGroupId: String? = nil,
        providerPayProviderRateSheetId: String? = nil,
        schemaVersion: Int,
        shipperOrgId: String? = nil,
        shipperPayProviderBillingLedgerPeriodId: String? = nil,
        shipperPayProviderLineItemGroupId: String? = nil,
        shipperPayProviderRateSheetId: String? = nil,
        skippedAtTimestamp: Date? = nil,
        stagedAtTimestamp: Date? = nil,
        status: TaskGroupStatusEnum1? = nil,
        taskGroupS3ObjectMetadataIds: [String]? = nil,
        taskGroupType: TaskGroupTypeEnum1,
        taskIds: [String]? = nil,
        vehicleType: VehicleTypeEnum? = nil,
        waitTimeTotalMinutes: Double? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.cancelledAtTimestamp = cancelledAtTimestamp
        self.completedAtTimestamp = completedAtTimestamp
        self.coordinatorOrgId = coordinatorOrgId
        self.createdByOrgId = createdByOrgId
        self.createdByUserId = createdByUserId
        self.draftStartedAtTimestamp = draftStartedAtTimestamp
        self.driverId = driverId
        self.exceptionAtTimestamp = exceptionAtTimestamp
        self.executorOrgId = executorOrgId
        self.flightLegIds = flightLegIds
        self.flightSetupNotes = flightSetupNotes
        self.inProgressAtTimestamp = inProgressAtTimestamp
        self.messages = messages
        self.mileageAsserted = mileageAsserted
        self.mileageEstimated = mileageEstimated
        self.mileageObserved = mileageObserved
        self.offChrtExecutorOrgId = offChrtExecutorOrgId
        self.offChrtShipperOrgId = offChrtShipperOrgId
        self.orderId = orderId
        self.orderOffChrtReferenceId = orderOffChrtReferenceId
        self.orderShortId = orderShortId
        self.providerPayDriverBillingLedgerPeriodId = providerPayDriverBillingLedgerPeriodId
        self.providerPayDriverLineItemGroupId = providerPayDriverLineItemGroupId
        self.providerPayDriverRateSheetId = providerPayDriverRateSheetId
        self.providerPayProviderBillingLedgerPeriodId = providerPayProviderBillingLedgerPeriodId
        self.providerPayProviderLineItemGroupId = providerPayProviderLineItemGroupId
        self.providerPayProviderRateSheetId = providerPayProviderRateSheetId
        self.schemaVersion = schemaVersion
        self.shipperOrgId = shipperOrgId
        self.shipperPayProviderBillingLedgerPeriodId = shipperPayProviderBillingLedgerPeriodId
        self.shipperPayProviderLineItemGroupId = shipperPayProviderLineItemGroupId
        self.shipperPayProviderRateSheetId = shipperPayProviderRateSheetId
        self.skippedAtTimestamp = skippedAtTimestamp
        self.stagedAtTimestamp = stagedAtTimestamp
        self.status = status
        self.taskGroupS3ObjectMetadataIds = taskGroupS3ObjectMetadataIds
        self.taskGroupType = taskGroupType
        self.taskIds = taskIds
        self.vehicleType = vehicleType
        self.waitTimeTotalMinutes = waitTimeTotalMinutes
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.cancelledAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .cancelledAtTimestamp)
        self.completedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .completedAtTimestamp)
        self.coordinatorOrgId = try container.decodeIfPresent(String.self, forKey: .coordinatorOrgId)
        self.createdByOrgId = try container.decode(String.self, forKey: .createdByOrgId)
        self.createdByUserId = try container.decodeIfPresent(String.self, forKey: .createdByUserId)
        self.draftStartedAtTimestamp = try container.decode(Date.self, forKey: .draftStartedAtTimestamp)
        self.driverId = try container.decodeIfPresent(String.self, forKey: .driverId)
        self.exceptionAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .exceptionAtTimestamp)
        self.executorOrgId = try container.decodeIfPresent(String.self, forKey: .executorOrgId)
        self.flightLegIds = try container.decodeIfPresent([String].self, forKey: .flightLegIds)
        self.flightSetupNotes = try container.decodeIfPresent(String.self, forKey: .flightSetupNotes)
        self.inProgressAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .inProgressAtTimestamp)
        self.messages = try container.decodeIfPresent([TaskGroupMessage1].self, forKey: .messages)
        self.mileageAsserted = try container.decodeIfPresent(Bool.self, forKey: .mileageAsserted)
        self.mileageEstimated = try container.decodeIfPresent(Double.self, forKey: .mileageEstimated)
        self.mileageObserved = try container.decodeIfPresent(Double.self, forKey: .mileageObserved)
        self.offChrtExecutorOrgId = try container.decodeIfPresent(String.self, forKey: .offChrtExecutorOrgId)
        self.offChrtShipperOrgId = try container.decodeIfPresent(String.self, forKey: .offChrtShipperOrgId)
        self.orderId = try container.decode(String.self, forKey: .orderId)
        self.orderOffChrtReferenceId = try container.decodeIfPresent(String.self, forKey: .orderOffChrtReferenceId)
        self.orderShortId = try container.decode(String.self, forKey: .orderShortId)
        self.providerPayDriverBillingLedgerPeriodId = try container.decodeIfPresent(String.self, forKey: .providerPayDriverBillingLedgerPeriodId)
        self.providerPayDriverLineItemGroupId = try container.decodeIfPresent(String.self, forKey: .providerPayDriverLineItemGroupId)
        self.providerPayDriverRateSheetId = try container.decodeIfPresent(String.self, forKey: .providerPayDriverRateSheetId)
        self.providerPayProviderBillingLedgerPeriodId = try container.decodeIfPresent(String.self, forKey: .providerPayProviderBillingLedgerPeriodId)
        self.providerPayProviderLineItemGroupId = try container.decodeIfPresent(String.self, forKey: .providerPayProviderLineItemGroupId)
        self.providerPayProviderRateSheetId = try container.decodeIfPresent(String.self, forKey: .providerPayProviderRateSheetId)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.shipperOrgId = try container.decodeIfPresent(String.self, forKey: .shipperOrgId)
        self.shipperPayProviderBillingLedgerPeriodId = try container.decodeIfPresent(String.self, forKey: .shipperPayProviderBillingLedgerPeriodId)
        self.shipperPayProviderLineItemGroupId = try container.decodeIfPresent(String.self, forKey: .shipperPayProviderLineItemGroupId)
        self.shipperPayProviderRateSheetId = try container.decodeIfPresent(String.self, forKey: .shipperPayProviderRateSheetId)
        self.skippedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .skippedAtTimestamp)
        self.stagedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .stagedAtTimestamp)
        self.status = try container.decodeIfPresent(TaskGroupStatusEnum1.self, forKey: .status)
        self.taskGroupS3ObjectMetadataIds = try container.decodeIfPresent([String].self, forKey: .taskGroupS3ObjectMetadataIds)
        self.taskGroupType = try container.decode(TaskGroupTypeEnum1.self, forKey: .taskGroupType)
        self.taskIds = try container.decodeIfPresent([String].self, forKey: .taskIds)
        self.vehicleType = try container.decodeIfPresent(VehicleTypeEnum.self, forKey: .vehicleType)
        self.waitTimeTotalMinutes = try container.decodeIfPresent(Double.self, forKey: .waitTimeTotalMinutes)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encodeIfPresent(self.cancelledAtTimestamp, forKey: .cancelledAtTimestamp)
        try container.encodeIfPresent(self.completedAtTimestamp, forKey: .completedAtTimestamp)
        try container.encodeIfPresent(self.coordinatorOrgId, forKey: .coordinatorOrgId)
        try container.encode(self.createdByOrgId, forKey: .createdByOrgId)
        try container.encodeIfPresent(self.createdByUserId, forKey: .createdByUserId)
        try container.encode(self.draftStartedAtTimestamp, forKey: .draftStartedAtTimestamp)
        try container.encodeIfPresent(self.driverId, forKey: .driverId)
        try container.encodeIfPresent(self.exceptionAtTimestamp, forKey: .exceptionAtTimestamp)
        try container.encodeIfPresent(self.executorOrgId, forKey: .executorOrgId)
        try container.encodeIfPresent(self.flightLegIds, forKey: .flightLegIds)
        try container.encodeIfPresent(self.flightSetupNotes, forKey: .flightSetupNotes)
        try container.encodeIfPresent(self.inProgressAtTimestamp, forKey: .inProgressAtTimestamp)
        try container.encodeIfPresent(self.messages, forKey: .messages)
        try container.encodeIfPresent(self.mileageAsserted, forKey: .mileageAsserted)
        try container.encodeIfPresent(self.mileageEstimated, forKey: .mileageEstimated)
        try container.encodeIfPresent(self.mileageObserved, forKey: .mileageObserved)
        try container.encodeIfPresent(self.offChrtExecutorOrgId, forKey: .offChrtExecutorOrgId)
        try container.encodeIfPresent(self.offChrtShipperOrgId, forKey: .offChrtShipperOrgId)
        try container.encode(self.orderId, forKey: .orderId)
        try container.encodeIfPresent(self.orderOffChrtReferenceId, forKey: .orderOffChrtReferenceId)
        try container.encode(self.orderShortId, forKey: .orderShortId)
        try container.encodeIfPresent(self.providerPayDriverBillingLedgerPeriodId, forKey: .providerPayDriverBillingLedgerPeriodId)
        try container.encodeIfPresent(self.providerPayDriverLineItemGroupId, forKey: .providerPayDriverLineItemGroupId)
        try container.encodeIfPresent(self.providerPayDriverRateSheetId, forKey: .providerPayDriverRateSheetId)
        try container.encodeIfPresent(self.providerPayProviderBillingLedgerPeriodId, forKey: .providerPayProviderBillingLedgerPeriodId)
        try container.encodeIfPresent(self.providerPayProviderLineItemGroupId, forKey: .providerPayProviderLineItemGroupId)
        try container.encodeIfPresent(self.providerPayProviderRateSheetId, forKey: .providerPayProviderRateSheetId)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encodeIfPresent(self.shipperOrgId, forKey: .shipperOrgId)
        try container.encodeIfPresent(self.shipperPayProviderBillingLedgerPeriodId, forKey: .shipperPayProviderBillingLedgerPeriodId)
        try container.encodeIfPresent(self.shipperPayProviderLineItemGroupId, forKey: .shipperPayProviderLineItemGroupId)
        try container.encodeIfPresent(self.shipperPayProviderRateSheetId, forKey: .shipperPayProviderRateSheetId)
        try container.encodeIfPresent(self.skippedAtTimestamp, forKey: .skippedAtTimestamp)
        try container.encodeIfPresent(self.stagedAtTimestamp, forKey: .stagedAtTimestamp)
        try container.encodeIfPresent(self.status, forKey: .status)
        try container.encodeIfPresent(self.taskGroupS3ObjectMetadataIds, forKey: .taskGroupS3ObjectMetadataIds)
        try container.encode(self.taskGroupType, forKey: .taskGroupType)
        try container.encodeIfPresent(self.taskIds, forKey: .taskIds)
        try container.encodeIfPresent(self.vehicleType, forKey: .vehicleType)
        try container.encodeIfPresent(self.waitTimeTotalMinutes, forKey: .waitTimeTotalMinutes)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case cancelledAtTimestamp = "cancelled_at_timestamp"
        case completedAtTimestamp = "completed_at_timestamp"
        case coordinatorOrgId = "coordinator_org_id"
        case createdByOrgId = "created_by_org_id"
        case createdByUserId = "created_by_user_id"
        case draftStartedAtTimestamp = "draft_started_at_timestamp"
        case driverId = "driver_id"
        case exceptionAtTimestamp = "exception_at_timestamp"
        case executorOrgId = "executor_org_id"
        case flightLegIds = "flight_leg_ids"
        case flightSetupNotes = "flight_setup_notes"
        case inProgressAtTimestamp = "in_progress_at_timestamp"
        case messages
        case mileageAsserted = "mileage_asserted"
        case mileageEstimated = "mileage_estimated"
        case mileageObserved = "mileage_observed"
        case offChrtExecutorOrgId = "off_chrt_executor_org_id"
        case offChrtShipperOrgId = "off_chrt_shipper_org_id"
        case orderId = "order_id"
        case orderOffChrtReferenceId = "order_off_chrt_reference_id"
        case orderShortId = "order_short_id"
        case providerPayDriverBillingLedgerPeriodId = "provider_pay_driver_billing_ledger_period_id"
        case providerPayDriverLineItemGroupId = "provider_pay_driver_line_item_group_id"
        case providerPayDriverRateSheetId = "provider_pay_driver_rate_sheet_id"
        case providerPayProviderBillingLedgerPeriodId = "provider_pay_provider_billing_ledger_period_id"
        case providerPayProviderLineItemGroupId = "provider_pay_provider_line_item_group_id"
        case providerPayProviderRateSheetId = "provider_pay_provider_rate_sheet_id"
        case schemaVersion = "schema_version"
        case shipperOrgId = "shipper_org_id"
        case shipperPayProviderBillingLedgerPeriodId = "shipper_pay_provider_billing_ledger_period_id"
        case shipperPayProviderLineItemGroupId = "shipper_pay_provider_line_item_group_id"
        case shipperPayProviderRateSheetId = "shipper_pay_provider_rate_sheet_id"
        case skippedAtTimestamp = "skipped_at_timestamp"
        case stagedAtTimestamp = "staged_at_timestamp"
        case status
        case taskGroupS3ObjectMetadataIds = "task_group_s3_object_metadata_ids"
        case taskGroupType = "task_group_type"
        case taskIds = "task_ids"
        case vehicleType = "vehicle_type"
        case waitTimeTotalMinutes = "wait_time_total_minutes"
    }
}