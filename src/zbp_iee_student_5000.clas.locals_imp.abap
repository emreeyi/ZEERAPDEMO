CLASS lhc_Student DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR Student RESULT result.
    METHODS setadmitted FOR MODIFY
      IMPORTING keys FOR ACTION student~setadmitted RESULT result.

ENDCLASS.

CLASS lhc_Student IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

  METHOD setAdmitted.

  MODIFY ENTITIES OF ziee_student_5000 IN LOCAL MODE
  ENTITY Student
  UPDATE
  FIELDS ( Status )
  WITH VALUE #( For key in keys ( %tky = key-%tky Status = abap_true ) )

  FAILED failed
  REPORTED reported.

  ENDMETHOD.

ENDCLASS.
