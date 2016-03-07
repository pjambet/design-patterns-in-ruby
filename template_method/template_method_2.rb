class Report
  def initialize
    @title = 'Monthly Report'
    @text = [ 'Things are going', 'really really well.' ]
  end

  def output_report(format)
    if format == :plain
      puts("*** #{@title} ***")
    elsif format == :html
      puts('<html>')
      puts('    <head>')
      puts("        <title>#{@title}</title>")
      puts('    </head>')
      puts('    <body>')
    else
      raise "Unknown format: #{format}"
    end

    if format == :plain
      @text.each do |line|
        puts(line)
      end
    elsif format == :html
      @text.each do |line|
        puts "        <p>#{line}</p> "
      end
    end

    if format == :html
      puts('    </body>')
      puts('</html>')
    end
  end
end

report = Report.new
report.output_report(:html)
report.output_report(:plain)
report.output_report(:foo)
