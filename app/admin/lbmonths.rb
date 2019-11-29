ActiveAdmin.register Lbmonth do
  permit_params :jan, :feb, :mar, :apr, :may, :jun, :jul, :aug, :sep ,:oct, :nov , :dec
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :jan, :feb, :mar, :apr, :may, :jun, :jul, :aug, :sep, :oct, :nov, :dec, :Twentynineteen_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:jan, :feb, :mar, :apr, :may, :jun, :jul, :aug, :sep, :oct, :nov, :dec, :Twentynineteen_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
