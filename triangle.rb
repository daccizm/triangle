# frozen_string_literal: true

# Triangle Class
class Triangle
  class << self
    # 三角形の種類を返却
    #
    # @param [String] side_a 辺A
    # @param [String] side_b 辺B
    # @param [String] side_c 辺C
    # @return [String] 三角形の種類のメッセージ
    #
    def kind_of(side_a, side_b, side_c)
      side_a2f = side_a.to_f
      side_b2f = side_b.to_f
      side_c2f = side_c.to_f

      return '三角形ではありません > <' unless valid?(side_a2f, side_b2f, side_c2f)
      return '正三角形です' if regular?(side_a2f, side_b2f, side_c2f)
    end

    private

    # バリデーション
    #
    # 以下の条件を満たすこと
    # - 各辺が 0 より大きい
    # - |b-c| < a < b+c
    #   - a+b > c
    #   - b+c > a
    #   - c+a > b
    #
    # @param [Float] side_a2f 辺A
    # @param [Float] side_b2f 辺B
    # @param [Float] side_c2f 辺C
    # @return [Boolean] バリデーション結果
    #
    def valid?(side_a2f, side_b2f, side_c2f)
      side_a2f.positive? && side_b2f.positive? && side_c2f.positive? \
        && side_a2f + side_b2f > side_c2f \
        && side_b2f + side_c2f > side_a2f \
        && side_c2f + side_a2f > side_b2f
    end

    # 正三角形判定
    #
    # 与えられた辺から正三角形か判定
    #
    # @param [Float] side_a2f 辺A
    # @param [Float] side_b2f 辺B
    # @param [Float] side_c2f 辺C
    # @return [Boolean] 判定結果
    #
    def regular?(side_a2f, side_b2f, side_c2f)
      [side_a2f, side_b2f, side_c2f].uniq.size == 1
    end
  end
end

p Triangle.kind_of(ARGV[0], ARGV[1], ARGV[2])
