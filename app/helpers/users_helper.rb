module UsersHelper
	def get_user_name(id)
      @curr = User.find(id)
      if !current_user
        @name = "Anonymous"
      end
      if @curr.name.empty?
       @name = @curr.email
        else 
         @name = @curr.name
        end 
      return @name
    end

    def check_role
    	if !current_user 
			 redirect_to "/movies", notice: 'Role was successfully added.'
		end
    end
end
