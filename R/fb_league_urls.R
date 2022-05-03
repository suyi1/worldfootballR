fb_league_urls <- function (country, gender, season_end_year, tier = "1st") 
{
    main_url <- "https://fbref.com"
    country_abbr <- country
    gender_M_F <- gender
    season_end_year_num <- season_end_year
    comp_tier <- tier
    seasons <- seasons_su
    league_seasons_urls <- seasons %>% dplyr::filter(.data$country %in% 
        country_abbr, .data$gender %in% gender_M_F, .data$season_end_year %in% 
        season_end_year_num, .data$tier %in% comp_tier) %>% dplyr::pull(.data$seasons_urls) %>% 
        unique()
    return(league_seasons_urls)
}
