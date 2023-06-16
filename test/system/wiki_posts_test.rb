require 'application_system_test_case'

class WikiPostsTest < ApplicationSystemTestCase
  setup do
    @wiki_post = wiki_posts(:one)
  end

  test 'visiting the index' do
    visit wiki_posts_url
    assert_selector 'h1', text: 'Wiki posts'
  end

  test 'should create wiki post' do
    visit wiki_posts_url
    click_on 'New wiki post'

    click_on 'Create Wiki post'

    assert_text 'Wiki post was successfully created'
    click_on 'Back'
  end

  test 'should update Wiki post' do
    visit wiki_post_url(@wiki_post)
    click_on 'Edit this wiki post', match: :first

    click_on 'Update Wiki post'

    assert_text 'Wiki post was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Wiki post' do
    visit wiki_post_url(@wiki_post)
    click_on 'Destroy this wiki post', match: :first

    assert_text 'Wiki post was successfully destroyed'
  end
end
