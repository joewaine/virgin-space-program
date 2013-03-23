module ApplicationHelper
    def login_nav
    nav = ""

    if @auth.present?
      nav += "<li>#{link_to(@auth.email, '/login', :method => :delete, :remote => true, :class => 'button tiny alert')}</li>"
    end

    nav
  end
end
