--[[
	Script for adding the extensions menu items.
]]--

function onInit()		
	registerMenuItems();		
end

-- Add menu items to the Settings menu, pertaining to the 5e Combat Enhancer extension.
function registerMenuItems() 	
	OptionsManager.registerOption2("CE_STR", false, "option_header_CoreRPGEnhancer", "option_stop_token_rotate", "option_entry_cycler",
		{ labels = "option_val_on", values = "on", baselabel = "option_val_off", baseval = "off", default = "off" })	
	OptionsManager.registerOption2("CE_UOP", false, "option_header_CoreRPGEnhancer", "option_gm_underlay", "option_entry_cycler",
		{ labels = "100%|90%|80%|70%|60%|50%|40%|30%|20% (best)|10%", values = "option_val_100|option_val_90|option_val_80|option_val_70|option_val_60|option_val_50|option_val_40|option_val_30|option_val_20|option_val_10", default = "option_val_20" })															
	OptionsManager.registerOption2("CE_SAAU", false, "option_header_CoreRPGEnhancer", "option_show_ct_active_actor_underlay", "option_entry_cycler",
		{ labels = "option_val_on", values = "on", baselabel = "option_val_off", baseval = "off", default = "off" })
	OptionsManager.registerOption2("CE_SRU", false, "option_header_CoreRPGEnhancer", "option_show_reach_underlay", "option_entry_cycler",
		{ labels = "option_val_on", values = "on", baselabel = "option_val_off", baseval = "off", default = "on" })
	OptionsManager.registerOption2("CE_SFU", false, "option_header_CoreRPGEnhancer", "option_show_faction_underlay", "option_entry_cycler",
		{ labels = "option_val_on", values = "on", baselabel = "option_val_off", baseval = "off", default = "on" })				
	OptionsManager.registerOption2("CE_HFS", false, "option_header_CoreRPGEnhancer", "option_height_font_size", "option_entry_cycler",
		{ labels = "small|medium|large", values = "option_small|option_medium|option_large", default = "option_medium" })												
--[[		
	OptionsManager.registerOption2("TASG", false, "option_header_token", "option_label_TASG", "option_entry_cycler", 
			{ labels = "option_val_scale80|option_val_scale100", values = "80|100", baselabel = "option_val_off", baseval = "off", default = "80" });
			
	OptionsManager.registerOption2("CE_HFS", false, "option_header_CoreRPGEnhancer", "option_height_font_size", "option_entry_cycler",
		{ labels = "small|medium|large", values = "option_small|option_medium|option_large", default = "option_medium" })						
	OptionsManager.registerOption2("CE_UOP", false, "option_header_5ecombatenhancer", "option_gm_underlay", "option_entry_cycler",
		{ labels = "100%|90%|80%|70%|60%|50%|40%|30%|20% (best)|10%", values = "option_val_100|option_val_90|option_val_80|option_val_70|option_val_60|option_val_50|option_val_40|option_val_30|option_val_20|option_val_10", default = "option_val_20" })		
	OptionsManager.registerOption2("CE_TEMN", false, "option_header_5ecombatenhancer", "option_token_effects_max_number", "option_entry_cycler",
		{ labels = "1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20", values = "1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20", default = "20" })	
]]--

	-- Window Resize menu options								
	OptionsManager.registerOption2("IM_NOTE", false, "option_header_CoreRPGEnhancer_window_resizing", "option_notes", "option_entry_cycler",
		{ labels = "default|larger", values = "option_default|option_larger", default = "option_default" })			
	OptionsManager.registerOption2("IM_STORY", false, "option_header_CoreRPGEnhancer_window_resizing", "option_story", "option_entry_cycler",
		{ labels = "default|larger", values = "option_default|option_larger", default = "option_default" })		
	OptionsManager.registerOption2("IM_QUEST", false, "option_header_CoreRPGEnhancer_window_resizing", "option_quests", "option_entry_cycler",
		{ labels = "default|larger", values = "option_default|option_larger", default = "option_default" })			
	OptionsManager.registerOption2("IM_NPC", false, "option_header_CoreRPGEnhancer_window_resizing", "option_npc", "option_entry_cycler",
		{ labels = "default|larger", values = "option_default|option_larger", default = "option_default" })																									
	OptionsManager.registerOption2("IM_ITEM", false, "option_header_CoreRPGEnhancer_window_resizing", "option_items", "option_entry_cycler",
		{ labels = "default|larger", values = "option_default|option_larger", default = "option_default" })	
end