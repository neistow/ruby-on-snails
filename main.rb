def chunker(f_in)
  f_size = File.size(f_in)
  if f_size < 10
    raise 'File is illegally smol.'
  end
  chunksize = f_size / 10
  File.open(f_in, "r") do |fh_in|
    until fh_in.eof?
      File.open("x#{"%02d"%(fh_in.pos/chunksize)}.txt","w") do |fh_out|
        fh_out << fh_in.read(chunksize)
      end
    end
  end
end

def count_files(dir, ext)
  puts Dir[File.join(dir, '**', "*.#{ext}")].count { |file| File.file?(file) }
end

chunker("hefty_chonker.txt")
count_files("./", "rb")
