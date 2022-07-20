class Job {
  String company;
  String logoUrl;
  bool isMark;
  String title;
  String location;
  String time;
  List<String> req;

  Job(this.company, this.logoUrl, this.isMark, this.title, this.location,
      this.time, this.req);

  static List<Job> generateJobs() {
    return [
      Job(
        'Google LLC',
        'assets/images/google_logo.png',
        false,
        'Principle Product Design',
        '417, Marion, New York\nUnited States',
        'Full Time',
        [
          'Creative with an eye for shape and color.',
          'Understand different materials production methods.',
          'Interested in the way people choose and use producct.',
          'How technical, practical and scientific knowledge are required.',
        ],
      ),
      Job(
        'Air BnB',
        'assets/images/airbnb_logo.png',
        true,
        'Senior Merchant',
        '210, Brooklyn, New Yo\nrk United States',
        'Part Time',
        [
          'Active and focus on his product.',
          'Understand different materials production methods.',
          'Identify and know what people need the most.',
          'Give time for the product that the company mostly envy of',
        ],
      ),
    ];
  }
}
