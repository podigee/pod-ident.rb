# DO NOT EDIT THIS FILE - it gets automatically generated by running "bin/parse-rules"

RULES = [{:app=>"Apple Podcasts", :match=>{"startsWith"=>"AppleCoreMedia"}, :platform=>{"regex"=>"\\((\\w+\\s*\\w*)", "replacements"=>[{"name"=>"Macintosh", "replaceWith"=>"Mac"}]}}, {:app=>"Apple Podcasts", :match=>{"startsWith"=>"itunesstored"}, :platform=>{"regex"=>"(iPad|iPod|iPhone)"}}, {:app=>"iTunes", :match=>{"startsWith"=>"iTunes", "excluding"=>{"regex"=>"Downcast|iCatcher|SqueezeCenter|SqueezeNetwork|MusicServer"}}, :platform=>{"regex"=>"\\((\\w+\\s*\\w*)", "replacements"=>[{"name"=>"Macintosh", "replaceWith"=>"Mac"}]}}, {:app=>"Apple Podcasts", :match=>{"includes"=>"watchOS", "excluding"=>{"regex"=>"^atc/|\\(null\\) watchOS/"}}, :platform=>{"text"=>"watchOS"}}, {:app=>"Spotify", :match=>{"startsWith"=>"Spotify", "excluding"=>{"regex"=>"^Spotify/1\\.0$"}}, :platform=>{"regexes"=>["(Android|iOS)"]}}, {:app=>"CastBox", :match=>{"startsWith"=>["CastBox", "Castbox"]}, :platform=>{"regexes"=>["(Android|iOS|OS\\sVersion)", "(CastBox)"], "replacements"=>[{"name"=>"OS Version", "replaceWith"=>"iOS"}, {"name"=>"CastBox", "replaceWith"=>"Android"}]}}, {:app=>"Alexa", :match=>{"startsWith"=>"Alexa"}, :platform=>{"text"=>"Alexa-capable device"}}, {:app=>"Alexa", :match=>{"startsWith"=>"Echo"}, :platform=>{"text"=>"Amazon Echo", "userAgents"=>[{"userAgent"=>"Echo/1.0(APNG)", "platform"=>"Amazon Echo"}]}}, {:app=>"Deezer", :match=>{"startsWith"=>"Deezer"}, :platform=>{"regexes"=>["(Android|Darwin)", "\\((\\w+\\s*\\w*)"], "replacements"=>[{"name"=>"osx", "replaceWith"=>"Mac"}, {"name"=>"Darwin", "replaceWith"=>"Apple Device"}]}}, {:app=>"Overcast", :match=>{"startsWith"=>"Overcast", "excluding"=>{"regex"=>"^Overcast/1\\.0 Podcast Sync"}}, :platform=>{"text"=>"iOS"}}, {:app=>"radio.net", :match=>{"startsWith"=>["radio.net", "radio.de", "radio.at", "radio.fr", "radio.dk", "radio.es", "radio.it", "radio.pt", "radio.pl"]}, :platform=>{"regex"=>"(Android|Darwin|Linux)", "replacements"=>[{"name"=>"Darwin", "replaceWith"=>"iOS"}, {"name"=>"Linux", "replaceWith"=>"Android"}]}}, {:app=>"PocketCasts", :match=>{"startsWith"=>["PocketCasts", "Pocket Casts", "Shifty Jelly Pocket Casts"]}, :platform=>{"regex"=>"(Android)"}}, {:app=>"Himalaya", :match=>{"startsWith"=>"Himalaya"}, :platform=>{"regex"=>"(Darwin|Android)", "replacements"=>[{"name"=>"Darwin", "replaceWith"=>"iOS"}]}}, {:app=>"ExoPlayer", :match=>{"startsWith"=>["ExoPlayer", "yourApplicationName", "null", "md5d42223d6ee7473da82e8136ffb794439.App"]}, :platform=>{"text"=>"Android"}}, {:app=>"Download Manager", :match=>{"startsWith"=>"AndroidDownloadManager"}, :platform=>{"text"=>"Android"}}, {:app=>"Castamatic", :match=>{"startsWith"=>"Castamatic"}, :platform=>{"text"=>"iOS"}}, {:app=>"The Podcast App (podcast.app)", :match=>{"includes"=>"The Podcast App"}, :platform=>{"text"=>"iOS"}}, {:app=>"CastMix", :match=>{"startsWith"=>"CastMix"}, :platform=>{"text"=>"Android"}}, {:app=>"Unknown App", :match=>{"startsWith"=>"okhttp"}, :platform=>{"text"=>"Android"}}, {:app=>"Stagefright Media Playback Engine", :match=>{"includes"=>"stagefright", "excluding"=>{"text"=>"stagefright alternative"}}, :platform=>{"regex"=>"(Fire OS|Android)"}}, {:app=>"LG Player", :match=>{"startsWith"=>"Player/LG Player", "includes"=>["LG Player", "LG-Player"]}, :platform=>{"text"=>"Android"}}, {:app=>"Android Browser", :match=>{"startsWith"=>"Dalvik"}, :platform=>{"text"=>"Android"}}, {:app=>"Acast", :match=>{"startsWith"=>"Acast"}, :platform=>{"regex"=>"(Darwin|Android|Windows)", "replacements"=>[{"name"=>"Darwin", "replaceWith"=>"iOS"}]}}, {:app=>"Castro", :match=>{"startsWith"=>"Castro"}, :platform=>{"text"=>"iOS"}}, {:app=>"Breaker", :match=>{"startsWith"=>"Breaker"}, :platform=>{"regex"=>"(Darwin|Android)", "replacements"=>[{"name"=>"Darwin", "replaceWith"=>"iOS"}]}}, {:app=>"Podcast Addict", :match=>{"startsWith"=>["PodcastAddict", "Podcast Addict"]}, :platform=>{"text"=>"Android"}}, {:app=>"Podbean", :match=>{"startsWith"=>"Podbean", "excluding"=>{"regex"=>"^Podbean Importer"}}, :platform=>{"regex"=>"(iOS|Android)"}}, {:app=>"Google Podcasts", :match=>{"includes"=>["GSA"], "excluding"=>{"regex"=>"iPhone|iPad"}}, :platform=>{"text"=>"Android"}}, {:app=>"Google Search App", :match=>{"includes"=>["GSA"], "excluding"=>{"regex"=>"Android"}}, :platform=>{"regexes"=>["(iPhone|iPad)"]}}, {:app=>"Google Podcasts", :match=>{"includes"=>"GoogleChirp"}, :platform=>{"text"=>"Google Smart Speaker"}}, {:app=>"Stitcher", :match=>{"startsWith"=>"Stitcher"}, :platform=>{"regex"=>"(iOS|Android)"}}, {:app=>"TuneIn", :match=>{"startsWith"=>"TuneIn"}, :platform=>{"regex"=>"(Darwin|Android)", "replacements"=>[{"name"=>"Darwin", "replaceWith"=>"iOS"}]}}, {:app=>"PodCruncher", :match=>{"startsWith"=>"PodCruncher"}, :platform=>{"text"=>"iOS"}}, {:app=>"iCatcher!", :match=>{"startsWith"=>"iCatcher!", "includes"=>"iCatcher!"}, :platform=>{"regex"=>"\\((iPhone|iPad|iPod touch)", "fallback"=>"iOS"}}, {:app=>"Castaway", :match=>{"startsWith"=>"Castaway"}, :platform=>{"text"=>"iOS"}}, {:app=>"Instacast", :match=>{"startsWith"=>"Instacast"}, :platform=>{"text"=>"Apple Device"}}, {:app=>"VLC", :match=>{"startsWith"=>["VLC", "LibVLC"], "includes"=>"VLC"}, :platform=>{"regex"=>"(Android|iPhone)"}}, {:app=>"Podcast Republic", :match=>{"startsWith"=>"PodcastRepublic"}, :platform=>{"text"=>"Android"}}, {:app=>"DoggCatcher", :match=>{"includes"=>"DoggCatcher"}, :platform=>{"text"=>"Android"}}, {:app=>"Player FM", :match=>{"startsWith"=>["Player FM", "Player%20FM"]}, :platform=>{"regex"=>"(Darwin)", "fallback"=>"Android", "replacements"=>[{"name"=>"Darwin", "replaceWith"=>"iOS"}]}}, {:app=>"Podkicker", :match=>{"startsWith"=>"Podkicker"}, :platform=>{"text"=>"Android"}}, {:app=>"AntennaPod", :match=>{"startsWith"=>"AntennaPod"}, :platform=>{"text"=>"Android"}}, {:app=>"Downcast", :match=>{"startsWith"=>"Downcast", "includes"=>"Downcast"}, :platform=>{"regex"=>"\\((iPhone|iPad|iPod touch|Mac)"}}, {:app=>"gPodder", :match=>{"startsWith"=>"gPodder"}, :platform=>{"regex"=>"(Linux|Windows)"}}, {:app=>"Podcatcher Deluxe", :match=>{"includes"=>"Podcatcher Deluxe"}, :platform=>{"text"=>"Android"}}, {:app=>"Procast", :match=>{"startsWith"=>["Procast", "ProCast"]}, :platform=>{"text"=>"iOS"}}, {:app=>"RSSRadio", :match=>{"startsWith"=>"RSSRadio"}, :platform=>{"regex"=>"(iPhone|iPad|iPod touch|Darwin)", "replacements"=>[{"name"=>"Darwin", "replaceWith"=>"iOS"}], "fallback"=>"iOS"}}, {:app=>"Podcat", :match=>{"startsWith"=>"Podcat", "excluding"=>{"regex"=>"Podcatcher"}}, :platform=>{"text"=>"iOS"}}, {:app=>"Audio Now", :match=>{"startsWith"=>"AudioNow", "includes"=>"audionow"}, :platform=>{"regex"=>"(iOS|Android)"}}, {:app=>"DIE ZEIT App", :match=>{"includes"=>"ZONApp"}, :platform=>{"regex"=>"(iPhone|iPad|iPod touch|Android)"}}, {:app=>"F.A.Z Der Tag App", :match=>{"includes"=>"FAZDERTAG"}, :platform=>{"regexes"=>["(Android)", "\\((iPhone|iPad|iPod touch)"]}}, {:app=>"ANTENNE BAYERN App", :match=>{"includes"=>"AntenneBayern"}, :platform=>{"regexes"=>["(Android)", "\\((iPhone|iPad|iPod touch)"]}}, {:app=>"BuzzFeed App", :match=>{"includes"=>"buzzfeed"}, :platform=>{"regexes"=>["(Android)", "\\((iPhone|iPad|iPod touch)"]}}, {:app=>"Facebook in-app browser", :match=>{"includes"=>["FBAN", "FBAV"]}, :platform=>{"regexes"=>["\\((iPhone|iPad|iPod touch)", "(Android)"]}}, {:app=>"Instagram in-app browser", :match=>{"includes"=>"Instagram"}, :platform=>{"regexes"=>["(iPad)", "(iPhone|Android)"]}}, {:app=>"Twitter in-app browser", :match=>{"includes"=>"Twitter", "excluding"=>{"regex"=>"^TelegramBot "}}, :platform=>{"regex"=>"(iPhone|iPad|Darwin|Android)", "replacements"=>[{"name"=>"Darwin", "replaceWith"=>"Apple device"}]}}, {:app=>"Pinterest in-app browser", :match=>{"includes"=>"Pinterest"}, :platform=>{"regexes"=>["(Android)", "\\((iPhone|iPad|iPod touch)"]}}, {:app=>"Windows Media Player", :match=>{"startsWith"=>["NSPlayer", "WMPlayer"]}, :platform=>{"text"=>"Windows"}}, {:app=>"Sonos", :match=>{"includes"=>"Sonos"}, :platform=>{"text"=>"Sonos"}}, {:app=>"Internet Explorer", :match=>{"includes"=>"Trident"}, :platform=>{"regex"=>"(Windows Phone)", "fallback"=>"Windows"}}, {:app=>"Kodi Media Center", :match=>{"startsWith"=>"Kodi", "includes"=>"Kodi"}, :platform=>{"regex"=>"(X11|Android|Windows)", "replacements"=>[{"name"=>"X11", "replaceWith"=>"Linux"}]}}, {:app=>"HermesPod", :match=>{"startsWith"=>"+hermespod.com"}, :platform=>{"text"=>"Windows"}}, {:app=>"ViennaRSS", :match=>{"includes"=>"Vienna"}, :platform=>{"text"=>"Mac"}}, {:app=>"Unknown client", :match=>{"startsWith"=>"(null)", "excluding"=>{"regex"=>"^atc/|\\(null\\) watchOS/"}}, :platform=>{"regex"=>"(iPhone|iPad|iPod touch)"}}, {:app=>"Clementine Music Player", :match=>{"startsWith"=>"Clementine"}, :platform=>{"text"=>"Unknown"}}, {:app=>"Flipboard", :match=>{"includes"=>"Flipboard", "excluding"=>{"regex"=>"FlipboardProxy/"}}, :platform=>{"regexes"=>["(Android)", "\\((iPhone|iPad|iPod touch|Macintosh)"], "replacements"=>[{"name"=>"Macintosh", "replaceWith"=>"Mac"}]}}, {:app=>"iVoox", :match=>{"startsWith"=>["ivoox", "iVoox"]}, :platform=>{"regexes"=>["(Android)", "(Darwin)\\/", "\\((iPhone|iPad|iPod touch|Macintosh)"], "replacements"=>[{"name"=>"Darwin", "replaceWith"=>"Apple device"}, {"name"=>"Macintosh", "replaceWith"=>"Mac"}]}}, {:app=>"FYEO", :match=>{"startsWith"=>"FYEO"}, :platform=>{"regex"=>"(iOS|Android)"}}, {:app=>"Amazon Music", :match=>{"startsWith"=>"AmazonMusic"}, :platform=>{"regex"=>"(iPhone|Android|MacOS|Fire OS|iPad)"}}, {:app=>"Podimo", :match=>{"startsWith"=>"Podimo"}, :platform=>{"regex"=>"(iOS|Android)"}}, {:app=>"ARD Audiothek", :match=>{"startsWith"=>"ARD Audiothek"}, :platform=>{"regex"=>"(iOS|Android)"}}, {:app=>"Samsung Podcast", :match=>{"startsWith"=>"sp-agent"}, :platform=>{"text"=>"Android"}}, {:app=>"RTL+", :match=>{"startsWith"=>"RTL+"}, :platform=>{"regex"=>"(iOS|iPhone|Android)"}}].freeze