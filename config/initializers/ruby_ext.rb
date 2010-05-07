class String

  def make_websafe
    self.strip.gsub('d.d.', '').gsub('d.o.o.', '').strip.debalkanize.downcase.gsub(' ', '-').gsub(',', '').gsub('.', '').gsub('---', '-').gsub('--', '-').strip
  end

  def debalkanize
    self.gsub('Č', 'C').gsub('Š', 'S').gsub('Ž', 'Z').gsub('Ć', 'C').gsub('Đ', 'D').gsub('č', 'c').gsub('š', 's').gsub('ž', 'z').gsub('ć', 'c').gsub('đ', 'd')
  end

  def debalkanize!
    replace self.debalkanize
  end

  def make_file_system_friendly
    self.strip.debalkanize.downcase.gsub(' ', '_')
  end
  
  def to_class
    Kernel.const_get(self)
  end
  
  def md5
    Digest::MD5.hexdigest(self)
  end
  
  def sha2
    Digest::SHA2.hexdigest(self)
  end
  
end