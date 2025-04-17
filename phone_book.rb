class PhoneBook
  dail_book = {
    'newyork' => '212',
    'newbrunswick' => '732',
    'edison' => '908',
    'plainsboro' => '609',
    'sanfrancisco' => '301',
    'miami' => '305',
    'paloalto' => '650',
    'evanston' => '847',
    'orlando' => '407',
    'lancaster' => '717'
  }

  def self.get_city_names(dail_book)
    dail_book.each_key { |key| p key }
  end

  def self.get_area_code(dail_book, city)
    if dail_book.include?(city)
      p "The area code for #{city} is #{dail_book[city]}"
    else
      p 'The city you entered is not in the Phone book'
    end
  end

  answer = ''

  while answer != 'n'
    p 'Do you want to lookup an area code based on a city name?(Y/N)'
    answer = gets.chomp.downcase

    if answer == 'y'
      p 'Which city do you want the area code for?'
      PhoneBook.get_city_names(dail_book)

      p 'Enter your selection'
      city = gets.chomp.downcase
      PhoneBook.get_area_code(dail_book, city)
    elsif answer == 'n'
      break
    end
  end
end
