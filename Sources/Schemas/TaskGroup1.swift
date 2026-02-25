import Foundation

public struct TaskGroup1: Codable, Hashable, Sendable {
    public let id: String
    public let completedAtTimestamp: Date?
    /// Must be a string starting with `org_`
    public let courierOrgId: String?
    public let courierPayDriverLineItemGroupId: String?
    public let courierPayDriverRateSheetId: String?
    /// Must be a string starting with `org_`
    public let createdByOrgId: String
    /// Must be a string starting with `user_`
    public let createdByUserId: String
    public let draftStartedAtTimestamp: Date
    public let driverId: String?
    public let exceptionAtTimestamp: Date?
    public let faFlightIds: [String]?
    public let flightNumber: String?
    public let forwarderPayCourierLineItemGroupId: String?
    public let forwarderPayCourierRateSheetId: String?
    public let inProgressAtTimestamp: Date?
    public let messages: [TaskGroupMessage1]?
    public let orderCancelled: Bool?
    public let orderId: String
    public let orderShortId: String
    public let schemaVersion: Int
    public let serviceType: ServiceTypeEnum1?
    public let shipperPayCourierLineItemGroupId: String?
    public let shipperPayCourierRateSheetId: String?
    public let shipperPayForwarderLineItemGroupId: String?
    public let shipperPayForwarderRateSheetId: String?
    public let skippedAtTimestamp: Date?
    public let stagedAtTimestamp: Date?
    public let status: TaskGroupStatusEnum1?
    public let taskGroupS3ObjectMetadataIds: [String]?
    public let taskGroupType: TaskGroupTypeEnum1
    public let taskIds: [String]?
    public let tasksMileage: Double?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        completedAtTimestamp: Date? = nil,
        courierOrgId: String? = nil,
        courierPayDriverLineItemGroupId: String? = nil,
        courierPayDriverRateSheetId: String? = nil,
        createdByOrgId: String,
        createdByUserId: String,
        draftStartedAtTimestamp: Date,
        driverId: String? = nil,
        exceptionAtTimestamp: Date? = nil,
        faFlightIds: [String]? = nil,
        flightNumber: String? = nil,
        forwarderPayCourierLineItemGroupId: String? = nil,
        forwarderPayCourierRateSheetId: String? = nil,
        inProgressAtTimestamp: Date? = nil,
        messages: [TaskGroupMessage1]? = nil,
        orderCancelled: Bool? = nil,
        orderId: String,
        orderShortId: String,
        schemaVersion: Int,
        serviceType: ServiceTypeEnum1? = nil,
        shipperPayCourierLineItemGroupId: String? = nil,
        shipperPayCourierRateSheetId: String? = nil,
        shipperPayForwarderLineItemGroupId: String? = nil,
        shipperPayForwarderRateSheetId: String? = nil,
        skippedAtTimestamp: Date? = nil,
        stagedAtTimestamp: Date? = nil,
        status: TaskGroupStatusEnum1? = nil,
        taskGroupS3ObjectMetadataIds: [String]? = nil,
        taskGroupType: TaskGroupTypeEnum1,
        taskIds: [String]? = nil,
        tasksMileage: Double? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.completedAtTimestamp = completedAtTimestamp
        self.courierOrgId = courierOrgId
        self.courierPayDriverLineItemGroupId = courierPayDriverLineItemGroupId
        self.courierPayDriverRateSheetId = courierPayDriverRateSheetId
        self.createdByOrgId = createdByOrgId
        self.createdByUserId = createdByUserId
        self.draftStartedAtTimestamp = draftStartedAtTimestamp
        self.driverId = driverId
        self.exceptionAtTimestamp = exceptionAtTimestamp
        self.faFlightIds = faFlightIds
        self.flightNumber = flightNumber
        self.forwarderPayCourierLineItemGroupId = forwarderPayCourierLineItemGroupId
        self.forwarderPayCourierRateSheetId = forwarderPayCourierRateSheetId
        self.inProgressAtTimestamp = inProgressAtTimestamp
        self.messages = messages
        self.orderCancelled = orderCancelled
        self.orderId = orderId
        self.orderShortId = orderShortId
        self.schemaVersion = schemaVersion
        self.serviceType = serviceType
        self.shipperPayCourierLineItemGroupId = shipperPayCourierLineItemGroupId
        self.shipperPayCourierRateSheetId = shipperPayCourierRateSheetId
        self.shipperPayForwarderLineItemGroupId = shipperPayForwarderLineItemGroupId
        self.shipperPayForwarderRateSheetId = shipperPayForwarderRateSheetId
        self.skippedAtTimestamp = skippedAtTimestamp
        self.stagedAtTimestamp = stagedAtTimestamp
        self.status = status
        self.taskGroupS3ObjectMetadataIds = taskGroupS3ObjectMetadataIds
        self.taskGroupType = taskGroupType
        self.taskIds = taskIds
        self.tasksMileage = tasksMileage
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.completedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .completedAtTimestamp)
        self.courierOrgId = try container.decodeIfPresent(String.self, forKey: .courierOrgId)
        self.courierPayDriverLineItemGroupId = try container.decodeIfPresent(String.self, forKey: .courierPayDriverLineItemGroupId)
        self.courierPayDriverRateSheetId = try container.decodeIfPresent(String.self, forKey: .courierPayDriverRateSheetId)
        self.createdByOrgId = try container.decode(String.self, forKey: .createdByOrgId)
        self.createdByUserId = try container.decode(String.self, forKey: .createdByUserId)
        self.draftStartedAtTimestamp = try container.decode(Date.self, forKey: .draftStartedAtTimestamp)
        self.driverId = try container.decodeIfPresent(String.self, forKey: .driverId)
        self.exceptionAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .exceptionAtTimestamp)
        self.faFlightIds = try container.decodeIfPresent([String].self, forKey: .faFlightIds)
        self.flightNumber = try container.decodeIfPresent(String.self, forKey: .flightNumber)
        self.forwarderPayCourierLineItemGroupId = try container.decodeIfPresent(String.self, forKey: .forwarderPayCourierLineItemGroupId)
        self.forwarderPayCourierRateSheetId = try container.decodeIfPresent(String.self, forKey: .forwarderPayCourierRateSheetId)
        self.inProgressAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .inProgressAtTimestamp)
        self.messages = try container.decodeIfPresent([TaskGroupMessage1].self, forKey: .messages)
        self.orderCancelled = try container.decodeIfPresent(Bool.self, forKey: .orderCancelled)
        self.orderId = try container.decode(String.self, forKey: .orderId)
        self.orderShortId = try container.decode(String.self, forKey: .orderShortId)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.serviceType = try container.decodeIfPresent(ServiceTypeEnum1.self, forKey: .serviceType)
        self.shipperPayCourierLineItemGroupId = try container.decodeIfPresent(String.self, forKey: .shipperPayCourierLineItemGroupId)
        self.shipperPayCourierRateSheetId = try container.decodeIfPresent(String.self, forKey: .shipperPayCourierRateSheetId)
        self.shipperPayForwarderLineItemGroupId = try container.decodeIfPresent(String.self, forKey: .shipperPayForwarderLineItemGroupId)
        self.shipperPayForwarderRateSheetId = try container.decodeIfPresent(String.self, forKey: .shipperPayForwarderRateSheetId)
        self.skippedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .skippedAtTimestamp)
        self.stagedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .stagedAtTimestamp)
        self.status = try container.decodeIfPresent(TaskGroupStatusEnum1.self, forKey: .status)
        self.taskGroupS3ObjectMetadataIds = try container.decodeIfPresent([String].self, forKey: .taskGroupS3ObjectMetadataIds)
        self.taskGroupType = try container.decode(TaskGroupTypeEnum1.self, forKey: .taskGroupType)
        self.taskIds = try container.decodeIfPresent([String].self, forKey: .taskIds)
        self.tasksMileage = try container.decodeIfPresent(Double.self, forKey: .tasksMileage)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encodeIfPresent(self.completedAtTimestamp, forKey: .completedAtTimestamp)
        try container.encodeIfPresent(self.courierOrgId, forKey: .courierOrgId)
        try container.encodeIfPresent(self.courierPayDriverLineItemGroupId, forKey: .courierPayDriverLineItemGroupId)
        try container.encodeIfPresent(self.courierPayDriverRateSheetId, forKey: .courierPayDriverRateSheetId)
        try container.encode(self.createdByOrgId, forKey: .createdByOrgId)
        try container.encode(self.createdByUserId, forKey: .createdByUserId)
        try container.encode(self.draftStartedAtTimestamp, forKey: .draftStartedAtTimestamp)
        try container.encodeIfPresent(self.driverId, forKey: .driverId)
        try container.encodeIfPresent(self.exceptionAtTimestamp, forKey: .exceptionAtTimestamp)
        try container.encodeIfPresent(self.faFlightIds, forKey: .faFlightIds)
        try container.encodeIfPresent(self.flightNumber, forKey: .flightNumber)
        try container.encodeIfPresent(self.forwarderPayCourierLineItemGroupId, forKey: .forwarderPayCourierLineItemGroupId)
        try container.encodeIfPresent(self.forwarderPayCourierRateSheetId, forKey: .forwarderPayCourierRateSheetId)
        try container.encodeIfPresent(self.inProgressAtTimestamp, forKey: .inProgressAtTimestamp)
        try container.encodeIfPresent(self.messages, forKey: .messages)
        try container.encodeIfPresent(self.orderCancelled, forKey: .orderCancelled)
        try container.encode(self.orderId, forKey: .orderId)
        try container.encode(self.orderShortId, forKey: .orderShortId)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encodeIfPresent(self.serviceType, forKey: .serviceType)
        try container.encodeIfPresent(self.shipperPayCourierLineItemGroupId, forKey: .shipperPayCourierLineItemGroupId)
        try container.encodeIfPresent(self.shipperPayCourierRateSheetId, forKey: .shipperPayCourierRateSheetId)
        try container.encodeIfPresent(self.shipperPayForwarderLineItemGroupId, forKey: .shipperPayForwarderLineItemGroupId)
        try container.encodeIfPresent(self.shipperPayForwarderRateSheetId, forKey: .shipperPayForwarderRateSheetId)
        try container.encodeIfPresent(self.skippedAtTimestamp, forKey: .skippedAtTimestamp)
        try container.encodeIfPresent(self.stagedAtTimestamp, forKey: .stagedAtTimestamp)
        try container.encodeIfPresent(self.status, forKey: .status)
        try container.encodeIfPresent(self.taskGroupS3ObjectMetadataIds, forKey: .taskGroupS3ObjectMetadataIds)
        try container.encode(self.taskGroupType, forKey: .taskGroupType)
        try container.encodeIfPresent(self.taskIds, forKey: .taskIds)
        try container.encodeIfPresent(self.tasksMileage, forKey: .tasksMileage)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case completedAtTimestamp = "completed_at_timestamp"
        case courierOrgId = "courier_org_id"
        case courierPayDriverLineItemGroupId = "courier_pay_driver_line_item_group_id"
        case courierPayDriverRateSheetId = "courier_pay_driver_rate_sheet_id"
        case createdByOrgId = "created_by_org_id"
        case createdByUserId = "created_by_user_id"
        case draftStartedAtTimestamp = "draft_started_at_timestamp"
        case driverId = "driver_id"
        case exceptionAtTimestamp = "exception_at_timestamp"
        case faFlightIds = "fa_flight_ids"
        case flightNumber = "flight_number"
        case forwarderPayCourierLineItemGroupId = "forwarder_pay_courier_line_item_group_id"
        case forwarderPayCourierRateSheetId = "forwarder_pay_courier_rate_sheet_id"
        case inProgressAtTimestamp = "in_progress_at_timestamp"
        case messages
        case orderCancelled = "order_cancelled"
        case orderId = "order_id"
        case orderShortId = "order_short_id"
        case schemaVersion = "schema_version"
        case serviceType = "service_type"
        case shipperPayCourierLineItemGroupId = "shipper_pay_courier_line_item_group_id"
        case shipperPayCourierRateSheetId = "shipper_pay_courier_rate_sheet_id"
        case shipperPayForwarderLineItemGroupId = "shipper_pay_forwarder_line_item_group_id"
        case shipperPayForwarderRateSheetId = "shipper_pay_forwarder_rate_sheet_id"
        case skippedAtTimestamp = "skipped_at_timestamp"
        case stagedAtTimestamp = "staged_at_timestamp"
        case status
        case taskGroupS3ObjectMetadataIds = "task_group_s3_object_metadata_ids"
        case taskGroupType = "task_group_type"
        case taskIds = "task_ids"
        case tasksMileage = "tasks_mileage"
    }
}