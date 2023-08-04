class X {
  useCDN(String url, int width) {
    return '${url}?x-oss-process=image/resize,w_${width * 2}';
  }
}