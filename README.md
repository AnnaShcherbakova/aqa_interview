#Programming

1. Create test plan for functional testing of [Google Translate](http://translate.google.ru) web-service. (3-5 scenarions are quite enough)
2. Create mini-framework which meets the requirements of test plan. Technologies: Ruby + Cucumber + Capybara/Selenium/watir-webdriver/PageObject/SitePrism (any mix)
3. Implement the scripts from test plan using the framework

Quick start:

 1. Install Ruby [Windows](http://rubyinstaller.org/) / [Linux](https://rvm.io)
 2. Install bundler `gem install bundler`
 3. Install [git](http://git-scm.com/book/ru/%D0%92%D0%B2%D0%B5%D0%B4%D0%B5%D0%BD%D0%B8%D0%B5-%D0%A3%D1%81%D1%82%D0%B0%D0%BD%D0%BE%D0%B2%D0%BA%D0%B0-Git)
 4. Fork [this repo](https://github.com/d3ZoRg/aqa_interview)
 5. Clone your repo with `git clone <addr>`
 6. Run `bundle install` in `aqa_interview` directory
 7. Code!
 8. Check out your code by running `cucumber --require features --color` in `aqa_interview` directory
 9. Run 7,8 until tests become green
 10. Commit and push to your repo

Documentation:

- [Ruby Doc](https://www.ruby-lang.org/ru/)
- [Cucumber](https://github.com/cucumber/cucumber)
- [Capybara](https://github.com/jnicklas/capybara)
- [watir](https://github.com/watir/watir-webdriver)
- [PageObject](https://github.com/cheezy/page-object)
- [SitePrism](https://github.com/natritmeyer/site_prism)
