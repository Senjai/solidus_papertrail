module Spree
  Payment.class_eval do
    has_paper_trail class_name: 'Spree::PaymentVersion'

    attr_accessor :who, :version_changes, :version_id, :version_event, :version_date

    def who=(user_id)
      begin
        @who = Spree::User.find(user_id).full_name
      rescue
        @who = ""
      end
    end
  end
end