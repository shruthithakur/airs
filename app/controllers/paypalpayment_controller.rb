class PaypalpaymentController < ApplicationController
	def index
     if params[:cardNumber].present?
         response = STANDARD_GATEWAY.purchase(100,credit_card,standard_purchase_options)
         unless response.success?
           flash[:error] = "Invalid Credit Card Details"
           redirect_to root_path
         else
           flash[:success] = "Your card has been processed successfully !!!!"
         end
     else
       response = EXPRESS_GATEWAY.setup_purchase(100,
       :ip                => request.remote_ip,
       :return_url        => root_url,
       :cancel_return_url => root_url        )
       redirect_to EXPRESS_GATEWAY.redirect_url_for(response.token)
     end 
end
end
