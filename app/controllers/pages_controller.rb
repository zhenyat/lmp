class PagesController < ApplicationController

  # To handle Home page
  def home
  end

  # To show Competencies Matrix
  def review
    @clusters  = Cluster.all
#    @positions = Position.all.pluck(:title)
    @positions = Position.all
    @matrix    = Hash.new

    @clusters.each do |cluster|
      @matrix[cluster.name] = {}
      competency_names = Competency.where(cluster_id: cluster.id).pluck('DISTINCT name')
      competency_names.each do |competency_name|
        @matrix[cluster.name][competency_name] = []
        competencies = Competency.where(name: competency_name)
        competencies.each do |competency|
#          if cluster.mutual?
#            @matrix[cluster.name][competency.name][competency.position.id] = 'MMM'
#            puts "ZT! matrix = " + @matrix[cluster.name][competency.name][competency.position.id]
#          else
            @matrix[cluster.name][competency.name][competency.position.id] = competency.position.name
#                        puts "ZT! matrix = " + @matrix[cluster.name][competency.name][competency.position.id]

#          end
        end
      end
    end

#    @clusters.each do |cluster|
#      @matrix[cluster.name].each do |row|
#        puts "ZT: row="+row.inspect
#      end
#    end

  end
end
