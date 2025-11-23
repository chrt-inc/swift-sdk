import Foundation

/// Request model for listing expanded task groups with filters and expansion options.
public struct TaskGroupExpandedListReq: Codable, Hashable, Sendable {
    public let expandForwarderOrgCompanyName: Bool?
    public let expandForwarderOrgHandle: Bool?
    public let expandShipperOrgCompanyName: Bool?
    public let expandOffChrtShipperOrgCompanyName: Bool?
    public let expandTasks: Bool?
    public let expandCargos: Bool?
    public let expandTaskArtifacts: Bool?
    public let expandShipperContacts: Bool?
    public let expandDriver: Bool?
    public let expandCourierOrgCompanyName: Bool?
    public let expandCourierOrgHandle: Bool?
    public let orderId: String?
    public let courierOrgId: String?
    public let driverId: String?
    public let status: TaskGroupStatusEnum1?
    public let skip: Int?
    public let limit: Int?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        expandForwarderOrgCompanyName: Bool? = nil,
        expandForwarderOrgHandle: Bool? = nil,
        expandShipperOrgCompanyName: Bool? = nil,
        expandOffChrtShipperOrgCompanyName: Bool? = nil,
        expandTasks: Bool? = nil,
        expandCargos: Bool? = nil,
        expandTaskArtifacts: Bool? = nil,
        expandShipperContacts: Bool? = nil,
        expandDriver: Bool? = nil,
        expandCourierOrgCompanyName: Bool? = nil,
        expandCourierOrgHandle: Bool? = nil,
        orderId: String? = nil,
        courierOrgId: String? = nil,
        driverId: String? = nil,
        status: TaskGroupStatusEnum1? = nil,
        skip: Int? = nil,
        limit: Int? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.expandForwarderOrgCompanyName = expandForwarderOrgCompanyName
        self.expandForwarderOrgHandle = expandForwarderOrgHandle
        self.expandShipperOrgCompanyName = expandShipperOrgCompanyName
        self.expandOffChrtShipperOrgCompanyName = expandOffChrtShipperOrgCompanyName
        self.expandTasks = expandTasks
        self.expandCargos = expandCargos
        self.expandTaskArtifacts = expandTaskArtifacts
        self.expandShipperContacts = expandShipperContacts
        self.expandDriver = expandDriver
        self.expandCourierOrgCompanyName = expandCourierOrgCompanyName
        self.expandCourierOrgHandle = expandCourierOrgHandle
        self.orderId = orderId
        self.courierOrgId = courierOrgId
        self.driverId = driverId
        self.status = status
        self.skip = skip
        self.limit = limit
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.expandForwarderOrgCompanyName = try container.decodeIfPresent(Bool.self, forKey: .expandForwarderOrgCompanyName)
        self.expandForwarderOrgHandle = try container.decodeIfPresent(Bool.self, forKey: .expandForwarderOrgHandle)
        self.expandShipperOrgCompanyName = try container.decodeIfPresent(Bool.self, forKey: .expandShipperOrgCompanyName)
        self.expandOffChrtShipperOrgCompanyName = try container.decodeIfPresent(Bool.self, forKey: .expandOffChrtShipperOrgCompanyName)
        self.expandTasks = try container.decodeIfPresent(Bool.self, forKey: .expandTasks)
        self.expandCargos = try container.decodeIfPresent(Bool.self, forKey: .expandCargos)
        self.expandTaskArtifacts = try container.decodeIfPresent(Bool.self, forKey: .expandTaskArtifacts)
        self.expandShipperContacts = try container.decodeIfPresent(Bool.self, forKey: .expandShipperContacts)
        self.expandDriver = try container.decodeIfPresent(Bool.self, forKey: .expandDriver)
        self.expandCourierOrgCompanyName = try container.decodeIfPresent(Bool.self, forKey: .expandCourierOrgCompanyName)
        self.expandCourierOrgHandle = try container.decodeIfPresent(Bool.self, forKey: .expandCourierOrgHandle)
        self.orderId = try container.decodeIfPresent(String.self, forKey: .orderId)
        self.courierOrgId = try container.decodeIfPresent(String.self, forKey: .courierOrgId)
        self.driverId = try container.decodeIfPresent(String.self, forKey: .driverId)
        self.status = try container.decodeIfPresent(TaskGroupStatusEnum1.self, forKey: .status)
        self.skip = try container.decodeIfPresent(Int.self, forKey: .skip)
        self.limit = try container.decodeIfPresent(Int.self, forKey: .limit)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.expandForwarderOrgCompanyName, forKey: .expandForwarderOrgCompanyName)
        try container.encodeIfPresent(self.expandForwarderOrgHandle, forKey: .expandForwarderOrgHandle)
        try container.encodeIfPresent(self.expandShipperOrgCompanyName, forKey: .expandShipperOrgCompanyName)
        try container.encodeIfPresent(self.expandOffChrtShipperOrgCompanyName, forKey: .expandOffChrtShipperOrgCompanyName)
        try container.encodeIfPresent(self.expandTasks, forKey: .expandTasks)
        try container.encodeIfPresent(self.expandCargos, forKey: .expandCargos)
        try container.encodeIfPresent(self.expandTaskArtifacts, forKey: .expandTaskArtifacts)
        try container.encodeIfPresent(self.expandShipperContacts, forKey: .expandShipperContacts)
        try container.encodeIfPresent(self.expandDriver, forKey: .expandDriver)
        try container.encodeIfPresent(self.expandCourierOrgCompanyName, forKey: .expandCourierOrgCompanyName)
        try container.encodeIfPresent(self.expandCourierOrgHandle, forKey: .expandCourierOrgHandle)
        try container.encodeIfPresent(self.orderId, forKey: .orderId)
        try container.encodeIfPresent(self.courierOrgId, forKey: .courierOrgId)
        try container.encodeIfPresent(self.driverId, forKey: .driverId)
        try container.encodeIfPresent(self.status, forKey: .status)
        try container.encodeIfPresent(self.skip, forKey: .skip)
        try container.encodeIfPresent(self.limit, forKey: .limit)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case expandForwarderOrgCompanyName = "expand_forwarder_org_company_name"
        case expandForwarderOrgHandle = "expand_forwarder_org_handle"
        case expandShipperOrgCompanyName = "expand_shipper_org_company_name"
        case expandOffChrtShipperOrgCompanyName = "expand_off_chrt_shipper_org_company_name"
        case expandTasks = "expand_tasks"
        case expandCargos = "expand_cargos"
        case expandTaskArtifacts = "expand_task_artifacts"
        case expandShipperContacts = "expand_shipper_contacts"
        case expandDriver = "expand_driver"
        case expandCourierOrgCompanyName = "expand_courier_org_company_name"
        case expandCourierOrgHandle = "expand_courier_org_handle"
        case orderId = "order_id"
        case courierOrgId = "courier_org_id"
        case driverId = "driver_id"
        case status
        case skip
        case limit
    }
}