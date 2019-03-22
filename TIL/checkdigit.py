def check_number(digits):
    _sum = 0
    alt = False
    for d in reversed(digits):
        assert 0 <= d <= 9
        if alt:
            d *= 2
            if d > 9:
                d -= 9
        _sum += d
        alt = not alt
    return (_sum % 10) == 0