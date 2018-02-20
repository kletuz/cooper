require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest

    test "layou links" do
      get root_path
      assert_template 'static_pages/home'
      assert_select "a[href=?]", root_path, count: 1
      assert_select "a[href=?]", contacto_path

    end
end
