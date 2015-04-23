module Refinery
  module Events
    module Admin
      class EventsController < ::Refinery::AdminController

        crudify :'refinery/events/event', :order => "start_time DESC",
                                          :sortable => false

        private

        # Only allow a trusted parameter "white list" through.
        def event_params
          params.require(:event).permit(:title, :start_time, :end_time, :all_day, :event_type, :photo_id, :blurb)
        end
      end
    end
  end
end
