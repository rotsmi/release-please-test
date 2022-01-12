from add import addition

def test_addition():
    assert addition(4,10) == 14

def test_more_addition():
    assert addition(40,10) == 50
    assert addition(10,10) == 20

def test_addition_fail():
    assert addition(10,10) != 21

def test_addition_success():
    assert addition(10,20) == 30

def test_addition_success_2():
    assert addition(10,30) == 40
