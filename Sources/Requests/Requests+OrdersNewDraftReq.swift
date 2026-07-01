import Foundation

extension Requests {
    public struct OrdersNewDraftReq: Codable, Hashable, Sendable {
        public let caseTag: String?
        /// Must be a string starting with `org_`
        public let coordinatorOrgId: String?
        /// Optional key, unique per caller org, that makes draft creation idempotent: re-sending the same key returns the already-created draft instead of creating a duplicate.
        public let creationIdempotencyKey: String?
        public let departmentId: String?
        /// If set, pins the first applied OperationsTask's deadline; later from_previous_task entries cascade from it. None anchors the chain to the apply time (now).
        public let initialDeadlineTimestamp: Date?
        /// Must be a URL-safe string of 1-64 characters. Allowed characters: A-Z, a-z, 0-9, '.', '_', '~', '-' (RFC 3986 unreserved).
        public let offChrtReferenceId: String?
        public let offChrtShipperOrgId: String?
        /// Saved order template that seeded this draft. Used as template-build provenance.
        public let orderTemplateId: String?
        /// Seed content for the OrderThread's first user turn (text + long-lived references). Agentic builds supply it; click-ops leaves it None for a blank seed turn.
        public let orderThreadShippingTurn: ShippingTurnClientCreate1?
        /// Must be a string starting with `org_`
        public let shipperOrgId: String?
        /// OperationsTaskList ids to apply to the coordinator's Case at draft creation; foreign/stale ids are skipped without failing the draft.
        public let taskListIds: [String]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            caseTag: String? = nil,
            coordinatorOrgId: String? = nil,
            creationIdempotencyKey: String? = nil,
            departmentId: String? = nil,
            initialDeadlineTimestamp: Date? = nil,
            offChrtReferenceId: String? = nil,
            offChrtShipperOrgId: String? = nil,
            orderTemplateId: String? = nil,
            orderThreadShippingTurn: ShippingTurnClientCreate1? = nil,
            shipperOrgId: String? = nil,
            taskListIds: [String]? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.caseTag = caseTag
            self.coordinatorOrgId = coordinatorOrgId
            self.creationIdempotencyKey = creationIdempotencyKey
            self.departmentId = departmentId
            self.initialDeadlineTimestamp = initialDeadlineTimestamp
            self.offChrtReferenceId = offChrtReferenceId
            self.offChrtShipperOrgId = offChrtShipperOrgId
            self.orderTemplateId = orderTemplateId
            self.orderThreadShippingTurn = orderThreadShippingTurn
            self.shipperOrgId = shipperOrgId
            self.taskListIds = taskListIds
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.caseTag = try container.decodeIfPresent(String.self, forKey: .caseTag)
            self.coordinatorOrgId = try container.decodeIfPresent(String.self, forKey: .coordinatorOrgId)
            self.creationIdempotencyKey = try container.decodeIfPresent(String.self, forKey: .creationIdempotencyKey)
            self.departmentId = try container.decodeIfPresent(String.self, forKey: .departmentId)
            self.initialDeadlineTimestamp = try container.decodeIfPresent(Date.self, forKey: .initialDeadlineTimestamp)
            self.offChrtReferenceId = try container.decodeIfPresent(String.self, forKey: .offChrtReferenceId)
            self.offChrtShipperOrgId = try container.decodeIfPresent(String.self, forKey: .offChrtShipperOrgId)
            self.orderTemplateId = try container.decodeIfPresent(String.self, forKey: .orderTemplateId)
            self.orderThreadShippingTurn = try container.decodeIfPresent(ShippingTurnClientCreate1.self, forKey: .orderThreadShippingTurn)
            self.shipperOrgId = try container.decodeIfPresent(String.self, forKey: .shipperOrgId)
            self.taskListIds = try container.decodeIfPresent([String].self, forKey: .taskListIds)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.caseTag, forKey: .caseTag)
            try container.encodeIfPresent(self.coordinatorOrgId, forKey: .coordinatorOrgId)
            try container.encodeIfPresent(self.creationIdempotencyKey, forKey: .creationIdempotencyKey)
            try container.encodeIfPresent(self.departmentId, forKey: .departmentId)
            try container.encodeIfPresent(self.initialDeadlineTimestamp, forKey: .initialDeadlineTimestamp)
            try container.encodeIfPresent(self.offChrtReferenceId, forKey: .offChrtReferenceId)
            try container.encodeIfPresent(self.offChrtShipperOrgId, forKey: .offChrtShipperOrgId)
            try container.encodeIfPresent(self.orderTemplateId, forKey: .orderTemplateId)
            try container.encodeIfPresent(self.orderThreadShippingTurn, forKey: .orderThreadShippingTurn)
            try container.encodeIfPresent(self.shipperOrgId, forKey: .shipperOrgId)
            try container.encodeIfPresent(self.taskListIds, forKey: .taskListIds)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case caseTag = "case_tag"
            case coordinatorOrgId = "coordinator_org_id"
            case creationIdempotencyKey = "creation_idempotency_key"
            case departmentId = "department_id"
            case initialDeadlineTimestamp = "initial_deadline_timestamp"
            case offChrtReferenceId = "off_chrt_reference_id"
            case offChrtShipperOrgId = "off_chrt_shipper_org_id"
            case orderTemplateId = "order_template_id"
            case orderThreadShippingTurn = "order_thread_shipping_turn"
            case shipperOrgId = "shipper_org_id"
            case taskListIds = "task_list_ids"
        }
    }
}