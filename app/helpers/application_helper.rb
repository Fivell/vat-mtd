##########################################################################################
##########################################################################################
##      ___                ___            __  _             __  __     __               ##
##    /   |  ____  ____  / (_)________ _/ /_(_)___  ____  / / / /__  / /___  ___  _____ ##
##   / /| | / __ \/ __ \/ / / ___/ __ `/ __/ / __ \/ __ \/ /_/ / _ \/ / __ \/ _ \/ ___/ ##
##  / ___ |/ /_/ / /_/ / / / /__/ /_/ / /_/ / /_/ / / / / __  /  __/ / /_/ /  __/ /     ##
## /_/  |_/ .___/ .___/_/_/\___/\__,_/\__/_/\____/_/ /_/_/ /_/\___/_/ .___/\___/_/      ##
##        /_/   /_/                                                 /_/                 ##
##                                                                                      ##
##########################################################################################
##########################################################################################

# => ApplicationHelpers
# => This is used provide standardized functionality accross the system
module ApplicationHelper

  # => HMRC Authentication
  # => Shows the oAuth button required to ensure the connectivity to HMRC is correct
  def hmrc_authentication
     if current_user.authenticated?
       link_to "⚠️ Revoke HMRC Access", url("/auth/hmrc_vat/revoke"), method: :delete, class: :btn
    else
      link_to "💾 Grant HMRC Access", url("/auth/hmrc_vat"), method: :post, class: :btn
    end
  end

end

##########################################################################################
##########################################################################################
