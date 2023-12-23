package dependencies

import (
	"gitlab.praktikum-services.ru/Stasyan/momo-store/internal/store/dumplings"
	"gitlab.praktikum-services.ru/Stasyan/momo-store/internal/store/dumplings/fake"
)

// NewFakeDumplingsStore returns new fake store for app
func NewFakeDumplingsStore() (dumplings.Store, error) {
	packs := []dumplings.Product{
		{
			ID:          1,
			Name:        "Пельмени",
			Description: "С говядиной",
			Price:       5.00,
			Image:       "https://storage.yandexcloud.net/usmanov-diploma/111.jpg",
		},
		{
			ID:          2,
			Name:        "Хинкали",
			Description: "Со свининой",
			Price:       3.50,
			Image:       "https://storage.yandexcloud.net/usmanov-diploma/112.jpg",
		},
		{
			ID:          3,
			Name:        "Манты",
			Description: "С мясом молодых бычков",
			Price:       2.75,
			Image:       "https://storage.yandexcloud.net/usmanov-diploma/113.jpg",
		},
		{
			ID:          4,
			Name:        "Буузы",
			Description: "С телятиной и луком",
			Price:       4.00,
			Image:       "https://storage.yandexcloud.net/usmanov-diploma/114.jpg",
		},
		{
			ID:          5,
			Name:        "Цзяоцзы",
			Description: "С говядиной и свининой",
			Price:       7.25,
			Image:       "https://storage.yandexcloud.net/usmanov-diploma/115.jpg",
		},
		{
			ID:          6,
			Name:        "Гедза",
			Description: "С соевым мясом",
			Price:       3.50,
			Image:       "https://storage.yandexcloud.net/usmanov-diploma/116.jpg",
		},
		{
			ID:          7,
			Name:        "Дим-самы",
			Description: "С уткой",
			Price:       2.65,
			Image:       "https://storage.yandexcloud.net/usmanov-diploma/117.jpg",
		},
		{
			ID:          8,
			Name:        "Момо",
			Description: "С бараниной",
			Price:       5.00,
			Image:       "https://storage.yandexcloud.net/usmanov-diploma/118.jpg",
		},
		{
			ID:          9,
			Name:        "Вонтоны",
			Description: "С креветками",
			Price:       4.10,
			Image:       "https://storage.yandexcloud.net/usmanov-diploma/119.jpg",
		},
		{
			ID:          10,
			Name:        "Баоцзы",
			Description: "С капустой",
			Price:       4.20,
			Image:       "https://storage.yandexcloud.net/usmanov-diploma/120.jpg",
		},
		{
			ID:          11,
			Name:        "Кундюмы",
			Description: "С грибами",
			Price:       5.45,
			Image:       "https://storage.yandexcloud.net/usmanov-diploma/121.jpg",
		},
		{
			ID:          12,
			Name:        "Курзе",
			Description: "С крабом",
			Price:       3.25,
			Image:       "https://storage.yandexcloud.net/usmanov-diploma/122.jpg",
		},
		{
			ID:          13,
			Name:        "Бораки",
			Description: "С говядиной и бараниной",
			Price:       4.00,
			Image:       "https://storage.yandexcloud.net/usmanov-diploma/123.jpg",
		},
		{
			ID:          14,
			Name:        "Равиоли",
			Description: "С рикоттой",
			Price:       2.90,
			Image:       "https://storage.yandexcloud.net/usmanov-diploma/124.jpg",
		},
	}

	store := fake.NewStore()
	store.SetAvailablePacks(packs...)

	return store, nil
}
