# frozen_string_literal: true

require_relative '../triangle'

describe Triangle do
  describe '#kind_of' do
    context '辺a が 0 以下の数値の場合' do
      it '三角形ではないことを返却すること' do
        expect(Triangle.kind_of(0, 2, 2)).to eq '三角形ではありません > <'
        expect(Triangle.kind_of(-0.1, 2, 2)).to eq '三角形ではありません > <'
        expect(Triangle.kind_of(-3, 2, 2)).to eq '三角形ではありません > <'
      end
    end

    context '辺b が 0 以下の数値の場合' do
      it '三角形ではないことを返却すること' do
        expect(Triangle.kind_of(2, 0, 2)).to eq '三角形ではありません > <'
        expect(Triangle.kind_of(2, -0.1, 2)).to eq '三角形ではありません > <'
        expect(Triangle.kind_of(2, -3, 2)).to eq '三角形ではありません > <'
      end
    end

    context '辺c が 0 以下の数値の場合' do
      it '三角形ではないことを返却すること' do
        expect(Triangle.kind_of(2, 2, 0)).to eq '三角形ではありません > <'
        expect(Triangle.kind_of(2, 2, -0.1)).to eq '三角形ではありません > <'
        expect(Triangle.kind_of(2, 2, -3)).to eq '三角形ではありません > <'
      end
    end

    context '三角形成立条件を満たさない場合' do
      it '三角形ではないことを返却すること' do
        # 辺a+b=c の場合
        expect(Triangle.kind_of(1, 1, 2)).to eq '三角形ではありません > <'
        # 辺a+b<c の場合
        expect(Triangle.kind_of(1, 1, 3)).to eq '三角形ではありません > <'
        # 辺b+c=a の場合
        expect(Triangle.kind_of(2, 1, 1)).to eq '三角形ではありません > <'
        # 辺b+c<a の場合
        expect(Triangle.kind_of(3, 1, 1)).to eq '三角形ではありません > <'
        # 辺c+a=b の場合
        expect(Triangle.kind_of(1, 2, 1)).to eq '三角形ではありません > <'
        # 辺c+a<b の場合
        expect(Triangle.kind_of(1, 3, 1)).to eq '三角形ではありません > <'
      end
    end

    context '正三角形の成立条件を満たす場合' do
      it '正三角形であることを返却すること' do
        expect(Triangle.kind_of(0.1, 0.1, 0.1)).to eq '正三角形です'
        expect(Triangle.kind_of(2, 2, 2)).to eq '正三角形です'
      end
    end
  end
end
