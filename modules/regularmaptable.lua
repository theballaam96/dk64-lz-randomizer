if settings.dev_replacer == 0 then
	regular_map_table = {
		0x0400,
		0x0600,
		0x0701,
		0x0702,
		0x0705,
		0x0708,
		0x070E,
		0x070F,
		0x0C00,
		0x0D00,
		0x0E00,
		0x7001,
		0x1300,
		0x2203,
		0x1500,
		0x1600,
		0x1700,
		0x1800,
		0x1A00,
		0x1A03,
		0x1A10,
		0x1B00,
		0x1D00,
		0x1E00,
		0x1E01,
		0x1E02,
		0x1E03,
		0x1E04,
		0x1E05,
		0x1E06,
		0x1E07,
		0x1E08,
		0x1E09,
		0x1E0A,
		0x1E0B,
		0x1E13,
		0x1E15,
		0x1F00,
		0x2100,
		0x2202,
		0x2204,
		0x2205,
		0x2206,
		0x2208,
		0x2209,
		0x220A,
		0x220B,
		0x2400,
		0x2500,
		0x2600,
		0x2601,
		0x2602,
		0x2603,
		0x2604,
		0x2605,
		0x2606,
		0x2607,
		0x2611,
		0x2613,
		0x2700,
		0x2900,
		0x2B00,
		0x2B01,
		0x2B02,
		0x2C00,
		0x2D00,
		0x2E00,
		0x2E01,
		0x2F00,
		0x2F01,
		0x3000,
		0x3001,
		0x3002,
		0x3003,
		0x3004,
		0x3005,
		0x3006,
		0x3007,
		0x3008,
		0x3009,
		0x300A,
		0x300B,
		0x300C,
		0x300D,
		0x300E,
		0x300F,
		0x3010,
		0x3017,
		0x3100,
		0x3300,
		0x3400,
		0x3600,
		0x3700,
		0x3800,
		0x3900,
		0x3A00,
		0x3B00,
		0x3C00,
		0x3D00,
		0x3D01,
		0x3E00,
		0x3E01,
		0x3E02,
		0x3E03,
		0x3F00,
		0x4000,
		0x4001,
		0x4002,
		0x4003,
		0x4004,
		0x4600,
		0x4700,
		0x4800,
		0x4801,
		0x4802,
		0x4803,
		0x4804,
		0x4805,
		0x4806,
		0x480E,
		0x480F,
		0x4810,
		0x4811,
		0x4812,
		0x4813,
		0x4814,
		0x481E,
		0x5200,
		0x5400,
		0x5500,
		0x5600,
		0x5700,
		0x5701,
		0x5702,
		0x5704,
		0x5705,
		0x5707,
		0x5708,
		0x5709,
		0x570C,
		0x570D,
		0x570E,
		0x5710,
		0x5714,
		0x5800,
		0x5801,
		0x5900,
		0x5A00,
		0x5B00,
		0x5C00,
		0x5D00,
		0x5E00,
		0x5F00,
		0x6200,
		0x6400,
		0x6900,
		0x6A00,
		0x6C00,
		0x6E00,
		0x7000,
		0x7100,
		0x7101,
		0x7102,
		0x7200,
		0x7201,
		0x9700,
		0x9702,
		0x9704,
		0xA300,
		0xA400,
		0xA600,
		0xA700,
		0xA800,
		0xA900,
		0xA901,
		0xAD00,
		0xAD01,
		0xAE00,
		0xAE01,
		0xAF00,
		0xAF01,
		0xB200,
		0xB201,
		0xB300,
		0xB700,
		0xB703,
		0xB704,
		0xB900,
		0xBA00,
		0xBB00,
		0xBC00,
		0xBD00,
		0xC100,
		0xC101,
		0xC200,
		0xC201,
		0xC300,
		0xC800,
		0x570F,
		0x570B,
		0x1A08,
	};
elseif settings.dev_replacer == 1 then
	regular_map_table = {
		0x0400,
		0x0600,
		0x0701,
		0x0702,
		0x0705,
		0x0708,
		0x070E,
		0x0C00,
		0x0D00,
		0x0E00,
		0x7001,
		0x1300,
		0x2203,
		0x1500,
		0x1600,
		0x1700,
		0x1800,
		0x1A00,
		0x1A03,
		0x1B00,
		0x1D00,
		0x1E01,
		0x1E02,
		0x1E03,
		0x1E04,
		0x1E05,
		0x1E06,
		0x1E07,
		0x1E08,
		0x1E09,
		0x1E0A,
		0x1E0B,
		0x1E15,
		0x1F00,
		0x2100,
		0x2202,
		0x2204,
		0x2205,
		0x2206,
		0x2208,
		0x2209,
		0x220A,
		0x220B,
		0x2400,
		0x2500,
		0x2603,
		0x2604,
		0x2605,
		0x2606,
		0x2607,
		0x2613,
		0x2700,
		0x2900,
		0x2B00,
		0x2B01,
		0x2B02,
		0x2C00,
		0x2D00,
		0x2E00,
		0x2E01,
		0x2F00,
		0x2F01,
		0x3001,
		0x3002,
		0x3003,
		0x3004,
		0x3005,
		0x3006,
		0x3007,
		0x3008,
		0x3009,
		0x300A,
		0x300B,
		0x300C,
		0x300D,
		0x300E,
		0x300F,
		0x3010,
		0x3017,
		0x3100,
		0x3300,
		0x3400,
		0x3600,
		0x3700,
		0x3800,
		0x3900,
		0x3A00,
		0x3B00,
		0x3C00,
		0x3D00,
		0x3D01,
		0x3E00,
		0x3E01,
		0x3E02,
		0x3E03,
		0x3F00,
		0x4000,
		0x4001,
		0x4002,
		0x4003,
		0x4004,
		0x4600,
		0x4700,
		0x4801,
		0x4802,
		0x4803,
		0x4804,
		0x4805,
		0x480E,
		0x480F,
		0x4810,
		0x4811,
		0x4812,
		0x4813,
		0x4814,
		0x481E,
		0x5200,
		0x5400,
		0x5500,
		0x5600,
		0x5701,
		0x5702,
		0x5704,
		0x5705,
		0x5707,
		0x5708,
		0x5709,
		0x570C,
		0x570D,
		0x570E,
		0x5710,
		0x5714,
		0x5800,
		0x5801,
		0x5900,
		0x5A00,
		0x5B00,
		0x5C00,
		0x5D00,
		0x5E00,
		0x5F00,
		0x6200,
		0x6400,
		0x6900,
		0x6A00,
		0x6C00,
		0x6E00,
		0x7000,
		0x7100,
		0x7102,
		0x7200,
		0x7201,
		0x9700,
		0x9702,
		0x9704,
		0xA300,
		0xA400,
		0xA600,
		0xA700,
		0xA800,
		0xA900,
		0xAD00,
		0xAE00,
		0xAF00,
		0xB200,
		0xB300,
		0xB700,
		0xB703,
		0xB704,
		0xB900,
		0xBA00,
		0xBB00,
		0xBC00,
		0xBD00,
		0xC100,
		0xC101,
		0xC200,
		0xC300,
		0xC800,
		0x570F,
		0x570B,
	}
end