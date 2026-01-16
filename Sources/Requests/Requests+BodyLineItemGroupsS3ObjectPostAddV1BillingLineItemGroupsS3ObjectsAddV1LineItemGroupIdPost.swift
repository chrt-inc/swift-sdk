import Foundation

extension Requests {
    public struct BodyLineItemGroupsS3ObjectPostAddV1BillingLineItemGroupsS3ObjectsAddV1LineItemGroupIdPost {
        public let image: FormFile

        public init(
            image: FormFile
        ) {
            self.image = image
        }
    }
}

extension Requests.BodyLineItemGroupsS3ObjectPostAddV1BillingLineItemGroupsS3ObjectsAddV1LineItemGroupIdPost: MultipartFormDataConvertible {
    var multipartFormFields: [MultipartFormField] {
        [
            .file(image, fieldName: "image")
        ]
    }
}