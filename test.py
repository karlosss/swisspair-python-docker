from swisspair import Player, create_matches

players = [Player(id="P1", points=3, rank=1), Player(id="P2", points=0, rank=2)]

matches = create_matches(players)

print(matches)
