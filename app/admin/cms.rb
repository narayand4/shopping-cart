ActiveAdmin.register_page "Cms Page" do
	sidebar :help do
      ul do
        li "First Line of Help"
      end
    end

    action_item do
      link_to "View Site", "/admin/dashboard"
    end

    page_action :ex, :method => :post do
      # do stuff here
      redirect_to admin_my_page_path, :notice => "You did stuff!"
    end

    action_item do
      link_to "Do Stuff", "/", :method => :post
    end

    content do
      para "Hello World"
    end
end
