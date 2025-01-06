class Novedad {
  String titulo;
  String imgUrl;
  String information;

  Novedad(this.titulo, this.imgUrl, this.information);

  //setter and geter
  String get Titulo {
    return titulo;
  }

  String get Img {
    return imgUrl;
  }

  String get Information {
    return information;
  }

  void setTitulo(String cadena) {
    this.titulo = cadena;
  }

  void setImg(String cadena) {
    this.imgUrl = cadena;
  }

  void setInformation(String cadena) {
    this.information = cadena;
  }
}
