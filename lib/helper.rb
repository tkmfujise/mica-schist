module Helper
  def index?
    @item.identifier.to_s.end_with? '/index.txt'
  end
end
