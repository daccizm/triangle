# frozen_string_literal: true

# Triangle Class
class Triangle
  # 三角形の種類を返却
  #
  # @param [String] side_a 辺A
  # @param [String] side_b 辺B
  # @param [String] side_c 辺C
  # @return [String] 三角形の種類のメッセージ
  #
  def self.kind_of(a, b, c)
    side_a = a.to_f
    side_b = b.to_f
    side_c = c.to_f
    return '三角形ではありません > <' unless valid?(side_a, side_b, side_c)
    return '正三角形です' if [side_a, side_b, side_c].uniq.size == 1
    return '二等辺三角形です' if side_a == side_b \
      || side_b == side_c \
      || side_c == side_a
    '不等辺三角形です'
  end

  # バリデーション
  #
  # 以下の条件を満たすこと
  # - 各辺が 0 より大きい
  # - |b-c| < a < b+c
  #   - a+b > c
  #   - b+c > a
  #   - c+a > b
  #
  # @param [Float] side_a 辺A
  # @param [Float] side_b 辺B
  # @param [Float] side_c 辺C
  # @return [Boolean] バリデーション結果
  #
  def self.valid?(side_a, side_b, side_c)
    side_a.positive? && side_b.positive? && side_c.positive? \
      && side_a + side_b > side_c \
      && side_b + side_c > side_a \
      && side_c + side_a > side_b
  end

  private_class_method :valid?
end

p Triangle.kind_of(ARGV[0], ARGV[1], ARGV[2])
