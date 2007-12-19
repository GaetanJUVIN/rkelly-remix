require File.dirname(__FILE__) + "/helper"

class FunctionExprNodeTest < NodeTestCase
  def test_to_sexp
    body = FunctionBodyNode.new(SourceElements.new([]))
    node = FunctionExprNode.new(nil, body)
    assert_sexp([:func_expr, nil, [], [:func_body, []]], node.to_sexp)
  end

  def test_to_sexp_with_args
    body = FunctionBodyNode.new(SourceElements.new([]))
    node = FunctionExprNode.new(nil, body, [ParameterNode.new('a')])
    assert_sexp([:func_expr, nil, [[:param, 'a']], [:func_body, []]],
                node.to_sexp)
  end
end