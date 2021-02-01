# README

You can run this project locally with Docker or with the compatible Rubi version

## Getting Started

### Docker
Just run `docker-compose up --build` and the environment will build and start.

### Local build
Build you local project with `bundle install` then run the server with `rails server -b 0.0.0.0`.

## API Endpoints
- base_url: `https://bx-poketrade-back.herokuapp.com`

#### 1. **Show History Trades**
- Description: `returns the trades history ordered by creation date from newest to oldest`
- Resource: `/pokemontrade`
- Method: `GET`

#### 2. **Store New Trade**
- Description: `stores the new pokemon trade`
- Resource: `/pokemontrade`
- Method: `POST`
- Body:
```json
{
	"pokemontrade": {
		"trainer01": "String",
		"trainer02": "String",
		"pokemon_list01": [
			{
				"api_id": 1,
				"name": "bulbasaur",
				"base_experience": 64,
				"sprite_url": "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/1.png"
			}
		],
		"pokemon_list02": []
	}
}
```