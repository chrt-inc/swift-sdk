import Foundation

extension Requests {
    public struct BodyLineItemGroupsS3ObjectPostAddV1BillingLineItemGroupsS3ObjectsAddV1LineItemGroupIdPost {
        public let file: String

        public init(
            file: String
        ) {
            self.file = file
        }
    }
}

extension Requests.BodyLineItemGroupsS3ObjectPostAddV1BillingLineItemGroupsS3ObjectsAddV1LineItemGroupIdPost: MultipartFormDataConvertible {
    var multipartFormFields: [MultipartFormField] {
        [
            .field(file, fieldName: "file")
        ]
    }
}