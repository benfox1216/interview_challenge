# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

JobApplication.destroy_all
JobPosting.destroy_all
Candidate.destroy_all

candidate1 = Candidate.create(first_name: 'Mary', last_name: 'Jane', email: 'mary.jane@vangst.com')
candidate2 = Candidate.create(first_name: 'Bob', last_name: 'Marley', email: 'b.mar@vangst.com')
candidate3 = Candidate.create(first_name: 'Smokey', last_name: 'TheBear', email: 'smokey@vangst.com')

job1 = JobPosting.create(title: 'Trimmer', company_name: 'Green Solution', url: 'http://example.com/job.timmer')
job2 = JobPosting.create(title: 'Packager', company_name: 'Green Tech', url: 'http://example.com/job.packager')
job3 = JobPosting.create(title: 'Chief Operating Officer', company_name: 'Green Solution', url: 'http://example.com/job.coo')

candidate1.job_applications.create(job_posting: job1, is_active: true)
candidate1.job_applications.create(job_posting: job2, is_active: false)
candidate2.job_applications.create(job_posting: job2, is_active: true)
candidate2.job_applications.create(job_posting: job3, is_active: true)
candidate3.job_applications.create(job_posting: job1, is_active: false)
candidate3.job_applications.create(job_posting: job2, is_active: true)
candidate2.job_applications.create(job_posting: job1, is_active: true)
