class ApplicationController < ActionController::Base
  protect_from_forgery
  
  # change the current account manually here in the find method
  @current_account = Account.all.count > 0 ? Account.find(2) : nil
  
  set_current_tenant_to(@current_account) unless self.controller_name == 'account'
end
