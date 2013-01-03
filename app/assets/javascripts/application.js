// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//=require jquery
//= require jquery_ujs
//= require bootstrap
//= require_tree .
//= require jquery.ui.datepicker
//= require foundation

// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

jQuery(document).ready(function() {

    jQuery('#busqueda_comercios_form_region_id').change(function() {

        var data=$('#busqueda_comercios_form_region_id').val();
        $.ajax({

            type: "POST",
            url: "http://"+location.host+"/dynamic_ciudads/"+data,
            data: data,

            beforeSend: function()
            {
                //              alert('hi');
                //$('#status').html('<img src="loading.gif">');

            },

            success: function(response)
            {
                //  alert(response);
                //      $('#regform_district_id').html(html);    //dynamic_districts.js.erb
                //      $('#status').html(html);


            }

        });
    });
});

jQuery(document).ready(function() {
    jQuery('#busqueda_comercios_form_fechaBusqueda').datepicker({format: 'yyyy-mm-dd', weekStart: 1});
    jQuery('#busqueda_comercios_form_fechaBusqueda').datepicker("setDate", new Date());
});
