require_relative 'rssManager.rb'
require_relative 'rssData.rb'



class Application

   def Execute
   
      # Rss feed url from yahoo news!
      rssUrl = "https://news.yahoo.com/rss"
      
      # Create new RssManager which is imported from rssManager.rb
      rssMRssItnager = RssManager.new
      # puts "Aman"
      
      # Load RSS Feed from url, to an RssChannel data model
      rssChannel = RssManager.new.loadRssChannelFromUrl(rssUrl)
      
      # puts "Toshniwal"
      # Print channel info
      puts rssChannel.Title
      puts rssChannel.Description
      puts rssChannel.Link
      puts rssChannel.PubDate

      # Print RssItem(s) from an RssChannel
      for index in 0..rssChannel.RssItems.length - 1 do
        puts rssChannel.RssItems[index].Title
        # puts rssChannel.RssItems[index].Description[0..20] # Show 20 characters
        puts rssChannel.RssItems[index].Link
        puts rssChannel.RssItems[index].Guid
        puts rssChannel.RssItems[index].PubDate
      end

   end

end

# Run application
application = Application.new
application.Execute