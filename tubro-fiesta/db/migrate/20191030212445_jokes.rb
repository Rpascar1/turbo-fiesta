class Jokes < ActiveRecord::Migration
    def change
      create_table :jokes do |t|
        t.string :name
        t.string :joke_descipriton
        t.integer :user_id
        t.boolean :working_status
      end
    end
  end
