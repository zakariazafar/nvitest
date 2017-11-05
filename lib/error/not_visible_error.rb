# Error module
module Error
  # Implementation for not visible error
  class NotVisibleError < CustomError
    def initialize
      super(:you_cant_see_me, 422, 'You can\'t see me')
    end
  end
end
