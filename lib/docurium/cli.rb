class Docurium
  class CLI

    def self.doc(idir, options)
      doc = Docurium.new(idir)
      doc.generate_docs
    end

    def self.gen(file)

temp = <<-TEMPLATE
{
 "name":   "project",
 "github": "user/project",
 "input":  "include/lib",
 "prefix": "lib_",
 "output": "docs"
}
TEMPLATE
      puts "Writing to #{file}"
      File.open(file, 'w+') do |f|
        f.write(temp)
      end
    end

  end
end
