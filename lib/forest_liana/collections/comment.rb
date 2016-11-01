class Forest::Comment
  include ForestLiana::Collection

  collection :comments
  action 'Moderate comment'
end
