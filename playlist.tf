resource "spotify_playlist" "Queen" {
  name        = "Queen Playlist"
  description = "My playlist is so awesome"
  public      = false

  tracks = [
    data.spotify_track.another_one_bites_the_dust.id,
    data.spotify_track.under_pressure.id,
    data.spotify_track.we_will_rock_you.id,
    data.spotify_track.radio_ga_ga.id
  ]
}

data "spotify_track" "another_one_bites_the_dust" {
    url = "https://open.spotify.com/track/5vdp5UmvTsnMEMESIF2Ym7"
}

data "spotify_track" "under_pressure" {
    url = "https://open.spotify.com/track/2fuCquhmrzHpu5xcA1ci9x"
}

data "spotify_track" "we_will_rock_you" {
    url = "https://open.spotify.com/track/4pbJqGIASGPr0ZpGpnWkDn"
}

data "spotify_track" "radio_ga_ga" {
    url = "https://open.spotify.com/track/1nQRg9q9uwALGzouOX5OyQ"
}

data "spotify_search_track" "rammstein" {
    artist = "Rammstein"
}

resource "spotify_playlist" "Rammstein" {
    name        = "Rammstein Playlist Terraform"
    description = "My second playlist is so awesome!"
    public      = false

    tracks = [data.spotify_search_track.rammstein.tracks[0].id,
    data.spotify_search_track.rammstein.tracks[1].id,
    data.spotify_search_track.rammstein.tracks[2].id,
    data.spotify_search_track.rammstein.tracks[3].id]
}