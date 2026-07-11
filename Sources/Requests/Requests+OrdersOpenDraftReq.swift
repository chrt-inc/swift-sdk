import Foundation

extension Requests {
    public struct OrdersOpenDraftReq: Codable, Hashable, Sendable {
        /// Must be a string starting with `org_`
        public let coordinatorOrgId: String?
        /// Optional key, unique per caller org, that makes draft creation idempotent: re-sending the same key returns the already-created draft instead of creating a duplicate.
        public let creationIdempotencyKey: String?
        public let departmentId: String?
        public let label: String?
        /// Must be a URL-safe string of 1-64 characters. Allowed characters: A-Z, a-z, 0-9, '.', '_', '~', '-' (RFC 3986 unreserved).
        public let offChrtReferenceId: String?
        public let offChrtShipperOrgId: String?
        /// Order schedule provenance for scheduled draft creation.
        public let orderScheduleId: String?
        /// Idempotency key for one scheduled order run.
        public let orderScheduleRunIdempotencyKey: String?
        /// Saved order template that seeded this draft. Used as template-build provenance.
        public let orderTemplateId: String?
        /// Seed content for the OrderThread's first user turn (text + long-lived references). Agentic builds supply it; click-ops leaves it None for a blank seed turn.
        public let orderThreadShippingTurn: ShippingTurnClientCreate1?
        /// Must be a string starting with `org_`
        public let shipperOrgId: String?
        /// OperationsTaskList applications to materialize on the Order for the coordinator org at draft creation, each with optional department override and first-deadline pin.
        public let taskListsToApplyAtOrderCreation: [TaskListToApplyToOrder1]?
        /// OperationsTaskList applications stored on the Order for deferred application at staging, each with an optional department override.
        public let taskListsToApplyAtOrderStaging: [TaskListToApplyToOrder1]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            coordinatorOrgId: String? = nil,
            creationIdempotencyKey: String? = nil,
            departmentId: String? = nil,
            label: String? = nil,
            offChrtReferenceId: String? = nil,
            offChrtShipperOrgId: String? = nil,
            orderScheduleId: String? = nil,
            orderScheduleRunIdempotencyKey: String? = nil,
            orderTemplateId: String? = nil,
            orderThreadShippingTurn: ShippingTurnClientCreate1? = nil,
            shipperOrgId: String? = nil,
            taskListsToApplyAtOrderCreation: [TaskListToApplyToOrder1]? = nil,
            taskListsToApplyAtOrderStaging: [TaskListToApplyToOrder1]? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.coordinatorOrgId = coordinatorOrgId
            self.creationIdempotencyKey = creationIdempotencyKey
            self.departmentId = departmentId
            self.label = label
            self.offChrtReferenceId = offChrtReferenceId
            self.offChrtShipperOrgId = offChrtShipperOrgId
            self.orderScheduleId = orderScheduleId
            self.orderScheduleRunIdempotencyKey = orderScheduleRunIdempotencyKey
            self.orderTemplateId = orderTemplateId
            self.orderThreadShippingTurn = orderThreadShippingTurn
            self.shipperOrgId = shipperOrgId
            self.taskListsToApplyAtOrderCreation = taskListsToApplyAtOrderCreation
            self.taskListsToApplyAtOrderStaging = taskListsToApplyAtOrderStaging
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.coordinatorOrgId = try container.decodeIfPresent(String.self, forKey: .coordinatorOrgId)
            self.creationIdempotencyKey = try container.decodeIfPresent(String.self, forKey: .creationIdempotencyKey)
            self.departmentId = try container.decodeIfPresent(String.self, forKey: .departmentId)
            self.label = try container.decodeIfPresent(String.self, forKey: .label)
            self.offChrtReferenceId = try container.decodeIfPresent(String.self, forKey: .offChrtReferenceId)
            self.offChrtShipperOrgId = try container.decodeIfPresent(String.self, forKey: .offChrtShipperOrgId)
            self.orderScheduleId = try container.decodeIfPresent(String.self, forKey: .orderScheduleId)
            self.orderScheduleRunIdempotencyKey = try container.decodeIfPresent(String.self, forKey: .orderScheduleRunIdempotencyKey)
            self.orderTemplateId = try container.decodeIfPresent(String.self, forKey: .orderTemplateId)
            self.orderThreadShippingTurn = try container.decodeIfPresent(ShippingTurnClientCreate1.self, forKey: .orderThreadShippingTurn)
            self.shipperOrgId = try container.decodeIfPresent(String.self, forKey: .shipperOrgId)
            self.taskListsToApplyAtOrderCreation = try container.decodeIfPresent([TaskListToApplyToOrder1].self, forKey: .taskListsToApplyAtOrderCreation)
            self.taskListsToApplyAtOrderStaging = try container.decodeIfPresent([TaskListToApplyToOrder1].self, forKey: .taskListsToApplyAtOrderStaging)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.coordinatorOrgId, forKey: .coordinatorOrgId)
            try container.encodeIfPresent(self.creationIdempotencyKey, forKey: .creationIdempotencyKey)
            try container.encodeIfPresent(self.departmentId, forKey: .departmentId)
            try container.encodeIfPresent(self.label, forKey: .label)
            try container.encodeIfPresent(self.offChrtReferenceId, forKey: .offChrtReferenceId)
            try container.encodeIfPresent(self.offChrtShipperOrgId, forKey: .offChrtShipperOrgId)
            try container.encodeIfPresent(self.orderScheduleId, forKey: .orderScheduleId)
            try container.encodeIfPresent(self.orderScheduleRunIdempotencyKey, forKey: .orderScheduleRunIdempotencyKey)
            try container.encodeIfPresent(self.orderTemplateId, forKey: .orderTemplateId)
            try container.encodeIfPresent(self.orderThreadShippingTurn, forKey: .orderThreadShippingTurn)
            try container.encodeIfPresent(self.shipperOrgId, forKey: .shipperOrgId)
            try container.encodeIfPresent(self.taskListsToApplyAtOrderCreation, forKey: .taskListsToApplyAtOrderCreation)
            try container.encodeIfPresent(self.taskListsToApplyAtOrderStaging, forKey: .taskListsToApplyAtOrderStaging)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case coordinatorOrgId = "coordinator_org_id"
            case creationIdempotencyKey = "creation_idempotency_key"
            case departmentId = "department_id"
            case label
            case offChrtReferenceId = "off_chrt_reference_id"
            case offChrtShipperOrgId = "off_chrt_shipper_org_id"
            case orderScheduleId = "order_schedule_id"
            case orderScheduleRunIdempotencyKey = "order_schedule_run_idempotency_key"
            case orderTemplateId = "order_template_id"
            case orderThreadShippingTurn = "order_thread_shipping_turn"
            case shipperOrgId = "shipper_org_id"
            case taskListsToApplyAtOrderCreation = "task_lists_to_apply_at_order_creation"
            case taskListsToApplyAtOrderStaging = "task_lists_to_apply_at_order_staging"
        }
    }
}