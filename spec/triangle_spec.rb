# frozen_string_literal: true

require_relative '../triangle'

describe Triangle do
  describe '#kind_of' do
    context '辺a が 0 以下の数値の場合' do
      it '三角形ではないことを返却すること' do
        pending '0 の場合'
        pending '-0.1 の場合'
        pending '-3 の場合'
      end
    end

    context '辺b が 0 以下の数値の場合' do
      it '三角形ではないことを返却すること' do
        pending '0 の場合'
        pending '-0.1 の場合'
        pending '-3 の場合'
      end
    end

    context '辺c が 0 以下の数値の場合' do
      it '三角形ではないことを返却すること' do
        pending '0 の場合'
        pending '-0.1 の場合'
        pending '-3 の場合'
      end
    end

    context '三角形成立条件を満たさない場合' do
      it '三角形ではないことを返却すること' do
        pending '辺a+b=c の場合'
        pending '辺a+b<c の場合'
        pending '辺b+c=a の場合'
        pending '辺b+c<a の場合'
        pending '辺c+a=b の場合'
        pending '辺c+a<b の場合'
      end
    end

    context '正三角形の成立条件を満たす場合' do
      it '正三角形であることを返却すること' do
        pending '辺a=0.1, 辺b=0.1, 辺c=0.1 の場合'
        pending '辺a=2,   辺b=2,   辺c=2 の場合'
      end
    end
  end
end
