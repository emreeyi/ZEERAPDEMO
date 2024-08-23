@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption View For Student'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define root view entity zcee_student_5000 as projection on ziee_student_5000 as Student
{
    @EndUserText.label: 'Student ID'
    key Id,
     @EndUserText.label: 'First Name'
    Firstname,
     @EndUserText.label: 'Last Name'
    Lastname,
     @EndUserText.label: 'Age'
    Age,
     @EndUserText.label: 'Couse'
    Course,
     @EndUserText.label: 'Couse Duration'
    Courseduration,
     @EndUserText.label: 'Status'
    Status,
     @EndUserText.label: 'Gender'
    Gender,
     @EndUserText.label: 'Dob'
    Dob
}
