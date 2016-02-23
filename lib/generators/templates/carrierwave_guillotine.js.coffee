jQuery ->
  new CarrierWaveCropper()

class CarrierWaveCropper
  constructor: ->
    $('#<%= file_name %>_<%= attachment_name %>_cropbox').guillotine
      width: 400
      height: 300
      onChange: @update

  update: (data, action) =>
    $('#<%= file_name %>_<%= attachment_name %>_crop_x').val(data.x)
    $('#<%= file_name %>_<%= attachment_name %>_crop_y').val(data.y)
    $('#<%= file_name %>_<%= attachment_name %>_crop_w').val(data.w)
    $('#<%= file_name %>_<%= attachment_name %>_crop_h').val(data.h)
