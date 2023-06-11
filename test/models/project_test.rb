require "test_helper"

class ProjectTest < ActiveSupport::TestCase
  fixtures :projects
  # test "the truth" do
  #   assert true
  # end

  # name
  test'name must be present' do
    project = projects(:one)
    project.name ="  "
    assert_not project.valid?
  end

  test 'name must not be duplicated' do
    project = projects(:one)
    project2 = projects(:two)
    project2.name = project.name
    assert_not project2.valid?
  end

  # description
  # since it is an abstract describing the project.
  # a maximum character length will be 750 char.
  test 'description must be less than 750 characters' do
    project = projects(:one)
    project.description = 'a'*751
    assert_not project.valid?
  end

  test 'description should be present' do
    project = projects(:one)
    project.description = " "
    assert_not project.valid?
  end

  # position
  test 'position must be positive' do
    project = projects(:one)
    project.position = -1
    assert_not project.valid?
  end

  test 'position must be greater than zero' do
    project = projects(:one)
    project.position = 0
    assert_not project.valid?
  end

  # github
  test 'github must start with https://github.com/' do
    project = projects(:one)
    project.github = "https://google.com"
    assert_not project.valid?
  end

  test 'github link should be valid' do
    project = projects(:one)
    project.github = "https://github.com/anthonybchung/hotwire_search"
    assert project.valid?
  end

  # on_main_page default.
  test 'on_main_page default should be true' do
    project = Project.new
    assert project.on_main_page
  end
end
