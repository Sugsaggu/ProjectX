class lhc_sku definition inheriting from cl_abap_behavior_handler.
  private section.

    methods get_instance_authorizations for instance authorization
      importing keys request requested_authorizations for sku result result.

    methods setValues for determine on save
      importing keys for sku~setValues.

endclass.

class lhc_sku implementation.

  method get_instance_authorizations.
* Method for instance authorization (Auth objetcs, custom validations, etc). Not relevant for demo.
  endmethod.

  method setValues.

* Read entity to check if Sku is initial
    read entities of zcds_sku in local mode
    entity sku
    fields ( Sku Ersda )
    with corresponding #( keys )
    result data(lt_sku_result).

* Only modify entities where no Sku is given (for this demo also applies to ERSDA)
    delete lt_sku_result where Sku is not initial.

    loop at lt_sku_result assigning field-symbol(<fs_sku>).
* Get a new SKU number (for demo purpose it will be very random, it should be a consistent number)
      data(lo_new_sku) = cl_abap_random_int=>create( exporting seed = conv i( sy-uzeit )
                                                               min  = 1
                                                               max  = 1000000 ).
      data(lo_new_date) = cl_abap_random_int=>create( exporting seed = conv i( sy-uzeit )
                                                                min  = 1
                                                                max  = 100 ).

* Get next number from automatic seed
      <fs_sku>-Sku = lo_new_sku->get_next( ).

* Fill with zero
      <fs_sku>-Sku = |{ <fs_sku>-Sku alpha = in }|.
      <fs_sku>-Ersda = sy-datum - lo_new_date->get_next( ).

    endloop.

* Send value to entity
    modify entities of zcds_sku in local mode
      entity sku
      update from value #( for lwa_sku in lt_sku_result
                         (   SkuUuid = lwa_sku-%key-SkuUuid
                             Sku   = lwa_sku-Sku
                             Ersda = lwa_sku-Ersda
                    %control-Sku   = if_abap_behv=>mk-on
                    %control-Ersda   = if_abap_behv=>mk-on )  ).

  endmethod.

endclass.
