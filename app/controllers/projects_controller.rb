class ProjectsController < ApplicationController
	def index
	end

	def new
		@project = Project.new
	end

	def create 
		@project = Project.new(params[:project])
		if @project.save
			redirect_to @project,
			:flash => {:success => 'Project has been created.'}
		else
			#nothing
		end
	end

	def show
		@project = Project.find(params[:id])
	end

	def edit
	end

	def update
	end

	def destroy
	end
end
