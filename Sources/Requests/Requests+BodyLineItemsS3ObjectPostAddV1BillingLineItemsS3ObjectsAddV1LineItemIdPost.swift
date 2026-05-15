import Foundation

extension Requests {
    public struct BodyLineItemsS3ObjectPostAddV1BillingLineItemsS3ObjectsAddV1LineItemIdPost {
        public let file: FormFile

        public init(
            file: FormFile
        ) {
            self.file = file
        }
    }
}

extension Requests.BodyLineItemsS3ObjectPostAddV1BillingLineItemsS3ObjectsAddV1LineItemIdPost: MultipartFormDataConvertible {
    var multipartFormFields: [MultipartFormField] {
        [
            .file(file, fieldName: "file")
        ]
    }
}