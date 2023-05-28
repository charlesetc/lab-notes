#!/usr/bin/env ruby
require 'erb'

def esc(arg)
  ERB::Util.html_escape(arg)
end

def items
  sections = File.read('lab.md').split("\n---").map(&:strip)
  sections.shift
  sections.pop

  sections.map do |section|
    lines = section.split("\n")
    title = lines.shift
    description = lines.join("\n").strip
    <<END
      <item>
        <title>#{esc title}</title>
        <description>#{esc description}</description>
        <guid isPermaLink="false">inclouds-space-#{esc title.split('').filter {|c| c =~ /[[:alnum:]]/}.join}</guid>
      </item>
END
  end
end

def rss
  <<END
<rss version="2.0" xmlns:atom="http://www.w3.org/2005/Atom">
  <atom:link href="https://notes.inclouds.space/rss.xml" rel="self" type="application/rss+xml" />
  <channel>
    <title>Charles' Lab Notes</title>
    <link>https://notes.inclouds.space/</link>
    <description>Charles' quick-to-publish notes</description>
    <language>en-us</language>
#{items.join("\n")}
  </channel>
</rss>
END

end

File.write('build/rss.xml', rss())
