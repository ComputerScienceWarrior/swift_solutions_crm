module ApplicationHelper
    def is_logged_in?
        if session[:user_id].nil?
            content_tag(:p) do 
                content_tag(:a, "Login", href: login_path, class: "nav-item") + "/" + content_tag(:a, "Register Company", href: new_company_path, class: "nav-item")
            end
        else 
            content_tag(:a, "Logout", href: logout_path, method: 'post', class: "nav-item") + " " + content_tag(:p, "Logged in as #{current_user.username}.", id: 'logged-in-tag')
        end
    end

    def home_link
        if session[:user_id].nil?
            content_tag(:a, "Home", href: root_path, class: "nav-item")
        else
            content_tag(:a, "Home", href: company_path(current_user.company), class: "nav-item")
        end
    end
end
