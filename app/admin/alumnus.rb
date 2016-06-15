ActiveAdmin.register Alumnus do
  permit_params :year, :course, :first_name, :last_name, :email, :college, :gender, :major, :quote, :picture


  form do |f|
    f.inputs "Project Details" do
      f.input :year, :as => :select, :collection => ["2014","2015"]
      f.input :course, :as => :select, :collection => ["Coding","Finance", "Consulting"]
      f.input :first_name
      f.input :last_name 
      f.input :email 
      f.input :college 
      f.input :gender, :as => :select, :collection => ["male","female"]
      f.input :major 
      f.input :quote
      f.input :picture, :as => :file
      # Will preview the image when the object is edited
    end
    f.actions
  end

  show do |alumni|
    attributes_table do
      row :year 
      row :course
      row :first_name
      row :last_name 
      row :email 
      row :college 
      row :gender 
      row :major 
      row :quote
      row :picture do
        image_tag(alumni.picture.url(:medium))
      end
      # Will display the image on show object page
    end
  end

  index do |alumni|
    column :year
    column :course
    column :first_name
    column :last_name 
    column :email 
    column :college 
    column :gender 
    column :major
    # column :quote

    actions
  end

  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end


end
