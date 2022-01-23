# common-rails6

## 技术栈说明

- rspec
- [devise](https://github.com/heartcombo/devise)
  https://relishapp.com/rspec/rspec-core/docs/example-groups/shared-examples

## 使用 rails

建议先通读一下: [Rails getting_started](https://guides.rubyonrails.org/getting_started.html)

[zeitwerk](https://github.com/fxn/zeitwerk)
Rails 的[auto loading_and_reloading_constants](https://guides.rubyonrails.org/autoloading_and_reloading_constants.html)

```sh
rails runner 'pp ActiveSupport::Dependencies.autoload_paths'
```


Other authentication methods are available for Rails applications. 

Two popular authentication add-ons for Rails are the Devise rails engine and the Authlogic gem, along with a number of others.


```rb
rails generate devise model
```


## 参考

- [grape-gem-tutorial-how-to-build-a-rest-like-api-in-ruby](https://www.toptal.com/ruby/grape-gem-tutorial-how-to-build-a-rest-like-api-in-ruby)
