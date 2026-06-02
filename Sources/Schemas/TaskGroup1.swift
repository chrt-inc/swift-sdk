import Foundation

public struct TaskGroup1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    public let id: String
    public let orderId: String
    public let orderShortId: String
    /// Must be a URL-safe string of 1-64 characters. Allowed characters: A-Z, a-z, 0-9, '.', '_', '~', '-' (RFC 3986 unreserved).
    public let orderOffChrtReferenceId: String?
    public let taskIds: [String]?
    public let orderScheduleId: String?
    public let orderScheduleRunIdempotencyKey: String?
    public let orderScheduleTemplatePath: String?
    /// Must be a string starting with `user_`
    public let createdByUserId: String?
    /// Must be a string starting with `org_`
    public let createdByOrgId: String
    /// Must be a string starting with `org_`
    public let shipperOrgId: String?
    public let offChrtShipperOrgId: String?
    /// Must be a string starting with `org_`
    public let coordinatorOrgId: String?
    /// Must be a string starting with `org_`
    public let executorOrgId: String?
    public let offChrtExecutorOrgId: String?
    public let driverId: String?
    public let taskGroupS3ObjectMetadataIds: [String]?
    public let status: TaskGroupStatusEnum1?
    public let draftStartedAtTimestamp: Date
    public let stagedAtTimestamp: Date?
    public let inProgressAtTimestamp: Date?
    public let completedAtTimestamp: Date?
    public let skippedAtTimestamp: Date?
    public let cancelledAtTimestamp: Date?
    public let exceptionAtTimestamp: Date?
    public let taskGroupType: TaskGroupTypeEnum1
    public let vehicleType: VehicleTypeEnum?
    public let mileageEstimated: Double?
    public let mileageObserved: Double?
    public let waitTimeTotalMinutes: Double?
    public let mileageAsserted: Bool?
    public let flightNumber: String?
    public let faFlightIds: [String]?
    public let messages: [TaskGroupMessage1]?
    public let shipperPayProviderRateSheetId: String?
    public let shipperPayProviderLineItemGroupId: String?
    public let shipperPayProviderBillingLedgerPeriodId: String?
    public let providerPayProviderRateSheetId: String?
    public let providerPayProviderLineItemGroupId: String?
    public let providerPayProviderBillingLedgerPeriodId: String?
    public let providerPayDriverRateSheetId: String?
    public let providerPayDriverLineItemGroupId: String?
    public let providerPayDriverBillingLedgerPeriodId: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        id: String,
        orderId: String,
        orderShortId: String,
        orderOffChrtReferenceId: String? = nil,
        taskIds: [String]? = nil,
        orderScheduleId: String? = nil,
        orderScheduleRunIdempotencyKey: String? = nil,
        orderScheduleTemplatePath: String? = nil,
        createdByUserId: String? = nil,
        createdByOrgId: String,
        shipperOrgId: String? = nil,
        offChrtShipperOrgId: String? = nil,
        coordinatorOrgId: String? = nil,
        executorOrgId: String? = nil,
        offChrtExecutorOrgId: String? = nil,
        driverId: String? = nil,
        taskGroupS3ObjectMetadataIds: [String]? = nil,
        status: TaskGroupStatusEnum1? = nil,
        draftStartedAtTimestamp: Date,
        stagedAtTimestamp: Date? = nil,
        inProgressAtTimestamp: Date? = nil,
        completedAtTimestamp: Date? = nil,
        skippedAtTimestamp: Date? = nil,
        cancelledAtTimestamp: Date? = nil,
        exceptionAtTimestamp: Date? = nil,
        taskGroupType: TaskGroupTypeEnum1,
        vehicleType: VehicleTypeEnum? = nil,
        mileageEstimated: Double? = nil,
        mileageObserved: Double? = nil,
        waitTimeTotalMinutes: Double? = nil,
        mileageAsserted: Bool? = nil,
        flightNumber: String? = nil,
        faFlightIds: [String]? = nil,
        messages: [TaskGroupMessage1]? = nil,
        shipperPayProviderRateSheetId: String? = nil,
        shipperPayProviderLineItemGroupId: String? = nil,
        shipperPayProviderBillingLedgerPeriodId: String? = nil,
        providerPayProviderRateSheetId: String? = nil,
        providerPayProviderLineItemGroupId: String? = nil,
        providerPayProviderBillingLedgerPeriodId: String? = nil,
        providerPayDriverRateSheetId: String? = nil,
        providerPayDriverLineItemGroupId: String? = nil,
        providerPayDriverBillingLedgerPeriodId: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.id = id
        self.orderId = orderId
        self.orderShortId = orderShortId
        self.orderOffChrtReferenceId = orderOffChrtReferenceId
        self.taskIds = taskIds
        self.orderScheduleId = orderScheduleId
        self.orderScheduleRunIdempotencyKey = orderScheduleRunIdempotencyKey
        self.orderScheduleTemplatePath = orderScheduleTemplatePath
        self.createdByUserId = createdByUserId
        self.createdByOrgId = createdByOrgId
        self.shipperOrgId = shipperOrgId
        self.offChrtShipperOrgId = offChrtShipperOrgId
        self.coordinatorOrgId = coordinatorOrgId
        self.executorOrgId = executorOrgId
        self.offChrtExecutorOrgId = offChrtExecutorOrgId
        self.driverId = driverId
        self.taskGroupS3ObjectMetadataIds = taskGroupS3ObjectMetadataIds
        self.status = status
        self.draftStartedAtTimestamp = draftStartedAtTimestamp
        self.stagedAtTimestamp = stagedAtTimestamp
        self.inProgressAtTimestamp = inProgressAtTimestamp
        self.completedAtTimestamp = completedAtTimestamp
        self.skippedAtTimestamp = skippedAtTimestamp
        self.cancelledAtTimestamp = cancelledAtTimestamp
        self.exceptionAtTimestamp = exceptionAtTimestamp
        self.taskGroupType = taskGroupType
        self.vehicleType = vehicleType
        self.mileageEstimated = mileageEstimated
        self.mileageObserved = mileageObserved
        self.waitTimeTotalMinutes = waitTimeTotalMinutes
        self.mileageAsserted = mileageAsserted
        self.flightNumber = flightNumber
        self.faFlightIds = faFlightIds
        self.messages = messages
        self.shipperPayProviderRateSheetId = shipperPayProviderRateSheetId
        self.shipperPayProviderLineItemGroupId = shipperPayProviderLineItemGroupId
        self.shipperPayProviderBillingLedgerPeriodId = shipperPayProviderBillingLedgerPeriodId
        self.providerPayProviderRateSheetId = providerPayProviderRateSheetId
        self.providerPayProviderLineItemGroupId = providerPayProviderLineItemGroupId
        self.providerPayProviderBillingLedgerPeriodId = providerPayProviderBillingLedgerPeriodId
        self.providerPayDriverRateSheetId = providerPayDriverRateSheetId
        self.providerPayDriverLineItemGroupId = providerPayDriverLineItemGroupId
        self.providerPayDriverBillingLedgerPeriodId = providerPayDriverBillingLedgerPeriodId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.id = try container.decode(String.self, forKey: .id)
        self.orderId = try container.decode(String.self, forKey: .orderId)
        self.orderShortId = try container.decode(String.self, forKey: .orderShortId)
        self.orderOffChrtReferenceId = try container.decodeIfPresent(String.self, forKey: .orderOffChrtReferenceId)
        self.taskIds = try container.decodeIfPresent([String].self, forKey: .taskIds)
        self.orderScheduleId = try container.decodeIfPresent(String.self, forKey: .orderScheduleId)
        self.orderScheduleRunIdempotencyKey = try container.decodeIfPresent(String.self, forKey: .orderScheduleRunIdempotencyKey)
        self.orderScheduleTemplatePath = try container.decodeIfPresent(String.self, forKey: .orderScheduleTemplatePath)
        self.createdByUserId = try container.decodeIfPresent(String.self, forKey: .createdByUserId)
        self.createdByOrgId = try container.decode(String.self, forKey: .createdByOrgId)
        self.shipperOrgId = try container.decodeIfPresent(String.self, forKey: .shipperOrgId)
        self.offChrtShipperOrgId = try container.decodeIfPresent(String.self, forKey: .offChrtShipperOrgId)
        self.coordinatorOrgId = try container.decodeIfPresent(String.self, forKey: .coordinatorOrgId)
        self.executorOrgId = try container.decodeIfPresent(String.self, forKey: .executorOrgId)
        self.offChrtExecutorOrgId = try container.decodeIfPresent(String.self, forKey: .offChrtExecutorOrgId)
        self.driverId = try container.decodeIfPresent(String.self, forKey: .driverId)
        self.taskGroupS3ObjectMetadataIds = try container.decodeIfPresent([String].self, forKey: .taskGroupS3ObjectMetadataIds)
        self.status = try container.decodeIfPresent(TaskGroupStatusEnum1.self, forKey: .status)
        self.draftStartedAtTimestamp = try container.decode(Date.self, forKey: .draftStartedAtTimestamp)
        self.stagedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .stagedAtTimestamp)
        self.inProgressAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .inProgressAtTimestamp)
        self.completedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .completedAtTimestamp)
        self.skippedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .skippedAtTimestamp)
        self.cancelledAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .cancelledAtTimestamp)
        self.exceptionAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .exceptionAtTimestamp)
        self.taskGroupType = try container.decode(TaskGroupTypeEnum1.self, forKey: .taskGroupType)
        self.vehicleType = try container.decodeIfPresent(VehicleTypeEnum.self, forKey: .vehicleType)
        self.mileageEstimated = try container.decodeIfPresent(Double.self, forKey: .mileageEstimated)
        self.mileageObserved = try container.decodeIfPresent(Double.self, forKey: .mileageObserved)
        self.waitTimeTotalMinutes = try container.decodeIfPresent(Double.self, forKey: .waitTimeTotalMinutes)
        self.mileageAsserted = try container.decodeIfPresent(Bool.self, forKey: .mileageAsserted)
        self.flightNumber = try container.decodeIfPresent(String.self, forKey: .flightNumber)
        self.faFlightIds = try container.decodeIfPresent([String].self, forKey: .faFlightIds)
        self.messages = try container.decodeIfPresent([TaskGroupMessage1].self, forKey: .messages)
        self.shipperPayProviderRateSheetId = try container.decodeIfPresent(String.self, forKey: .shipperPayProviderRateSheetId)
        self.shipperPayProviderLineItemGroupId = try container.decodeIfPresent(String.self, forKey: .shipperPayProviderLineItemGroupId)
        self.shipperPayProviderBillingLedgerPeriodId = try container.decodeIfPresent(String.self, forKey: .shipperPayProviderBillingLedgerPeriodId)
        self.providerPayProviderRateSheetId = try container.decodeIfPresent(String.self, forKey: .providerPayProviderRateSheetId)
        self.providerPayProviderLineItemGroupId = try container.decodeIfPresent(String.self, forKey: .providerPayProviderLineItemGroupId)
        self.providerPayProviderBillingLedgerPeriodId = try container.decodeIfPresent(String.self, forKey: .providerPayProviderBillingLedgerPeriodId)
        self.providerPayDriverRateSheetId = try container.decodeIfPresent(String.self, forKey: .providerPayDriverRateSheetId)
        self.providerPayDriverLineItemGroupId = try container.decodeIfPresent(String.self, forKey: .providerPayDriverLineItemGroupId)
        self.providerPayDriverBillingLedgerPeriodId = try container.decodeIfPresent(String.self, forKey: .providerPayDriverBillingLedgerPeriodId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.orderId, forKey: .orderId)
        try container.encode(self.orderShortId, forKey: .orderShortId)
        try container.encodeIfPresent(self.orderOffChrtReferenceId, forKey: .orderOffChrtReferenceId)
        try container.encodeIfPresent(self.taskIds, forKey: .taskIds)
        try container.encodeIfPresent(self.orderScheduleId, forKey: .orderScheduleId)
        try container.encodeIfPresent(self.orderScheduleRunIdempotencyKey, forKey: .orderScheduleRunIdempotencyKey)
        try container.encodeIfPresent(self.orderScheduleTemplatePath, forKey: .orderScheduleTemplatePath)
        try container.encodeIfPresent(self.createdByUserId, forKey: .createdByUserId)
        try container.encode(self.createdByOrgId, forKey: .createdByOrgId)
        try container.encodeIfPresent(self.shipperOrgId, forKey: .shipperOrgId)
        try container.encodeIfPresent(self.offChrtShipperOrgId, forKey: .offChrtShipperOrgId)
        try container.encodeIfPresent(self.coordinatorOrgId, forKey: .coordinatorOrgId)
        try container.encodeIfPresent(self.executorOrgId, forKey: .executorOrgId)
        try container.encodeIfPresent(self.offChrtExecutorOrgId, forKey: .offChrtExecutorOrgId)
        try container.encodeIfPresent(self.driverId, forKey: .driverId)
        try container.encodeIfPresent(self.taskGroupS3ObjectMetadataIds, forKey: .taskGroupS3ObjectMetadataIds)
        try container.encodeIfPresent(self.status, forKey: .status)
        try container.encode(self.draftStartedAtTimestamp, forKey: .draftStartedAtTimestamp)
        try container.encodeIfPresent(self.stagedAtTimestamp, forKey: .stagedAtTimestamp)
        try container.encodeIfPresent(self.inProgressAtTimestamp, forKey: .inProgressAtTimestamp)
        try container.encodeIfPresent(self.completedAtTimestamp, forKey: .completedAtTimestamp)
        try container.encodeIfPresent(self.skippedAtTimestamp, forKey: .skippedAtTimestamp)
        try container.encodeIfPresent(self.cancelledAtTimestamp, forKey: .cancelledAtTimestamp)
        try container.encodeIfPresent(self.exceptionAtTimestamp, forKey: .exceptionAtTimestamp)
        try container.encode(self.taskGroupType, forKey: .taskGroupType)
        try container.encodeIfPresent(self.vehicleType, forKey: .vehicleType)
        try container.encodeIfPresent(self.mileageEstimated, forKey: .mileageEstimated)
        try container.encodeIfPresent(self.mileageObserved, forKey: .mileageObserved)
        try container.encodeIfPresent(self.waitTimeTotalMinutes, forKey: .waitTimeTotalMinutes)
        try container.encodeIfPresent(self.mileageAsserted, forKey: .mileageAsserted)
        try container.encodeIfPresent(self.flightNumber, forKey: .flightNumber)
        try container.encodeIfPresent(self.faFlightIds, forKey: .faFlightIds)
        try container.encodeIfPresent(self.messages, forKey: .messages)
        try container.encodeIfPresent(self.shipperPayProviderRateSheetId, forKey: .shipperPayProviderRateSheetId)
        try container.encodeIfPresent(self.shipperPayProviderLineItemGroupId, forKey: .shipperPayProviderLineItemGroupId)
        try container.encodeIfPresent(self.shipperPayProviderBillingLedgerPeriodId, forKey: .shipperPayProviderBillingLedgerPeriodId)
        try container.encodeIfPresent(self.providerPayProviderRateSheetId, forKey: .providerPayProviderRateSheetId)
        try container.encodeIfPresent(self.providerPayProviderLineItemGroupId, forKey: .providerPayProviderLineItemGroupId)
        try container.encodeIfPresent(self.providerPayProviderBillingLedgerPeriodId, forKey: .providerPayProviderBillingLedgerPeriodId)
        try container.encodeIfPresent(self.providerPayDriverRateSheetId, forKey: .providerPayDriverRateSheetId)
        try container.encodeIfPresent(self.providerPayDriverLineItemGroupId, forKey: .providerPayDriverLineItemGroupId)
        try container.encodeIfPresent(self.providerPayDriverBillingLedgerPeriodId, forKey: .providerPayDriverBillingLedgerPeriodId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion = "schema_version"
        case id = "_id"
        case orderId = "order_id"
        case orderShortId = "order_short_id"
        case orderOffChrtReferenceId = "order_off_chrt_reference_id"
        case taskIds = "task_ids"
        case orderScheduleId = "order_schedule_id"
        case orderScheduleRunIdempotencyKey = "order_schedule_run_idempotency_key"
        case orderScheduleTemplatePath = "order_schedule_template_path"
        case createdByUserId = "created_by_user_id"
        case createdByOrgId = "created_by_org_id"
        case shipperOrgId = "shipper_org_id"
        case offChrtShipperOrgId = "off_chrt_shipper_org_id"
        case coordinatorOrgId = "coordinator_org_id"
        case executorOrgId = "executor_org_id"
        case offChrtExecutorOrgId = "off_chrt_executor_org_id"
        case driverId = "driver_id"
        case taskGroupS3ObjectMetadataIds = "task_group_s3_object_metadata_ids"
        case status
        case draftStartedAtTimestamp = "draft_started_at_timestamp"
        case stagedAtTimestamp = "staged_at_timestamp"
        case inProgressAtTimestamp = "in_progress_at_timestamp"
        case completedAtTimestamp = "completed_at_timestamp"
        case skippedAtTimestamp = "skipped_at_timestamp"
        case cancelledAtTimestamp = "cancelled_at_timestamp"
        case exceptionAtTimestamp = "exception_at_timestamp"
        case taskGroupType = "task_group_type"
        case vehicleType = "vehicle_type"
        case mileageEstimated = "mileage_estimated"
        case mileageObserved = "mileage_observed"
        case waitTimeTotalMinutes = "wait_time_total_minutes"
        case mileageAsserted = "mileage_asserted"
        case flightNumber = "flight_number"
        case faFlightIds = "fa_flight_ids"
        case messages
        case shipperPayProviderRateSheetId = "shipper_pay_provider_rate_sheet_id"
        case shipperPayProviderLineItemGroupId = "shipper_pay_provider_line_item_group_id"
        case shipperPayProviderBillingLedgerPeriodId = "shipper_pay_provider_billing_ledger_period_id"
        case providerPayProviderRateSheetId = "provider_pay_provider_rate_sheet_id"
        case providerPayProviderLineItemGroupId = "provider_pay_provider_line_item_group_id"
        case providerPayProviderBillingLedgerPeriodId = "provider_pay_provider_billing_ledger_period_id"
        case providerPayDriverRateSheetId = "provider_pay_driver_rate_sheet_id"
        case providerPayDriverLineItemGroupId = "provider_pay_driver_line_item_group_id"
        case providerPayDriverBillingLedgerPeriodId = "provider_pay_driver_billing_ledger_period_id"
    }
}