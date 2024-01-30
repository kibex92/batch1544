require_relative '../views/sessions_view'

class SessionsController
  # STATE
  # EmployeeRepository
  # SessionsView
  def initialize(employee_repository)
    @employee_repository = employee_repository
    @view = SessionsView.new
  end

  # BEHAVIOR
  # Sign in

  def sign_in
    # 1. Ask the user for a username -> View
    username = @view.ask_user_for("username")
    # 2. Ask the user for a password -> View
    password = @view.ask_user_for("password")
    # 3. Find the employee with the username -> Repository
    employee = @employee_repository.find_by_username(username)
    # 4. Check if the password matches with the employee password
    if employee
      if employee.password == password
        return employee
      else
        @view.wrong_credentials
        sign_in
      end
    else
      @view.wrong_credentials
      sign_in
    end
    # 5. ?
  end
end