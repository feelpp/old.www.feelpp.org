require 'asciidoctor/extensions'

Asciidoctor::Extensions.register do
  treeprocessor do
    process do |doc|
      doc
    end
  end
end
