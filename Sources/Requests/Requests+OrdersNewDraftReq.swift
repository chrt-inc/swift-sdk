import Foundation

extension Requests {
    public struct OrdersNewDraftReq: Codable, Hashable, Sendable {
        /// Must be a string starting with `org_`
        public let coordinatorOrgId: String?
        /// Must be a string starting with `org_`
        public let shipperOrgId: String?
        public let offChrtShipperOrgId: String?
        /// Must be a URL-safe string of 1-64 characters. Allowed characters: A-Z, a-z, 0-9, '.', '_', '~', '-' (RFC 3986 unreserved).
        public let offChrtReferenceId: String?
        public let departmentId: String?
        /// OperationsTaskList ids to apply to the coordinator's Case at draft creation; foreign/stale ids are skipped without failing the draft.
        public let taskListIds: [String]?
        /// Optional key, unique per caller org, that makes draft creation idempotent: re-sending the same key returns the already-created draft instead of creating a duplicate.
        public let creationIdempotencyKey: String?
        /// Seed content for the OrderThread's first user turn (text + long-lived references). Agentic builds supply it; click-ops leaves it None for a blank seed turn.
        public let orderThreadShippingTurn: ShippingTurnClientCreate1?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            coordinatorOrgId: String? = nil,
            shipperOrgId: String? = nil,
            offChrtShipperOrgId: String? = nil,
            offChrtReferenceId: String? = nil,
            departmentId: String? = nil,
            taskListIds: [String]? = nil,
            creationIdempotencyKey: String? = nil,
            orderThreadShippingTurn: ShippingTurnClientCreate1? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.coordinatorOrgId = coordinatorOrgId
            self.shipperOrgId = shipperOrgId
            self.offChrtShipperOrgId = offChrtShipperOrgId
            self.offChrtReferenceId = offChrtReferenceId
            self.departmentId = departmentId
            self.taskListIds = taskListIds
            self.creationIdempotencyKey = creationIdempotencyKey
            self.orderThreadShippingTurn = orderThreadShippingTurn
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.coordinatorOrgId = try container.decodeIfPresent(String.self, forKey: .coordinatorOrgId)
            self.shipperOrgId = try container.decodeIfPresent(String.self, forKey: .shipperOrgId)
            self.offChrtShipperOrgId = try container.decodeIfPresent(String.self, forKey: .offChrtShipperOrgId)
            self.offChrtReferenceId = try container.decodeIfPresent(String.self, forKey: .offChrtReferenceId)
            self.departmentId = try container.decodeIfPresent(String.self, forKey: .departmentId)
            self.taskListIds = try container.decodeIfPresent([String].self, forKey: .taskListIds)
            self.creationIdempotencyKey = try container.decodeIfPresent(String.self, forKey: .creationIdempotencyKey)
            self.orderThreadShippingTurn = try container.decodeIfPresent(ShippingTurnClientCreate1.self, forKey: .orderThreadShippingTurn)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.coordinatorOrgId, forKey: .coordinatorOrgId)
            try container.encodeIfPresent(self.shipperOrgId, forKey: .shipperOrgId)
            try container.encodeIfPresent(self.offChrtShipperOrgId, forKey: .offChrtShipperOrgId)
            try container.encodeIfPresent(self.offChrtReferenceId, forKey: .offChrtReferenceId)
            try container.encodeIfPresent(self.departmentId, forKey: .departmentId)
            try container.encodeIfPresent(self.taskListIds, forKey: .taskListIds)
            try container.encodeIfPresent(self.creationIdempotencyKey, forKey: .creationIdempotencyKey)
            try container.encodeIfPresent(self.orderThreadShippingTurn, forKey: .orderThreadShippingTurn)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case coordinatorOrgId = "coordinator_org_id"
            case shipperOrgId = "shipper_org_id"
            case offChrtShipperOrgId = "off_chrt_shipper_org_id"
            case offChrtReferenceId = "off_chrt_reference_id"
            case departmentId = "department_id"
            case taskListIds = "task_list_ids"
            case creationIdempotencyKey = "creation_idempotency_key"
            case orderThreadShippingTurn = "order_thread_shipping_turn"
        }
    }
}