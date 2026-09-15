CREATE TABLE "Me_Gusta_Playlist" (
id_usuario INT,
id_playlist INT
);

ALTER TABLE "Me_Gusta_Playlist"
ADD CONSTRAINT "Me_Gusta_Playlist_PK"
PRIMARY KEY (id_usuario, id_playlist);

ALTER TABLE "Me_Gusta_Playlist"
ADD CONSTRAINT "Me_Gusta_Playlist_FK1"
FOREIGN KEY (id_usuario)
REFERENCES "Usuario" (id_usuario);

ALTER TABLE "Me_Gusta_Playlist"
ADD CONSTRAINT "Me_Gusta_Playlist_FK2"
FOREIGN KEY (id_playlist)
REFERENCES "Playlist" (id_playlist);