class AppUrls {
  static final String baseUrl = "https://iconiccollectors.r-y-x.net";

  /// /{membershipId}
  static final String getAllAddressByMembership =
      "/api/membershipAddress/GetByMember/";
  static final String getDefaultAddress =
      "/api/membershipAddress/GetByMemberDefault/";
  static final String addAddress = "/api/membershipAddress/Add";

  /// PUT -> /$id
  static final String editAddress = "/api/membershipAddress/Edit/";

  /// DELETE -> /api/membershipAddress/delete/{id}/{memberId} (DELETE)
  static final String deleteAddress = "/api/membershipAddress/delete/";

  /// GET
  static final String getAllCountries = "/api/countries/all";
  static final String getAllCities = "/api/cities/GetAll";
  static final String getCitiesByCountry = "/api/cities/GetAllByCountry";
  static final String getCityById = "/api/cities/GetById";
}
