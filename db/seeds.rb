# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
@user = User.create( name:"admin", address:"Pakistan", email:"admin@gmail.com", role:"admin", password: "admin123", password_confirmation: "admin123",city_id: "1")
# City.create([
#         {name:"Lahore"},
#         {name:"Karachi"},
#         {name:"Faisalabad"},
#         {name:" Rawalpindi"},
#         {name:"Gujranwala"},
#         {name:"Peshawar"},
#         {name:"Multan"},
#         {name:"Saidu Sharif"},
#         {name:"Hyderabad"},
#         {name:"Islamabad"},
#         {name:"Quetta"},
#         {name:"Bahawalpur"},
#         {name:"Sargodha"},
#         {name:"Sialkot"},
#         {name:"Sukkur"},
#         {name:"Larkana"},
#         {name:"Chiniot"},
#         {name:"Shekhupura"},
#         {name:"Jhang"},
#         {name:"Dera Ghazi Khan"},
#         {name:"Gujrat"},
#         {name:"Rahimyar Khan"},
#         {name:"Kasur"},
#         {name:"Mardan"},
#         {name:"Mingaora"},
#         {name:"Nawabshah"},
#         {name:"Sahiwal"},
#         {name:"Mirpur Khas"},
#         {name:"Okara"},
#         {name:"Mandi Burewala"},
#         {name:"Jacobabad"},
#         {name:"Saddiqabad"},
#         {name:"Kohat"},
#         {name:"Muridke"},
#         {name:"Muzaffargarh"},
#         {name:"Khanpur"},
#         {name:"Gojra"},
#         {name:"Mandi Bahauddin"},
#         {name:"Abbottabad"},
#         {name:"Turbat"},
#         {name:"Dadu"},
#         {name:"Bahawalnagar"},
#         {name:"Khuzdar"},
#         {name:"Pakpattan"},
#         {name:"Tando Allahyar"},
#         {name:"Ahmadpur East"},
#         {name:"Vihari"},
#         {name:"Jaranwala"},
#         {name:"New Mirpur"},
#         {name:"Kamalia"},
#         {name:"Kot Addu"},
#         {name:"Nowshera"},
#         {name:"Swabi"},
#         {name:"Khushab"},
#         {name:"Dera Ismail Khan"},
#         {name:"Chaman"},
#         {name:"Charsadda"},
#         {name:"Kandhkot"},
#         {name:"Chishtian"},
#         {name:"Hasilpur"},
#         {name:"Attock Khurd"},
#         {name:"Muzaffarabad"},
#         {name:"Mianwali"},
#         {name:"Jalalpur Jattan"},
#         {name:"Bhakkar"},
#         {name:"Zhob"},
#         {name:"Dipalpur"},
#         {name:"Kharian"},
#         {name:"Mian Channun"},
#         {name:"Bhalwal"},
#         {name:"Jamshoro"},
#         {name:"Pattoki"},
#         {name:"Harunabad"},
#         {name:"Kahror Pakka"},
#         {name:"Toba Tek Singh"},
#         {name:"Samundri"},
#         {name:"Shakargarh"},
#         {name:"Sambrial"},
#         {name:"Shujaabad"},
#         {name:"Hujra Shah Muqim"},
#         {name:"Kabirwala"},
#         {name:"Mansehra"},
#         {name:"Lala Musa"},
#         {name:"Chunian"},
#         {name:"Nankana Sahib"},
#         {name:"Bannu"},
#         {name:"Pasrur"},
#         {name:"Timargara"},
#         {name:"Parachinar"},
#         {name:"Chenab Nagar"},
#         {name:"Gwadar"},
#         {name:"Abdul Hakim"},
#         {name:"Hassan Abdal"},
#         {name:"Tank"},
#         {name:"Hangu"},
#         {name:"Risalpur Cantonment"},
#         {name:"Karak"},
#         {name:"Kundian"},
#         {name:"Umarkot"},
#         {name:"Chitral"},
#         {name:"Dainyor"},
#         {name:"Kulachi"},
#         {name:"Kalat"},
#         {name:"Kotli"},
#         {name:"Gilgit"},
#         {name:"Narowal"},
#         {name:"Khairpur Mir"},
#         {name:"Khanewal"},
#         {name:"Jhelum"},
#         {name:"Haripur"},
#         {name:"Shikarpur"},
#         {name:" Rawala Kot"},
#         {name:"Hafizabad"},
#         {name:"Lodhran"},
#         {name:"Malakand"},
#         {name:"Attock City"},
#         {name:"Batgram"},
#         {name:"Matiari"},
#         {name:"Ghotki"},
#         {name:"Naushahro Firoz"},
#         {name:"Alpurai"},
#         {name:"Bagh"},
#         {name:"Daggar"},
#         {name:"Leiah"},
#         {name:"Tando Muhammad Khan"},
#         {name:"Chakwal"},
#         {name:"Badin"},
#         {name:"Lakki"},
#         {name:"Rajanpur"},
#         {name:"Dera Allahyar"},
#         {name:"Shahdad Kot"},
#         {name:"Pishin"},
#         {name:"Sanghar"},
#         {name:"Upper Dir"},
#         {name:"Thatta"},
#         {name:"Dera Murad Jamali"},
#         {name:"Kohlu"},
#         {name:"Mastung"},
#         {name:"Dasu"},
#         {name:"Athmuqam"},
#         {name:"Loralai"},
#         {name:"Barkhan"},
#         {name:"Musa Khel Bazar"},
#         {name:"Ziarat"},
#         {name:"Gandava"},
#         {name:"Sibi"},
#         {name:"Dera Bugti"},
#         {name:"Eidgah"},
#         {name:"Uthal"},
#         {name:"Khuzdar"},
#         {name:"Chilas"},
#         {name:"Panjgur"},
#         {name:"Gakuch"},
#         {name:"Qila Saifullah"},
#         {name:"Kharan"},
#         {name:"Aliabad"},
#         {name:"Awaran"},
#         {name:"Dalbandin"},
#     ])