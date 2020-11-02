Nodes = Struct.new(:nodes) do
  def eval
    nodes.map do |node|
      $maintable = node
      node.eval
    end
  end

  def <<(o)
    nodes << o
  end
end

LitInteger = Struct.new(:value) do
  def eval
    value
  end

  def val
    value.chr
  end
end

class SelfNode
  def eval
    $maintable
  end

  def val
    $maintable.val
  end
end

TableNode = Struct.new(:values) do
  def eval
    a = []
    values.each do |node|
      a << node.eval
    end
    a
  end

  def val
    a = []
    values.each do |node|
      a << node.val
    end
    a
  end

  def <<(o)
    values << o
  end

  def [](i)
    values[i]
  end
end

IndexNode = Struct.new(:parent, :index) do
  def eval
    c = parent.eval
    x = c[index]
    x = x.nil? ? -2 : x
  end

  def val
    c = parent.val
    x = c[index]
    x = x.nil? ? '' : x
  end
end

PrintNode = Struct.new(:v) do
  def eval
    l = v.val
    print l.is_a?(Array) ? l.join('') : l
    -1
  end

  def val
    ''
  end
end
