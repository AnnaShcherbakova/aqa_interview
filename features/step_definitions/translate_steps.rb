require 'cucumber'

Given /^I am on a Google Translate page in Firefox$/ do
 #открываем страницу в chrome
  
  @gt = GoogleTranslate.new
  @gt.OpenBrowse
end

Given /^Auto translation is '(.*)'$/ do |autotrans|
  if (autotrans == 'ON')
    @gt.OnAutoTrans
  else
    @gt.OffAutoTrans
  end
end

Given /^I need to translate '(.*)'$/ do |source_word|
  @gt.SetTranslation(source_word)
end

When /^I do nothing$/ do
  sleep(5)
end

When /^I click button 'Translate'$/ do
  sleep(5)
  @gt.TranslateClick
end

Then /^I should see '(.*)'$/ do |exp_result|
  @exp_result = exp_result
  @gt.GetTranslation
  res = @gt.result_tr
  res.should eql(@exp_result)
  @gt.CloseBrowse
end

#When /^I write '(.*)'$/ do |source_word|
 # вводим слово для перевода
 # @gt.SetTranslation(source_word)
#end
#
#Then /^I should see '(.*)'$/ do |exp_result|
 # сравниваем ожид результат с реальным
 # @exp_result = exp_result
 # res = @gt.result_tr
 # res.should eql(@exp_result)
#  @gt.CloseBrowse
#end
