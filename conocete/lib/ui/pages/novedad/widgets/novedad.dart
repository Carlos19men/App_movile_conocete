class Novedad {
  String titulo;
  String imgUrl;
  String information;

  Novedad(this.titulo, this.imgUrl, this.information);

  //setter and geter
  String get gettitulo {
    return titulo;
  }

  String get img {
    return imgUrl;
  }

  String get informacion {
    return information;
  }

  void setTitulo(String cadena) {
    titulo = cadena;
  }

  void setImg(String cadena) {
    imgUrl = cadena;
  }

  void setInformation(String cadena) {
    information = cadena;
  }
}
