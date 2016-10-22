# IN DEPENDENCY ORDER
Photo.delete_all
Song.delete_all
Artist.delete_all

# ADDING ARTISTS

artistCris = Artist.create(name: "Christine and the Queens")
artistLana = Artist.create(name: "Lana del Rey")
artistOsc = Artist.create(name: "Oscar and the Wolf")
artistRag = Artist.create(name: "Rag'n'Bone")

#  ADDING SONGS

songCris1 = Song.create(name: "Tilted", artist: artistCris)
songCris2 = Song.create(name: "iT", artist: artistCris)
songCris3 = Song.create(name: "Starshipper", artist: artistCris)
songLana1 = Song.create(name: "Ride", artist: artistLana)
songLana2 = Song.create(name: "Video Games", artist: artistLana)
songLana3 = Song.create(name: "Ultraviolence", artist: artistLana)
songOsc1 = Song.create(name: "Undress", artist: artistOsc)
songRag1 = Song.create(name: "Human", artist: artistRag)

# ADDING ARTIST photos

photoCris = Photo.create(remote_artist_image_url:"http://res.cloudinary.com/dfc7k24vb/image/upload/v1477140840/SongDB/ChristineAndTheQueens.jpg", artist: artistCris)
photoLana = Photo.create(remote_artist_image_url:"http://res.cloudinary.com/dfc7k24vb/image/upload/v1477140841/SongDB/LanaDelRey.jpg", artist: artistLana)
photoOsc = Photo.create(remote_artist_image_url:"http://res.cloudinary.com/dfc7k24vb/image/upload/v1477140841/SongDB/OscarAndTheWolf.png", artist: artistOsc)
photoRag = Photo.create(remote_artist_image_url:"http://res.cloudinary.com/dfc7k24vb/image/upload/v1477140841/SongDB/RagNBoneMan.jpg", artist: artistRag)
