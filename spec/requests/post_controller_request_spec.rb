require 'rails_helper'

RSpec.describe "PostControllers", type: :request do
  describe "get posts_path" do
      it "renders the index view" do
        FactoryBot.create_list(:post, 10)
        get posts_path
        expect(response.status).to eq(200)
      end
  end
  describe "get post_path" do
        it "renders the :show template" do
          post = FactoryBot.create(:post)
          get post_path(id: post.id)
          expect(response.status).to eq(200)
        end
  end
  describe "get new_post_path" do
     it "renders the :new template" do
     get new_post_path
     expect(response.status).to eq(200)
    end
  end
  describe "get edit_post_path" do
  it "renders the :edit template" do
    post = FactoryBot.create(:post)
    get edit_post_path(post)
    expect(response.status).to eq(200)
  end
  end
  describe "post post_path with valid data" do
  it "saves a new entry and redirects to the show path for the entry" do
    post_attributes = FactoryBot.attributes_for(:post)
    expect{ post posts_path, params: {post: post_attributes}}.to change(Post, :count)
    expect(response).to redirect_to post_path(id: Post.last.id)
  end
  end

  describe "post posts_path with invalid data" do
  it "does not save a new entry or redirect" do
    post_attributes = FactoryBot.attributes_for(:post)
    post_attributes.delete(:title)
    expect { post posts_path, params: {post: post_attributes}
  }.to_not change(Post, :count)
    expect(response.status).to eq(200)
  end
  end
  describe "put post_path with valid data" do
  it "updates an entry and redirects to the show path for the post" do
  post = FactoryBot.create(:post, title: "Lost Dog")
    expect(post.title).to eq("Lost Dog")
    put post_path(post), params:{post: {title: "Other"}}
    post.reload
    expect(post.title).to eq("Other")
  end
  end
  describe "put post_path with invalid data" do
  it "does not update the post record or redirect" do
    post = FactoryBot.create(:post)
    put post_path(id: post.id),params:{post:{title: "nil"}}
  post.reload
    expect(post.title).to_not eq(nil)
    expect(response.status).to eq(302)
  end
  end
  describe "delete a post record" do
  it "deletes a post record" do
    post = FactoryBot.create(:post)
    delete post_path(post.id)
  end
  end
end
