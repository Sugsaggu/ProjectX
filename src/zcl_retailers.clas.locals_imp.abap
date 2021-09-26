class lhc_retailers definition inheriting from cl_abap_behavior_handler.
  private section.

    methods get_instance_authorizations for instance authorization
      importing keys request requested_authorizations for retailers result result.

endclass.

class lhc_retailers implementation.

  method get_instance_authorizations.
* Method for instance authorization, not relevant for demo.
  endmethod.

endclass.
