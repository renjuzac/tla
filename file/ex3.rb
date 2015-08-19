require 'json'
require 'nokogiri'
require 'axlsx'
require 'csv'

doc=Nokogiri::XML(File.read("slashdot.xml")) 
slashdot_articles=[]
feed_articles=[]

slashdot_articles=doc.css('item').map { |i|

  {
    title:i.at_css('title').content,
  link:i.at_css('link').content,
  summary:i.at_css('description').content
  }

  }

  slashdot_articles.each {|x| puts x[:title]}


  File.open("feedzilla.json","r") do |file|

  values=JSON.parse(file.read)

  feed_articles=values['articles'].map { |entry| 
    {title:entry['title'],
    source:entry['source'],
    summary:entry['summary']}
  }

  feed_articles.each {|x| puts x[:title]}

  end


  sorted_articles = (slashdot_articles + feed_articles ).sort_by{|x| x[:title]}

  CSV.open("file.csv","a") do |file|
    sorted_articles.each do |article| 
      file << [article[:title],article[:summary]]
    end
  end


  p = Axlsx::Package.new
  wb=p.workbook
  wb.add_worksheet(:name => "Slashdot") do |sheet|
    sorted_articles.each do |article| 
      sheet.add_row [article[:title],article[:summary]]
    end
  end
  p.serialize("slashdot.xlsx")
