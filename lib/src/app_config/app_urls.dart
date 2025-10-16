class AppUrls {
  static final String baseUrl = "https://iconiccollectors.r-y-x.net";

  /// /{membershipId}
  static final String getAllAddressByMembership =
      "$baseUrl/api/membershipAddress/GetByMember/";
  static final String getDefaultAddress =
      "$baseUrl/api/membershipAddress/GetByMemberDefault/";
  static final String addAddress = "$baseUrl/api/membershipAddress/Add";

  /// PUT -> /$id
  static final String editAddress = "$baseUrl/api/membershipAddress/Edit/";

  /// DELETE -> /api/membershipAddress/delete/{id}/{memberId} (DELETE)
  static final String deleteAddress = "$baseUrl/api/membershipAddress/delete/";

  /// GET
  static final String getAllCountries = "$baseUrl/api/countries/all";
  static final String getAllCities = "$baseUrl/api/cities/GetAll";
  static final String getCitiesByCountry =
      "$baseUrl/api/cities/GetAllByCountry";
  static final String getCityById = "$baseUrl/api/cities/GetById";
}
