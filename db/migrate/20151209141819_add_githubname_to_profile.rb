class AddGithubnameToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :githubname, :string
  end
end
