class TransferMoneyBetweenBankAccountsService
  private_class_method :new

  def self.call(**kwargs)
    new.call(**kwargs)
  end

  def call(from:, to:, money:)
    from.transaction do
      from.withdraw(money)
      to.deposit(money)
    end
  end

  # private
# 必要に応じて、callメソッド内の処理をプライベートに抽出
end