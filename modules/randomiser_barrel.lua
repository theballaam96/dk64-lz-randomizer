bonus_map_table = {
	-- [minigame_number] = {minigame_map, {completion array}, {accessibility array}},
	[1] = {10, {1,2,3,4,5}, {5}, ishelm = true},
	[2] = {35, {1}, {1}, ishelm = true},
	[3] = {50, {1,2,3,4,5}, {4}, ishelm = true},
	[4] = {165, {1,2,3,4,5}, {2}, ishelm = true},
	[5] = {201, {2}, {2}, ishelm = true},
	[6] = {202, {1,2,3,4,5}, {3}, ishelm = true},
	[7] = {209, {5}, {5}, ishelm = true},
	[8] = {210, {4}, {4}, ishelm = true},
	[9] = {211, {1,2,3,4,5}, {5}, ishelm = true},
	[10] = {212, {1,2,3,4,5}, {1}, ishelm = true},
	[11] = {3, {1,2,3,4,5}, {3}},
	[12] = {18, {1,2,3,4,5}, {3}},
	[13] = {32, {1,2,3,4,5}, {3}},
	[14] = {65, {1,2,3,4,5}, {2}},
	--[15] = {66, {1,2,3,4,5}, nosource = true, helm_ban = true}, -- Unused MMMaul, Requires Shockwave to beat
	[15] = {67, {1,2,3,4,5}, nosource = true},
	[16] = {68, {1,2,3,4,5}, {3}},
	[17] = {69, {1,2,3,4,5}, {2}},
	[18] = {74, {1,2,3,4,5}, {5}},
	[19] = {75, {1,2,3,4,5}, nosource = true, helm_ban = true}, -- Unused Stash Snatch (Hybrid SSnatch/SSnoop), determined too difficult for Helm
	[20] = {77, {1,2,3,4,5}, {5}},
	[21] = {78, {1,2,4,5}, {5}},
	[22] = {79, {1,2,4,5}, {2}},
	[23] = {96, {1,2,3,4,5}, {4}},
	[24] = {99, {1,2,3,4,5}, {3}},
	[25] = {101, {1,2,3,4,5}, {4}},
	[26] = {102, {1,2,3,4,5}, {3}},
	[27] = {103, {1,2,3,4,5}, {3}},
	[28] = {104, {1,2,3,4,5}, {2}, helm_ban = true},
	[29] = {115, {1,2,3,4,5}, {4}},
	[30] = {116, {1,2,3,4,5}, {3}},
	[31] = {117, {1,2,3,4,5}, {5}},
	[32] = {118, {1,2,3,4,5}, {2}},
	[33] = {119, {1,2,3,4,5}, {4}},
	[34] = {120, {1,2,3,4,5}, nosource = true},
	[35] = {121, {1,2,3,4,5}, {5}},
	[36] = {122, {1,2,3,4,5}, {2}},
	[37] = {123, {1,2,3,4,5}, nosource = true},
	[38] = {124, {1,2,3,4,5}, nosource = true},
	[39] = {125, {1,2,3,4,5}, nosource = true},
	[40] = {126, {1,2,3,4,5}, {1}},
	[41] = {127, {1,2,3,4,5}, nosource = true},
	[42] = {128, {1,2,3,4,5}, nosource = true},
	[43] = {129, {1,2,3,4,5}, {1}, helm_ban = true},
	[44] = {130, {1,2,3,4,5}, {2}, helm_ban = true},
	[45] = {131, {1,2,4,5}, {1}},
	[46] = {132, {1,2,3,4,5}, nosource = true},
	[47] = {133, {1,2,3,4,5}, {2}},
	[48] = {134, {4}, {4}},
	[49] = {135, {1,2,3,4,5}, nosource = true},
	[50] = {136, {1,2,3,4,5}, {3,5}, multibarrel = true, helm_ban = true}, -- Both Castle BBothers
	[51] = {137, {1,2,3,4,5}, nosource = true, helm_ban = true},
	[52] = {138, {1,2,3,4,5}, nosource = true},
	[53] = {139, {1,2,3,4,5}, {5}},
	[54] = {140, {1,2,3,4,5}, {3,5}, multibarrel = true}, -- Both Castle Lobby & Crypt SSeek
	[55] = {141, {1,2,3,4,5}, {1}},
	[56] = {142, {1,2,3,4,5}, {3,4}, multibarrel = true}, -- Both Fungi & Caves Krazy KK
	[57] = {143, {1,2,3,4,5}, nosource = true},
	[58] = {144, {1,2,3,4,5}, {2}},
	[59] = {145, {1,2,3,4,5}, {1}},
	[60] = {146, {1,2,3,4,5}, {2}},
	[61] = {147, {1,2,3,4,5}, nosource = true},
	[62] = {148, {1,2,3,4,5}, {4}},
	[63] = {149, {1,2,3,4,5}, {4}},
	[64] = {150, {1,2,3,4,5}, {2}},
};

function generateBonusAssortment()
	temporary_bonus_map_assortment = {};
	bonus_map_assortment = {};
	bonus_seedSetting = seedAsNumber * 100;
	for i = 1, #bonus_map_table do
		temporary_bonus_map_assortment[i] = i;
	end
	math.randomseed(bonus_seedSetting);
	for i = 1, #bonus_map_table do
		selected_temp_value = randomBetween(1,#temporary_bonus_map_assortment);
		bonus_map_assortment[i] = temporary_bonus_map_assortment[selected_temp_value];
		table.remove(temporary_bonus_map_assortment, selected_temp_value);
	end
end

function getListOfCompliantMinigames(access_array,mode,available_maps_array,bmtable_reference)
	-- Mode = "or"/"and".
	-- If Or, any minigame which can be completed by any kong in array gets listed
	-- If And, any minigam which can be completed by all kongs in array gets listed
	compliantMinigames = {};
	compliance_counter = 0;
	for a = 1, #bonus_map_table do
		--print("");
		--print("Testing for bonus value "..a);
		valid = 0;
		if mode == "or" then
			--print("or path taken");
			for b = 1, #access_array do
				for c = 1, #bonus_map_table[a][2] do
					if access_array[b] == bonus_map_table[a][2][c] then
						valid = 1;
						--print("Set as a temporary valid count");
					end
				end
			end
		elseif mode == "and" then
			--print("and path taken");
			validity_counter = 0;
			for b = 1, #access_array do
				for c = 1, #bonus_map_table[a][2] do
					if access_array[b] == bonus_map_table[a][2][c] then
						validity_counter = validity_counter + 1;
					end
				end
			end
			--print("Validity Counter: "..validity_counter);
			if validity_counter == #access_array then
				valid = 1;
				--print("Set as a temporary valid count");
			end
		end
		in_available_maps_array = 0;
		for b = 1, #bonus_map_table do -- Total Bonus maps
			if available_maps_array[b] ~= nil then
				if a == available_maps_array[b] then
					in_available_maps_array = 1;
				end
			end
		end
		if in_available_maps_array == 0 then
			valid = 0;
		end
		if bonus_map_table[bmtable_reference].ishelm then
			if bonus_map_table[a].helm_ban then
				valid = 0;
			end
		end
		if valid == 1 then
			compliance_counter = compliance_counter + 1;
			compliantMinigames[compliance_counter] = a;
		end
	end
	return compliantMinigames;
end

function generateBonusAssortmentWithLogic()
	temp_available_maps_total = {};
	bonus_map_assortment = {};
	bonus_seedSetting = seedAsNumber * 100;
	for i = 1, # bonus_map_table do
		temp_available_maps_total[i] = i;
	end
	math.randomseed(bonus_seedSetting);
	bonus_map_table_with_source = {};
	bmt_withsource_counter = 0;
	for i = 1, #bonus_map_table do
		if not bonus_map_table[i].nosource then
			bmt_withsource_counter = bmt_withsource_counter + 1;
			bonus_map_table_with_source[bmt_withsource_counter] = i;
		end
	end
	for i = 1, #bonus_map_table_with_source do
		bmt_reference = bonus_map_table_with_source[i];
		entry_kongs = {};
		for j = 1, #bonus_map_table[bmt_reference][3] do
			entry_kongs[j] = bonus_map_table[bmt_reference][3][j];
		end
		if bonus_map_table[bmt_reference].multibarrel then
			minigames_list = getListOfCompliantMinigames(entry_kongs,"and",temp_available_maps_total,bmt_reference);
		else
			minigames_list = getListOfCompliantMinigames(entry_kongs,"or",temp_available_maps_total,bmt_reference);
		end
		selected_minigame = randomBetween(1,#minigames_list);
		bonus_map_assortment[bmt_reference] = minigames_list[selected_minigame];
		for j = 1, #bonus_map_table do
			if temp_available_maps_total[j] == minigames_list[selected_minigame] then
				table.remove(temp_available_maps_total, j);
			end
		end
		--print("");
		--print("PRINTING AVAILABLE MAPS TABLE AFTER "..i);
		--for j = 1, #bonus_map_table do
		--	print(temp_available_maps_total);
		--end
	end
end

generateBonusAssortmentWithLogic();

function testAssortment()
	-- Test if all bonus barrels in the game have an assigned minigame
	bmt_ws_counter = 0;
	for i = 1, #bonus_map_table_with_source do
		if bonus_map_assortment[bonus_map_table_with_source[i]] ~= nil then
			bmt_ws_counter = bmt_ws_counter + 1;
		end
	end
	if bmt_ws_counter == #bonus_map_table_with_source then
		print("ALL BARRELS HAVE MINIGAME: Passed");
	else
		print("ALL BARRELS HAVE MINIGAME: Failed");
		for i = 1, #bonus_map_table_with_source do
			if bonus_map_assortment[bonus_map_table_with_source[i]] == nil then
				print("Failed: "..i);
			end
		end
	end
	
	print("");
	
	-- Test that all minigames assigned are unique
	repeated_table = {};
	repeated_counter = 0;
	for i = 1, #bonus_map_table do
		if bonus_map_assortment[i] ~= nil then
			stored_map = bonus_map_assortment[i];
			for j = 1, #bonus_map_table do
				if i ~= j then
					if bonus_map_assortment[i] == bonus_map_assortment[j] then
						repeated_counter = repeated_counter + 1;
						repeated_table[repeated_counter] = i;
					end
				end
			end
		end
	end
	if #repeated_table == 0 then
		print("ALL MINIGAMES ARE UNIQUE: Passed");
	else
		print("ALL MINIGAMES ARE UNIQUE: Failed");
		for i = 1, #repeated_table do
			print("Failed: "..i);
		end
	end
end

function getBonusDestination(destmap)
	reference = nil;
	for i = 1, #bonus_map_table do
		if bonus_map_table[i][1] == destmap then
			reference = i;
		end
	end
	if reference == nil then
		return destmap;
	else
		value_to_lookup = bonus_map_assortment[reference];
		if value_to_lookup == nil then
			return destmap;
		end
		new_dmap_code = bonus_map_table[value_to_lookup][1];
		return new_dmap_code;
	end
end