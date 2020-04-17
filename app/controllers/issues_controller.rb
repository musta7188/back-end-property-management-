class IssuesController < ApplicationController

  def index 
    issues = Issue.all
    if issues 
      render json: {issues: issues}
    else 
      render json: {status: 500, errors: ['no issues found']}
    end
  end

  def show
    issue = Issue.find(params[:id])
    if issue 
      render json: {issue: issue, tenant: issue.tenant, property: issue.property}
    else 
      render json: {status: 500, errors: ['no issue found with this id']}
    end
  end


  def edit
    issue = Issue.find(params[:id])
  end


  def update
    issue = Issue.find(params[:id])
    issue.update(isCompleted: params[:isCompleted])
    render json: {issue: issue}
  end





  def create 
    issue = Issue.new(issue_params)
    if issue.save
      render json: {status:200, issue: issue}
    else
      render json: {status: 500, errors: issue.errors.full_messages}
    end
  end

  private

def issue_params
  params.require(:issue).permit(:property_id, :message, :priority, :isCompleted, :tenant_id)
end

end
