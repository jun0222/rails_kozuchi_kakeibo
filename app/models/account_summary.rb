class AccountSummary
  attr_accessor :account, :sum, :diff
  
  def initialize(account, sum = 0, diff = 0)
    @account = account
    @sum = sum
    @diff = diff
  end
  
  def name
    @account.type_in?(:asset) ? "δΈζι(#{@account.name})" : @account.name
  end
  
  def self.get_sum(summaries)
    sum = 0
    summaries.each do |s|
      sum += (s.sum || 0)
    end
    return sum
  end

  def self.get_diff_sum(summaries)
    sum = 0
    summaries.each do |s|
      sum += (s.diff || 0)
    end
    return sum
  end

end