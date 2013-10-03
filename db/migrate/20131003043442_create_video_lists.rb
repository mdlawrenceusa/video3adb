class CreateVideoLists < ActiveRecord::Migration
  def change
      VideoList.create_table(10, 5) rescue nil
  end
end