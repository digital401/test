class StudentSubmissionsController < ApplicationController
  # GET /student_submissions
  # GET /student_submissions.json
  def index
    @student_submissions = StudentSubmission.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @student_submissions }
    end
  end

  # GET /student_submissions/1
  # GET /student_submissions/1.json
  def show
    @student_submission = StudentSubmission.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @student_submission }
    end
  end

  # GET /student_submissions/new
  # GET /student_submissions/new.json
  def new
    @student_submission = StudentSubmission.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @student_submission }
    end
  end

  # GET /student_submissions/1/edit
  def edit
    @student_submission = StudentSubmission.find(params[:id])
  end

  # POST /student_submissions
  # POST /student_submissions.json
  def create
    @student_submission = StudentSubmission.new(params[:student_submission])

    respond_to do |format|
      if @student_submission.save
        format.html { redirect_to @student_submission, notice: 'Student submission was successfully created.' }
        format.json { render json: @student_submission, status: :created, location: @student_submission }
      else
        format.html { render action: "new" }
        format.json { render json: @student_submission.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /student_submissions/1
  # PUT /student_submissions/1.json
  def update
    @student_submission = StudentSubmission.find(params[:id])

    respond_to do |format|
      if @student_submission.update_attributes(params[:student_submission])
        format.html { redirect_to @student_submission, notice: 'Student submission was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @student_submission.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /student_submissions/1
  # DELETE /student_submissions/1.json
  def destroy
    @student_submission = StudentSubmission.find(params[:id])
    @student_submission.destroy

    respond_to do |format|
      format.html { redirect_to student_submissions_url }
      format.json { head :ok }
    end
  end
end
