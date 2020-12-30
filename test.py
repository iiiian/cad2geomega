import re

t='asdasdf aefeas f. .  Box '
a=re.findall(r'Box',t)
print(a)