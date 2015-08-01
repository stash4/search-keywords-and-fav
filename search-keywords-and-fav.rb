Plugin.create :tako do

  on_appear do |ms|
    ms.each do |m|
      if m.message.user.to_s =~ /Tako_white/ and
           m.to_s =~ /キーワード|keyword/
        m.message.favorite(true)
        Service.primary.update(:message => "@username")
      end
    end
  end

end