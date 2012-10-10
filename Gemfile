source 'https://rubygems.org'

gem 'rails', '3.2.8'

#zmiany
gem 'kaminari'#umożliwia paginację strony


group :assets do
  gem 'jquery-datatables-rails', github: 'rweng/jquery-datatables-rails'
  gem 'jquery-ui-rails'
end






#koniec_zmian
gem 'sqlite3', :groups => [:test, :development]
group :production do
  gem 'pg'
end

group :assets do
  # gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  # see https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer'
  gem 'uglifier', '>= 1.0.3'

  # zobacz https://github.com/seyhunak/twitter-bootstrap-rails
  # gem 'twitter-bootstrap-rails'
end
gem 'jquery-rails'

gem 'json'

# łatwiejsze w użyciu formularze
# zobacz https://github.com/plataformatec/simple_form
gem 'simple_form'
gem 'execjs'
gem 'therubyracer'

group :development do
  # ładniejsze wypisywanie rekordów na konsoli
  # (zob. konfiguracja irb w ~/.irbrc)
  # gem 'hirb'
  # bezproblemowe zapełnianie bazy danymi testowymi
  # https://github.com/thoughtbot/factory_girl/blob/master/GETTING_STARTED.md
  # gem 'factory_girl_rails', '~> 1.2'
  # gem 'faker'
  # gem 'populator'
  # wyłącza logowanie *assets pipeline*
  gem 'quiet_assets'
end
