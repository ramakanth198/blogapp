class Post < ActiveRecord::Base

validates :posted_from, exclusion: { in: %w(dallas california edison losangeles)}
end
