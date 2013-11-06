class Sample
  def songs
    puts "Enter the value"
    puts "Video1"
    puts "Video2"
    puts "Video3"
    @value=gets.chomp
    #puts @value
    if @value.to_i==1
      data=open("/home/emi/Desktop/Youtube/Day 13 - Ruby on Rails 3 - Introduction to Models[hd720].webm")
      puts "Music 1"
    elsif @value.to_i==2
           puts "Music2"

    elsif @value.to_i==3
      puts "Music 3"
    end

  end

  fr=Sample.new()
  fr.songs

end