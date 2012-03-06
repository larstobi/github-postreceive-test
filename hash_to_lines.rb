#!/usr/bin/env ruby
hash = {"deleted"=>false, "repository"=>{"forks"=>1, "created_at"=>"2012/02/28 04:44:18 -0800", "name"=>"github-postreceive-test", "owner"=>{"name"=>"larstobi", "email"=>"larstobi@snota.no"}, "has_downloads"=>true, "fork"=>false, "private"=>false, "homepage"=>"", "pushed_at"=>"2012/03/06 08:05:40 -0800", "has_wiki"=>true, "open_issues"=>0, "size"=>168, "description"=>"Test-repo for push messages", "url"=>"https://github.com/larstobi/github-postreceive-test", "has_issues"=>true, "watchers"=>1}, "before"=>"8a33154e737bb3cccc60a78b75dc51bb1b2c8434", "pusher"=>{"name"=>"larstobi", "email"=>"larstobi@snota.no"}, "compare"=>"https://github.com/larstobi/github-postreceive-test/compare/8a33154...1a07736", "commits"=>[{"timestamp"=>"2012-03-06T08:05:37-08:00", "removed"=>[], "message"=>"flupp", "author"=>{"name"=>"Lars Tobias Skjong-B\303\270rsting", "username"=>"larstobi", "email"=>"larstobi@relatime.no"}, "distinct"=>true, "committer"=>{"name"=>"Lars Tobias Skjong-B\303\270rsting", "username"=>"larstobi", "email"=>"larstobi@relatime.no"}, "modified"=>["flupp"], "url"=>"https://github.com/larstobi/github-postreceive-test/commit/1a0773672bab7f5b75b1020948ca5661607f8528", "id"=>"1a0773672bab7f5b75b1020948ca5661607f8528", "added"=>[]}], "head_commit"=>{"timestamp"=>"2012-03-06T08:05:37-08:00", "removed"=>[], "message"=>"flupp", "author"=>{"name"=>"Lars Tobias Skjong-B\303\270rsting", "username"=>"larstobi", "email"=>"larstobi@relatime.no"}, "distinct"=>true, "committer"=>{"name"=>"Lars Tobias Skjong-B\303\270rsting", "username"=>"larstobi", "email"=>"larstobi@relatime.no"}, "modified"=>["flupp"], "url"=>"https://github.com/larstobi/github-postreceive-test/commit/1a0773672bab7f5b75b1020948ca5661607f8528", "id"=>"1a0773672bab7f5b75b1020948ca5661607f8528", "added"=>[]}, "created"=>false, "after"=>"1a0773672bab7f5b75b1020948ca5661607f8528", "forced"=>false, "ref"=>"refs/heads/master"}

string = hash.collect do |key,value|
    if value.class == Hash
        value.collect do |subkey, subvalue|
            if subvalue.class == Hash
                subvalue.collect do |subsubkey, subsubvalue|
                    "#{key}: #{subkey}: #{subsubkey}: #{subsubvalue}"
                end
            else
                "#{key}: #{subkey}: #{subvalue}"
            end
        end
    else
        "#{key}: #{value}"
    end
end

puts string
