class WidgetNew

  def initialize(browser, domain)
    @browser = browser
    @domain = domain
  end

  def visit
    @browser.get(@domain + "/widgets/new")
  end

  def name
    @browser.first(id: 'widget_name')
  end

  def description
    @browser.first(id: 'widget_description')
  end

  def new_widget_form
    @browser.first(id: 'new_widget')
  end

end