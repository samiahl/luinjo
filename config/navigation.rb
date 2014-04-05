SimpleNavigation::Configuration.run do |navigation|
  navigation.renderer = SimpleNavigationRenderers::Bootstrap3
  navigation.items do |primary|
    primary.item :information_cones, 'Information Cones', information_cones_path do |information_cones|
      # Populate secondary navigation with all the available Information Cones
      InformationCone.all.each do |information_cone|
        information_cones.item information_cone[:title].to_sym, information_cone[:title], information_cone_path(information_cone)
      end
    end
    primary.item :posts, 'Posts', posts_path

    # Devise specific links
    if user_signed_in?
      primary.item :edit_account, 'Edit account', edit_user_registration_path
      primary.item :logout, 'Logout', destroy_user_session_path, method: 'delete'
    else
      primary.item :login, 'Login', new_user_session_path
      primary.item :sign_up, 'Sign up', new_user_registration_path
    end
  end
end
