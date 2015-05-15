# encoding: Windows-1251
require 'selenium/webdriver'

class GoogleTranslate
  attr_accessor :result_tr

  def OpenBrowse
#    let (:browser) {@browser ||= Selenium:WebDriver.for :ff
    @driver = Selenium::WebDriver.for :ff
    #@driver.get 'https://translate.google.ru/'
    @driver.get 'https://translate.google.ru/?hl=ru&tab=wT#en/ru/'

    @stxt_el = @driver.find_element :id => 'source'#source text
    @trans_button = @driver.find_element :id => 'gt-submit' #button translate
    
    @rtxt_el = @driver.find_element :id => 'result_box'
  end


  def SetTranslation (source_txt)
   # stxt_el = @driver.find_element :id => 'source'
    @stxt_el.send_keys source_txt
  end

  def GetTranslation
    @rtxt_el = @driver.find_element :id => 'result_box'
    self.result_tr = @rtxt_el.text
  end

  def TranslateClick
    @trans_button = @driver.find_element :id => 'gt-submit'
    @trans_button.click
  end

  def OffAutoTrans
    @offAutoTrans_button = @driver.find_element :id => "gt-otf-switch"

    if (@offAutoTrans_button.attribute(:text).length == 30) #30 - string lenght "Off Auto Trans" in Russian
       @offAutoTrans_button.click
    end
  end

  def OnAutoTrans
   @OffAutoTrans_button = @driver.find_element :id => "gt-otf-switch"

    if (@OffAutoTrans_button.attribute(:text).length == 29) #29 - string lenght "On Auto Trans" in Russian
       @OffAutoTrans_button.click
    end
  end

  def CloseBrowse
    @driver.quit
  end

end