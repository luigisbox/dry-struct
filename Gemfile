# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

eval_gemfile "Gemfile.devtools"

gemspec

group :test do
  gem "dry-monads", github: "dry-rb/dry-monads", branch: "main"
end

group :tools do
  gem "pry"
  gem "pry-byebug", platform: :mri
end

group :benchmarks do
  gem "activerecord"
  gem "attrio"
  gem "benchmark-ips"
  gem "fast_attributes"
  gem "hotch", platform: :mri
  gem "sqlite3", platform: :mri
  gem "virtus"
end
