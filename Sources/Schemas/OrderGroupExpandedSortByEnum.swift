import Foundation

public enum OrderGroupExpandedSortByEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case createdAtTimestamp = "created_at_timestamp"
    case lastEditedAtTimestamp = "last_edited_at_timestamp"
    case name
    case billingReviewStatus = "billing_review_status"
}