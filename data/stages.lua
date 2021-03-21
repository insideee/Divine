-- Minlevel and multiplier are MANDATORY
-- Maxlevel is OPTIONAL, but is considered infinite by default
-- Create a stage with minlevel 1 and no maxlevel to disable stages
experienceStages = {
	{
		minlevel = 1,
		maxlevel = 8,
		multiplier = 100
	}, {
		minlevel = 9,
		maxlevel = 20,
		multiplier = 500
	}, {
		minlevel = 21,
		maxlevel = 50,
		multiplier = 500
	}, {
		minlevel = 51,
		maxlevel = 80,
		multiplier = 450
	}, {
		minlevel = 81,
		maxlevel = 105,
		multiplier = 430
	}, {
		minlevel = 106,
		maxlevel = 140,
		multiplier = 410
	}, {
		minlevel = 141,
		maxlevel = 160,
		multiplier = 400
	}, {
		minlevel = 160,
		maxlevel = 200,
		multiplier = 400
	}, {
		minlevel = 201,
		maxlevel = 250,
		multiplier = 400
	}, {
		minlevel = 251,
		maxlevel = 300,
		multiplier = 330
	}, {
		minlevel = 301,
		maxlevel = 400,
		multiplier = 210
	}, {
		minlevel = 401,
		maxlevel = 500,
		multiplier = 120
	}, {
		minlevel = 501,
		maxlevel = 600,
		multiplier = 80
	}, {
		minlevel = 601,
		maxlevel = 650,
		multiplier = 30
	}, {
		minlevel = 651,
		maxlevel = 700,
		multiplier = 20
	}, {
		minlevel = 701,
		maxlevel = 750,
		multiplier = 16
	}, {
		minlevel = 751,
		maxlevel = 3000,
		multiplier = 12
	}

}
skillsStages = {
	{
		minlevel = 10,
		maxlevel = 60,
		multiplier = 35
	}, {
		minlevel = 61,
		maxlevel = 80,
		multiplier = 25
	}, {
		minlevel = 81,
		maxlevel = 110,
		multiplier = 20
	}, {
		minlevel = 111,
		maxlevel = 125,
		multiplier = 5
	}, {
		minlevel = 126,
		multiplier = 4
	}
}

magicLevelStages = {
	{
		minlevel = 0,
		maxlevel = 60,
		multiplier = 25
	}, {
		minlevel = 61,
		maxlevel = 80,
		multiplier = 20
	}, {
		minlevel = 81,
		maxlevel = 100,
		multiplier = 15
	}, {
		minlevel = 101,
		maxlevel = 110,
		multiplier = 10
	}, {
		minlevel = 111,
		maxlevel = 125,
		multiplier = 5
	}, {
		minlevel = 126,
		multiplier = 2
	}
}


--[[ experienceStages = {
	{
		minlevel = 1,
		maxlevel = 8,
		multiplier = 100
	}, {
		minlevel = 9,
		maxlevel = 20,
		multiplier = 300
	}, {
		minlevel = 21,
		maxlevel = 50,
		multiplier = 300
	}, {
		minlevel = 51,
		maxlevel = 80,
		multiplier = 250
	}, {
		minlevel = 81,
		maxlevel = 105,
		multiplier = 230
	}, {
		minlevel = 106,
		maxlevel = 140,
		multiplier = 210
	}, {
		minlevel = 141,
		maxlevel = 160,
		multiplier = 200
	}, {
		minlevel = 160,
		maxlevel = 200,
		multiplier = 200
	}, {
		minlevel = 201,
		maxlevel = 250,
		multiplier = 200
	}, {
		minlevel = 251,
		maxlevel = 300,
		multiplier = 130
	}, {
		minlevel = 301,
		maxlevel = 400,
		multiplier = 110
	}, {
		minlevel = 401,
		maxlevel = 500,
		multiplier = 60
	}, {
		minlevel = 501,
		maxlevel = 600,
		multiplier = 40
	}, {
		minlevel = 601,
		maxlevel = 650,
		multiplier = 15
	}, {
		minlevel = 651,
		maxlevel = 700,
		multiplier = 10
	}, {
		minlevel = 701,
		maxlevel = 750,
		multiplier = 8
	}, {
		minlevel = 751,
		maxlevel = 3000,
		multiplier = 6
	}

} ]]