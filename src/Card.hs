module Card where
data CardType = Action | Attack | Reaction | Treasure | Victory | Duration deriving Show

data CardEffect = CoinValue Int | VPValue Int | PlusDraw Int | PlusCoin Int | PlusBuy Int | PlusAction Int | Trash Int | DurationDraw Int | DurationAction Int | DurationCoin Int | DurationBuy Int deriving Show

data Card = Card {
              name :: String,
              cost :: Int,
              cardType :: [CardType],
              effects :: [CardEffect]
} deriving Show

-- Treasure cards
copper = Card "Copper" 0 [Treasure] [CoinValue 1]
silver = Card "Silver" 3 [Treasure] [CoinValue 2]
gold = Card "Gold" 6 [Treasure] [CoinValue 3]

-- Victory point cards
estate = Card "Estate" 2 [Victory] [VPValue 1]
duchy = Card "Duchy" 5 [Victory] [VPValue 3]
province = Card "Province" 8 [Victory] [VPValue 6]
curse = Card "Curse" 0 [Victory] [VPValue (-1)]

-- Action cards
smithy = Card "Smithy" 4 [Action] [PlusDraw 3]
village = Card "Village" 3 [Action] [PlusDraw 1, PlusAction 2]
laboratory = Card "Laboratory" 5 [Action] [PlusDraw 2, PlusAction 1]
festival = Card "Festival" 5 [Action] [PlusAction 2, PlusCoin 2, PlusBuy 1]
market = Card "Market" 5 [Action] [PlusAction 1, PlusCoin 1, PlusDraw 1, PlusBuy 1]
woodcutter = Card "Woodcutter" 3 [Action] [PlusCoin 2, PlusBuy 1]