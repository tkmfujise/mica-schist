module Nanoc::Filters
  class Index < Nanoc::Filter
    identifier :index

    def run(content, params = {})
      html = content.split.map do |path|
        dir  = Pathname(path).dirname
        stat = stat_of(dir)
        <<~HTML
          <tr class="audio-list">
            <td>
              <button
                #{hash_to_html_attribute(stat)}
                data-path="#{dir}"
                data-src="#{dir.join('output.ogg')}"
                class="audio-item"
              ></button>
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


    private
      def stat_of(dir)
        file = Pathname('content' + dir.to_s).join('stat.json')
        return {} unless file.exist?
        JSON.parse(file.read)
      end

      def hash_to_html_attribute(hash)
        return '' if hash.empty?
        hash.map{|k, v| "data-#{k}=\"#{v}\"" }.join(' ')
      end
  end
end
