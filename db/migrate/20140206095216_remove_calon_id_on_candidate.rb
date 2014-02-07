class RemoveCalonIdOnCandidate < ActiveRecord::Migration
  change_table :candidates do |t|
        t.remove :calon_id
      end
end
