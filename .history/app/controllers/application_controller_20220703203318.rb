class ApplicationController < Sinatra::Base
set :default_content_type, 'application/json'
    get '/students' do
        students = Student.all
        students.to_json
    end

    post '/students' do
        student = Student.create(
            Full_names: params[:Full_names],
            admision_number: params[:admision_number],
            date_of_birth: params[:date_of_birth],
            parent_id: params[:parent_id],
            level: params[:level],
        )
        student.to_json
    end
    patch '/students/:id' do
        student = Student.find(params[update(
            Full_names: params[:Full_names],
            admision_number: params[:admision_number],
            date_of_birth: params[:date_of_birth],
            parent_id: params[:parent_id],
            level: params[:level],
        )
        student.to_json
    end

    delete '/student/:id' do
        students = Student.find(params[:id])
        student.destroy
        student.to_json
    end

    get '/employees' do
        employees = Employee.all
        employees.to_json
    end

    post '/employees' do 
        employee = Employee.create(
            employee_no: params[:employee_no],
            full_names: params[:full_names],
            role: params[:role],
            id_number: params[:id_number],
            salary: params[:salary]
        )
        employee.to_json
    end

    get '/schoolfees' do
        schoolfees = Schoolfee.all
        schoolfees.to_json
    end

    post '/schoolfees' do 
        schoolfee = Schoolfee.create(
            transaction_day: params[:transaction_day],
            admision_number: params[:admision_number],
            ammount: params[:ammount]
        )
        schoolfee.to_json
    end
    
    get '/parents' do
        parents = Parent.all
        parents.to_json
    end
    post '/parents' do 
        parent = Parent.create(
            fathers_full_names: params[:fathers_full_names],
            fathers_contacts: params[:fathers_contacts],
            fathers_email: params[:fathers_email],
            fathers_id_no: params[:fathers_id_no],
            mothers_full_names: params[:mothers_full_names],
            mothers_contacts: params[:mothers_contacts],
            mothers_email: params[:mothers_email],
            mothers_id_no: params[:mothers_id_no],
            address: params[:address],
            nationality: params[:nationality],
            admision_number: params[:admision_number]
        )
        parent.to_json
    end
    get '/wages' do
        wages = Wage.all
        wages.to_json
    end

    post '/wages' do
        wage = Wage.create(
            employee_no: params[:employee_no],
            transaction_date: params[:transaction_date],
            ammount: params[:ammount]
        )
        wage.to_json
    end
end