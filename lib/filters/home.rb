module Nanoc::Filters
  class Home < Nanoc::Filter
    identifier :home

    def run(content, params = {})
      html = content.split.map do |path|
        dir = Pathname(path).dirname
        <<~HTML
          <tr>
            <td>
              <audio preload="none" src="#{dir.join('output.ogg')}" controls>
                Your browser does not support the audio tag.
              </audio>
            </td>
            <td>
              <a href="#{dir}">#{dir}</a>
            </td>
          </tr>
        HTML
      end.join
      <<~HTML
        <table>
          <tbody>
            #{html}
          </tbody>
        </table>
      HTML
    end
  end
end
