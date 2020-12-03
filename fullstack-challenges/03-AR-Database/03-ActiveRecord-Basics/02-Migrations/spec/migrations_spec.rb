require_relative "spec_helper"

describe "Migration" do
  before(:each) { create_db }
  let(:db) { ActiveRecord::Base.connection }
  after(:each) { drop_db }

  describe "to create the `posts` table" do
    it "should have actually created the table, with the right columns" do
      migrate(20141025152200)

      now = Time.now.to_i
      expect { db.execute("
        INSERT INTO posts (title, url, created_at, updated_at)
        VALUES ('Le Wagon', 'http://www.lewagon.com', '#{now}', #{now})
      ") }.not_to raise_error

      post = db.execute("SELECT * FROM posts").first
      expect(post[0]).to eq 1  # id
      expect(post[1]).to eq "Le Wagon"
      expect(post[2]).to eq "http://www.lewagon.com"
    end
  end

  describe "to add a `votes` column to the `posts` table" do
    it "should have actually added the column" do
      migrate

      now = Time.now.to_i
      expect { db.execute("
        INSERT INTO posts (title, url, created_at, updated_at, votes)
        VALUES ('Le Wagon', 'http://www.lewagon.com', '#{now}', #{now}, 42)
      ") }.not_to raise_error

      post = db.execute("SELECT * FROM posts").first
      expect(post[0]).to eq 1  # id
      expect(post[1]).to eq "Le Wagon"
      expect(post[2]).to eq "http://www.lewagon.com"
      expect(post[5]).to eq 42
    end

    it "should have added 0 as a default value for the column" do
      migrate

      now = Time.now.to_i
      expect { db.execute("
        INSERT INTO posts (title, url, created_at, updated_at)
        VALUES ('Le Wagon', 'http://www.lewagon.com', '#{now}', #{now})
      ") }.not_to raise_error

      post = db.execute("SELECT * FROM posts").first
      expect(post[0]).to eq 1  # id
      expect(post[1]).to eq "Le Wagon"
      expect(post[2]).to eq "http://www.lewagon.com"
      expect(post[5]).to eq 0
    end
  end
end

