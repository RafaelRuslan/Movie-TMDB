//
//  L10n.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 12.09.25.
//

struct L10n {
    
    //Tabbar
    static func tabHome(_ language: AppLanguage) -> String {
        switch language {
        case .en: return "Home"
        case .az: return "Əsas səhifə"
        case .fr: return "Accueil"
        case .de: return "Startseite"
        case .ar: return "الرئيسية"
        }
    }
    
    static func tabProfile(_ language: AppLanguage) -> String {
        switch language {
        case .en: return "Profile"
        case .az: return "Profil"
        case .fr: return "Profil"
        case .de: return "Profil"
        case .ar: return "الملف الشخصي"
        }
    }
    
    static func languageTitle(_ language: AppLanguage) -> String {
        switch language {
        case .en: return "Language"
        case .az: return "Dil"
        case .fr: return "Langue"
        case .de: return "Sprache"
        case .ar: return "اللغة"
        }
    }
    static func tabMyList(_ language: AppLanguage) -> String{
        switch language{
        case .en: return "My List"
        case .az: return "Siyahım"
        case .fr: return "Ma liste"
        case .de: return "Meine Liste"
        case .ar: return "قائمتي"
        }
    }
    static func tabDownload(_ language: AppLanguage) -> String{
        switch language{
        case .en: return "Download"
        case .az: return "Endirmələr"
        case .fr: return "Téléchargements"
        case .de: return "Downloads"
        case .ar: return "التنزيلات"
        }
    }
    static func tabExplore(_ language: AppLanguage) -> String{
        switch language{
        case .en: return "Explore"
        case .az: return "Kəşf et"
        case .fr: return "Explorer"
        case .de: return "Entdecken"
        case .ar: return "استكشاف"
        }
    }
    //ProfilTabbar main menu
    static func profileTitle(_ key: ProfileKey, _ language: AppLanguage) -> String {
        switch key {
        case .editProfile:
            switch language {
            case .en: return "Edit Profile"
            case .az: return "Profili redaktə et"
            case .fr: return "Modifier le profil"
            case .de: return "Profil bearbeiten"
            case .ar: return "تعديل الملف الشخصي"
            }
        case .notification:
            switch language {
            case .en: return "Notifications"
            case .az: return "Bildirişlər"
            case .fr: return "Notifications"
            case .de: return "Benachrichtigungen"
            case .ar: return "الإشعارات"
            }
        case .download:
            switch language {
            case .en: return "Downloads"
            case .az: return "Endirmələr"
            case .fr: return "Téléchargements"
            case .de: return "Downloads"
            case .ar: return "التنزيلات"
            }
        case .security:
            switch language {
            case .en: return "Security"
            case .az: return "Təhlükəsizlik"
            case .fr: return "Sécurité"
            case .de: return "Sicherheit"
            case .ar: return "الأمان"
            }
        case .language:
            switch language {
            case .en: return "Language"
            case .az: return "Dil"
            case .fr: return "Langue"
            case .de: return "Sprache"
            case .ar: return "اللغة"
            }
        case .helpCenter:
            switch language {
            case .en: return "Help Center"
            case .az: return "Kömək Mərkəzi"
            case .fr: return "Centre d’aide"
            case .de: return "Hilfezentrum"
            case .ar: return "مركز المساعدة"
            }
        case .privacyPolicy:
            switch language {
            case .en: return "Privacy Policy"
            case .az: return "Məxfilik siyasəti"
            case .fr: return "Politique de confidentialité"
            case .de: return "Datenschutzrichtlinie"
            case .ar: return "سياسة الخصوصية"
            }
        }
    }
    //Edit Profile
    static func darkMode(_ language: AppLanguage) -> String {
        switch language {
        case .en: return "Dark Mode"
        case .az: return "Qaranlıq rejim"
        case .fr: return "Mode sombre"
        case .de: return "Dunkelmodus"
        case .ar: return "الوضع الداكن"
        }
    }
    
    static func editProfileUpdate(_ language: AppLanguage) -> String{
        switch language{
        case .en: return "Update"
        case .az: return "Yenilə"
        case .fr: return "Mettre à jour"
        case .de: return "Aktualisieren"
        case .ar: return "تحديث"
        }
    }
    static func editProfileSelectGender(_ language: AppLanguage) -> String{
        switch language{
        case .en: return "Select Gender"
        case .az: return "Cinsi seçin"
        case .fr: return "Sélectionner le sexe"
        case .de: return "Geschlecht auswählen"
        case .ar: return "اختر الجنس"
        }
    }
    static func editProfileSelectCountry(_ language: AppLanguage) -> String {
        switch language {
        case .en: return "Select Country"
        case .az: return "Ölkəni seçin"
        case .fr: return "Sélectionner le pays"
        case .de: return "Land auswählen"
        case .ar: return "اختر الدولة"
        }
    }
    static func editProfileAlertSuccess(_ language: AppLanguage) -> String {
        switch language {
        case .en: return "Success"
        case .az: return "Uğurlu"
        case .fr: return "Succès"
        case .de: return "Erfolg"
        case .ar: return "نجاح"
        }
    }
    
    static func editProfileAlertMessageOk(_ language: AppLanguage) -> String {
        switch language {
        case .en: return "OK"
        case .az: return "OK"
        case .fr: return "OK"
        case .de: return "OK"
        case .ar: return "موافق"
        }
    }
    static func editProfileProfileSaved(_ language: AppLanguage) -> String {
        switch language {
        case .en: return "Your profile has been saved successfully."
        case .az: return "Profiliniz uğurla yadda saxlanıldı."
        case .fr: return "Votre profil a été enregistré avec succès."
        case .de: return "Ihr Profil wurde erfolgreich gespeichert."
        case .ar: return "تم حفظ ملفك الشخصي بنجاح."
        }
    }
    static func editProfileEnterFullname(_ language: AppLanguage) -> String {
        switch language {
        case .en: return "Enter Fullname"
        case .az: return "Tam adı daxil edin"
        case .fr: return "Entrez le nom complet"
        case .de: return "Vollständigen Namen eingeben"
        case .ar: return "أدخل الاسم الكامل"
        }
    }
    
    static func editProfileEnterFirstname(_ language: AppLanguage) -> String {
        switch language {
        case .en: return "Enter Firstname"
        case .az: return "Adınızı daxil edin"
        case .fr: return "Entrez le prénom"
        case .de: return "Vornamen eingeben"
        case .ar: return "أدخل الاسم الأول"
        }
    }
    
    static func editProfileEnterEmail(_ language: AppLanguage) -> String {
        switch language {
        case .en: return "Enter Email"
        case .az: return "E-poçtunuzu daxil edin"
        case .fr: return "Entrez l'email"
        case .de: return "E-Mail eingeben"
        case .ar: return "أدخل البريد الإلكتروني"
        }
    }
    static func editProfilePhoneNumber(_ language: AppLanguage) -> String {
        switch language {
        case .en: return "Phone Number"
        case .az: return "Telefon nömrəsi"
        case .fr: return "Numéro de téléphone"
        case .de: return "Telefonnummer"
        case .ar: return "رقم الهاتف"
        }
    }
    static func editProfileEditProfile(_ language: AppLanguage) -> String {
        switch language {
        case .en: return "Edit Profile"
        case .az: return "Profili redaktə et"
        case .fr: return "Modifier le profil"
        case .de: return "Profil bearbeiten"
        case .ar: return "تعديل الملف الشخصي"
        }
    }
    
    //Notifications
    
    static func newArrival(_ language: AppLanguage) -> String {
        switch language {
        case .en: return "New Arrival"
        case .az: return "Yeni gələn"
        case .fr: return "Nouvel arrivage"
        case .de: return "Neuankömmling"
        case .ar: return "وصول جديد"
        }
    }
    
    static func newServiceAvailable(_ language: AppLanguage) -> String {
        switch language {
        case .en: return "New Service Available"
        case .az: return "Yeni xidmət mövcuddur"
        case .fr: return "Nouveau service disponible"
        case .de: return "Neuer Service verfügbar"
        case .ar: return "خدمة جديدة متاحة"
        }
    }
    
    static func newReleaseMovie(_ language: AppLanguage) -> String {
        switch language {
        case .en: return "New Release Movie"
        case .az: return "Yeni çıxan film"
        case .fr: return "Nouveau film sorti"
        case .de: return "Neuer Filmveröffentlichung"
        case .ar: return "إصدار فيلم جديد"
        }
    }
    
    static func appUpdates(_ language: AppLanguage) -> String {
        switch language {
        case .en: return "App Updates"
        case .az: return "Tətbiq yeniləmələri"
        case .fr: return "Mises à jour de l'application"
        case .de: return "App-Aktualisierungen"
        case .ar: return "تحديثات التطبيق"
        }
    }
    
    static func subscription(_ language: AppLanguage) -> String {
        switch language {
        case .en: return "Subscription"
        case .az: return "Abunəlik"
        case .fr: return "Abonnement"
        case .de: return "Abonnement"
        case .ar: return "الاشتراك"
        }
    }
    
    static func generalNotification(_ language: AppLanguage) -> String {
        switch language {
        case .en: return "General Notification"
        case .az: return "Ümumi bildiriş"
        case .fr: return "Notification générale"
        case .de: return "Allgemeine Benachrichtigung"
        case .ar: return "إشعار عام"
        }
    }
    
    //Contact US
    
    static func customizeService(_ language: AppLanguage) -> String {
        switch language {
        case .en: return "Customize Service"
        case .az: return "Xidməti fərdiləşdir"
        case .fr: return "Personnaliser le service"
        case .de: return "Dienst anpassen"
        case .ar: return "تخصيص الخدمة"
        }
    }
    
    static func whatsapp(_ language: AppLanguage) -> String {
        switch language {
        case .en: return "WhatsApp"
        case .az: return "WhatsApp"
        case .fr: return "WhatsApp"
        case .de: return "WhatsApp"
        case .ar: return "واتساب"
        }
    }
    
    static func x(_ language: AppLanguage) -> String {
        switch language {
        case .en: return "X"
        case .az: return "X"
        case .fr: return "X"
        case .de: return "X"
        case .ar: return "إكس"
        }
    }
    
    static func linkedin(_ language: AppLanguage) -> String {
        switch language {
        case .en: return "LinkedIn"
        case .az: return "LinkedIn"
        case .fr: return "LinkedIn"
        case .de: return "LinkedIn"
        case .ar: return "لينكدإن"
        }
    }
    
    static func instagram(_ language: AppLanguage) -> String {
        switch language {
        case .en: return "Instagram"
        case .az: return "Instagram"
        case .fr: return "Instagram"
        case .de: return "Instagram"
        case .ar: return "إنستغرام"
        }
    }
    
    static func reddit(_ language: AppLanguage) -> String {
        switch language {
        case .en: return "Reddit"
        case .az: return "Reddit"
        case .fr: return "Reddit"
        case .de: return "Reddit"
        case .ar: return "ريديت"
        }
    }
    static func facebook(_ language: AppLanguage) -> String {
        switch language {
        case .en: return "Facebook"
        case .az: return "Facebook"
        case .fr: return "Facebook"
        case .de: return "Facebook"
        case .ar: return "فيسبوك"
        }
    }
    static func toolbarContactUS(_ language: AppLanguage) -> String{
        switch language{
        case .en: return "Contact Us"
        case .az: return "Bizimlə əlaqə"
        case .fr: return "Contactez-nous"
        case .de: return "Kontaktieren Sie uns"
        case .ar: return "اتصل بنا"
        }
    }
    static func HelpCenter(_ language: AppLanguage) -> String{
        switch language{
        case .en: return "Help Center"
        case .az: return "Kömək Mərkəzi"
        case .fr: return "Centre d'aide"
        case .de: return "Hilfezentrum"
        case .ar: return "مركز المساعدة"
        }
    }
    
    // FAQ
    
    static func question1(_ language: AppLanguage) -> String {
        switch language {
        case .en: return "What is this app about?"
        case .az: return "Bu tətbiq nə haqqındadır?"
        case .fr: return "De quoi s'agit-il dans cette application ?"
        case .de: return "Worum geht es in dieser App?"
        case .ar: return "عن ماذا يدور هذا التطبيق؟"
        }
    }
    
    static func answer1(_ language: AppLanguage) -> String {
        switch language {
        case .en:
            return """
                    This app is designed to help users easily browse, search, and manage movies from The Movie Database (TMDb).
                    You can discover popular, upcoming, and now playing movies, as well as check detailed information like trailers, ratings, and reviews.
                    """
        case .az:
            return """
                    Bu tətbiq istifadəçilərə The Movie Database (TMDb) film bazasında filmləri asanlıqla gəzməyə, axtarmağa və idarə etməyə kömək etmək üçün hazırlanmışdır.
                    Siz məşhur, tez çıxacaq və hazırda nümayişdə olan filmləri kəşf edə, həmçinin treylerlər, reytinqlər və rəylər kimi ətraflı məlumatları yoxlaya bilərsiniz.
                    """
        case .fr:
            return """
                    Cette application est conçue pour aider les utilisateurs à parcourir, rechercher et gérer facilement des films depuis The Movie Database (TMDb).
                    Vous pouvez découvrir les films populaires, à venir et actuellement à l'affiche, ainsi que consulter des informations détaillées telles que les bandes-annonces, les notes et les critiques.
                    """
        case .de:
            return """
                    Diese App wurde entwickelt, um Benutzern das einfache Durchsuchen, Suchen und Verwalten von Filmen aus der The Movie Database (TMDb) zu ermöglichen.
                    Sie können beliebte, kommende und derzeit laufende Filme entdecken sowie detaillierte Informationen wie Trailer, Bewertungen und Rezensionen einsehen.
                    """
        case .ar:
            return """
                    تم تصميم هذا التطبيق لمساعدة المستخدمين على تصفح والبحث وإدارة الأفلام من قاعدة بيانات الأفلام (TMDb) بسهولة.
                    يمكنك اكتشاف الأفلام الشهيرة والقادمة والمعروضة حاليًا، وكذلك التحقق من المعلومات التفصيلية مثل المقاطع الدعائية والتقييمات والمراجعات.
                    """
        }
    }
    
    static func question2(_ language: AppLanguage) -> String {
        switch language {
        case .en: return "Is the app free?"
        case .az: return "Tətbiq pulsuzdur?"
        case .fr: return "L'application est-elle gratuite ?"
        case .de: return "Ist die App kostenlos?"
        case .ar: return "هل التطبيق مجاني؟"
        }
    }
    
    static func answer2(_ language: AppLanguage) -> String {
        switch language {
        case .en:
            return """
                    Yes, the app is completely free to use. However, please note that the data is powered by TMDb,
                    and you will need an internet connection to fetch the latest movies and details.
                    """
        case .az:
            return """
                    Bəli, tətbiqdən tamamilə pulsuz istifadə edə bilərsiniz. Lakin unutmayın ki, məlumatlar TMDb tərəfindən təmin olunur
                    və ən son filmləri və məlumatları əldə etmək üçün internet bağlantısı tələb olunur.
                    """
        case .fr:
            return """
                    Oui, l'application est totalement gratuite. Cependant, veuillez noter que les données sont fournies par TMDb
                    et qu'une connexion Internet est nécessaire pour récupérer les derniers films et détails.
                    """
        case .de:
            return """
                    Ja, die App ist völlig kostenlos nutzbar. Bitte beachten Sie jedoch, dass die Daten von TMDb bereitgestellt werden
                    und eine Internetverbindung erforderlich ist, um die neuesten Filme und Details abzurufen.
                    """
        case .ar:
            return """
                    نعم، التطبيق مجاني تمامًا للاستخدام. ومع ذلك، يرجى ملاحظة أن البيانات مقدمة من TMDb،
                    وستحتاج إلى اتصال بالإنترنت لجلب أحدث الأفلام والتفاصيل.
                    """
        }
    }
    
    static func question3(_ language: AppLanguage) -> String {
        switch language {
        case .en: return "How can I reset my password?"
        case .az: return "Şifrənizi necə sıfırlaya bilərəm?"
        case .fr: return "Comment puis-je réinitialiser mon mot de passe ?"
        case .de: return "Wie kann ich mein Passwort zurücksetzen?"
        case .ar: return "كيف يمكنني إعادة تعيين كلمة المرور الخاصة بي؟"
        }
    }
    
    static func answer3(_ language: AppLanguage) -> String {
        switch language {
        case .en:
            return """
                    To reset your password:
                    1. Go to the **Settings** page.
                    2. Tap on **Account** > **Change Password**.
                    3. Enter your current password and your new password.
                    
                    Make sure your new password is at least 8 characters long and contains numbers or special characters for better security.
                    """
        case .az:
            return """
                    Şifrənizi sıfırlamaq üçün:
                    1. **Ayarlar** səhifəsinə daxil olun.
                    2. **Hesab** > **Şifrəni dəyişdir** seçiminə toxunun.
                    3. Cari şifrənizi və yeni şifrənizi daxil edin.
                    
                    Yeni şifrənizin ən azı 8 simvol uzunluğunda və daha yaxşı təhlükəsizlik üçün rəqəmlər və ya xüsusi simvollar ehtiva etməsinə əmin olun.
                    """
        case .fr:
            return """
                    Pour réinitialiser votre mot de passe :
                    1. Allez à la page **Paramètres**.
                    2. Appuyez sur **Compte** > **Changer le mot de passe**.
                    3. Entrez votre mot de passe actuel et votre nouveau mot de passe.
                    
                    Assurez-vous que votre nouveau mot de passe comporte au moins 8 caractères et contient des chiffres ou des caractères spéciaux pour une meilleure sécurité.
                    """
        case .de:
            return """
                    Um Ihr Passwort zurückzusetzen:
                    1. Gehen Sie zur **Einstellungen**-Seite.
                    2. Tippen Sie auf **Konto** > **Passwort ändern**.
                    3. Geben Sie Ihr aktuelles Passwort und Ihr neues Passwort ein.
                    
                    Stellen Sie sicher, dass Ihr neues Passwort mindestens 8 Zeichen lang ist und Zahlen oder Sonderzeichen für bessere Sicherheit enthält.
                    """
        case .ar:
            return """
                    لإعادة تعيين كلمة المرور الخاصة بك:
                    1. اذهب إلى صفحة **الإعدادات**.
                    2. اضغط على **الحساب** > **تغيير كلمة المرور**.
                    3. أدخل كلمة المرور الحالية وكلمة المرور الجديدة.
                    
                    تأكد من أن كلمة المرور الجديدة تتكون من 8 أحرف على الأقل وتحتوي على أرقام أو رموز خاصة لمزيد من الأمان.
                    """
        }
    }
    
    static func question4(_ language: AppLanguage) -> String {
        switch language {
        case .en: return "How do I delete my account?"
        case .az: return "Hesabımı necə silə bilərəm?"
        case .fr: return "Comment puis-je supprimer mon compte ?"
        case .de: return "Wie lösche ich mein Konto?"
        case .ar: return "كيف يمكنني حذف حسابي؟"
        }
    }
    
    static func answer4(_ language: AppLanguage) -> String {
        switch language {
        case .en:
            return """
                    We're sorry to see you go! To delete your account, please reach out to our support team via the Help section.
                    Keep in mind that deleting your account is permanent and cannot be undone.
                    """
        case .az:
            return """
                    Gedəcəyiniz üçün təəssüf edirik! Hesabınızı silmək üçün, zəhmət olmasa Yardım bölməsi vasitəsilə dəstək komandamızla əlaqə saxlayın.
                    Unutmayın ki, hesabı silmək daimi olub geri qaytarıla bilməz.
                    """
        case .fr:
            return """
                    Nous sommes désolés de vous voir partir ! Pour supprimer votre compte, veuillez contacter notre équipe de support via la section Aide.
                    Gardez à l'esprit que la suppression de votre compte est définitive et irréversible.
                    """
        case .de:
            return """
                    Es tut uns leid, dass Sie gehen! Um Ihr Konto zu löschen, wenden Sie sich bitte über den Hilfebereich an unser Support-Team.
                    Bitte beachten Sie, dass das Löschen Ihres Kontos dauerhaft ist und nicht rückgängig gemacht werden kann.
                    """
        case .ar:
            return """
                    نحن آسفون لرؤيتك تغادر! لحذف حسابك، يرجى التواصل مع فريق الدعم الخاص بنا عبر قسم المساعدة.
                    تذكر أن حذف حسابك دائم ولا يمكن التراجع عنه.
                    """
        }
    }
    
    static func question5(_ language: AppLanguage) -> String {
        switch language {
        case .en: return "How often are movies updated?"
        case .az: return "Filmlər nə qədər tez-tez yenilənir?"
        case .fr: return "À quelle fréquence les films sont-ils mis à jour ?"
        case .de: return "Wie oft werden Filme aktualisiert?"
        case .ar: return "كم مرة يتم تحديث الأفلام؟"
        }
    }
    
    static func answer5(_ language: AppLanguage) -> String {
        switch language {
        case .en:
            return """
                    Movie data is updated in real-time from TMDb. This means you'll always have access to the most recent information
                    about upcoming releases, trailers, and ratings as soon as they are available.
                    """
        case .az:
            return """
                    Film məlumatları TMDb-dən real vaxtda yenilənir. Bu o deməkdir ki, siz həmişə gələcək çıxacaq filmlər, treylerlər və reytinqlər haqqında ən son məlumatlara dərhal çıxış əldə edəcəksiniz.
                    """
        case .fr:
            return """
                    Les données des films sont mises à jour en temps réel depuis TMDb. Cela signifie que vous aurez toujours accès aux informations les plus récentes
                    sur les sorties à venir, les bandes-annonces et les évaluations dès qu'elles sont disponibles.
                    """
        case .de:
            return """
                    Filmdaten werden in Echtzeit von TMDb aktualisiert. Das bedeutet, dass Sie immer Zugriff auf die neuesten Informationen
                    über kommende Veröffentlichungen, Trailer und Bewertungen haben, sobald diese verfügbar sind.
                    """
        case .ar:
            return """
                    يتم تحديث بيانات الأفلام في الوقت الفعلي من TMDb. هذا يعني أنك ستتمكن دائمًا من الوصول إلى أحدث المعلومات
                    حول الإصدارات القادمة والمقاطع الدعائية والتقييمات بمجرد توفرها.
                    """
        }
    }
    
    static func question6(_ language: AppLanguage) -> String {
        switch language {
        case .en: return "Can I use the app offline?"
        case .az: return "Tətbiqi offline istifadə edə bilərəmmi?"
        case .fr: return "Puis-je utiliser l'application hors ligne ?"
        case .de: return "Kann ich die App offline nutzen?"
        case .ar: return "هل يمكنني استخدام التطبيق بدون اتصال بالإنترنت؟"
        }
    }
    
    static func answer6(_ language: AppLanguage) -> String {
        switch language {
        case .en:
            return """
                    Some parts of the app work offline (like your saved or favorited movies).
                    However, browsing and fetching new movies requires an active internet connection.
                    """
        case .az:
            return """
                    Tətbiqin bəzi hissələri offline işləyir (məsələn, saxlanmış və ya favori filmləriniz).
                    Lakin yeni filmləri axtarmaq və baxmaq üçün aktiv internet bağlantısı tələb olunur.
                    """
        case .fr:
            return """
                    Certaines parties de l'application fonctionnent hors ligne (comme vos films enregistrés ou favoris).
                    Cependant, naviguer et récupérer de nouveaux films nécessite une connexion Internet active.
                    """
        case .de:
            return """
                    Einige Teile der App funktionieren offline (wie Ihre gespeicherten oder favorisierten Filme).
                    Das Durchsuchen und Abrufen neuer Filme erfordert jedoch eine aktive Internetverbindung.
                    """
        case .ar:
            return """
                    بعض أجزاء التطبيق تعمل بدون اتصال بالإنترنت (مثل الأفلام المحفوظة أو المفضلة لديك).
                    ومع ذلك، فإن تصفح وجلب الأفلام الجديدة يتطلب اتصالاً بالإنترنت نشطًا.
                    """
        }
    }
    
    static func question7(_ language: AppLanguage) -> String {
        switch language {
        case .en: return "Why is the trailer not playing?"
        case .az: return "Treyler niyə oynanmır?"
        case .fr: return "Pourquoi la bande-annonce ne se lit-elle pas ?"
        case .de: return "Warum wird der Trailer nicht abgespielt?"
        case .ar: return "لماذا لا يعمل المقطع الدعائي؟"
        }
    }
    
    static func answer7(_ language: AppLanguage) -> String {
        switch language {
        case .en:
            return """
                    Trailers are streamed directly from YouTube. If a trailer doesn't play, it might be due to region restrictions
                    or network issues. Please make sure you have a stable internet connection.
                    """
        case .az:
            return """
                    Treylerlər birbaşa YouTube-dan yayımlanır. Treyler oynanmırsa, bu bölgə məhdudiyyətləri və ya şəbəkə problemlərinə görə ola bilər.
                    Zəhmət olmasa, stabil internet bağlantınızın olduğuna əmin olun.
                    """
        case .fr:
            return """
                    Les bandes-annonces sont diffusées directement depuis YouTube. Si une bande-annonce ne se lit pas, cela peut être dû à des restrictions régionales
                    ou à des problèmes de réseau. Veuillez vous assurer que vous disposez d'une connexion Internet stable.
                    """
        case .de:
            return """
                    Trailer werden direkt von YouTube gestreamt. Wenn ein Trailer nicht abgespielt wird, kann dies an Regionsbeschränkungen
                    oder Netzwerkproblemen liegen. Bitte stellen Sie sicher, dass Sie eine stabile Internetverbindung haben.
                    """
        case .ar:
            return """
                    يتم بث المقاطع الدعائية مباشرة من YouTube. إذا لم يعمل المقطع الدعائي، فقد يكون ذلك بسبب قيود المنطقة
                    أو مشاكل في الشبكة. يرجى التأكد من أن لديك اتصال إنترنت مستقر.
                    """
        }
    }
    
    static func question8(_ language: AppLanguage) -> String {
        switch language {
        case .en: return "Can I download movies for offline viewing?"
        case .az: return "Filmləri offline izləmək üçün yükləyə bilərəmmi?"
        case .fr: return "Puis-je télécharger des films pour les regarder hors ligne ?"
        case .de: return "Kann ich Filme für die Offline-Anzeige herunterladen?"
        case .ar: return "هل يمكنني تنزيل الأفلام للمشاهدة بدون اتصال بالإنترنت؟"
        }
    }
    
    static func answer8(_ language: AppLanguage) -> String {
        switch language {
        case .en:
            return """
                    At the moment, downloading movies is not supported. The app is meant for browsing and discovering films.
                    For offline viewing, please check the official streaming services that host the movie.
                    """
        case .az:
            return """
                    Hal-hazırda filmlərin yüklənməsi dəstəklənmir. Tətbiq filmləri gəzmək və kəşf etmək üçün nəzərdə tutulub.
                    Offline izləmək üçün, filmi yerləşdirən rəsmi yayımlama xidmətlərinə baxın.
                    """
        case .fr:
            return """
                    Pour le moment, le téléchargement de films n'est pas pris en charge. L'application est destinée à parcourir et découvrir des films.
                    Pour regarder hors ligne, veuillez consulter les services de streaming officiels qui hébergent le film.
                    """
        case .de:
            return """
                    Derzeit wird das Herunterladen von Filmen nicht unterstützt. Die App dient zum Durchsuchen und Entdecken von Filmen.
                    Für das Offline-Ansehen prüfen Sie bitte die offiziellen Streaming-Dienste, die den Film anbieten.
                    """
        case .ar:
            return """
                    في الوقت الحالي، لا يتم دعم تنزيل الأفلام. التطبيق مخصص لتصفح واكتشاف الأفلام.
                    للمشاهدة بدون اتصال بالإنترنت، يرجى التحقق من خدمات البث الرسمية التي تستضيف الفيلم.
                    """
        }
    }
    
    //FAQ scroll
    
    static func general(_ language: AppLanguage) -> String {
        switch language {
        case .en: return "General"
        case .az: return "Ümumi"
        case .fr: return "Général"
        case .de: return "Allgemein"
        case .ar: return "عام"
        }
    }
    static func account(_ language: AppLanguage) -> String{
        switch language {
        case .en: return "Account"
        case .az: return "Hesab"
        case .fr: return "Compte"
        case .de: return "Konto"
        case .ar: return "الحساب"
        }
    }
    static func service(_ language: AppLanguage) -> String{
        switch language {
        case .en: return "Service"
        case .az: return "Xidmət"
        case .fr: return "Service"
        case .de: return "Dienst"
        case .ar: return "الخدمة"
        }
    }
    static func video(_ language: AppLanguage) -> String{
        switch language {
        case .en: return "Video"
        case .az: return "Video"
        case .fr: return "Vidéo"
        case .de: return "Video"
        case .ar: return "فيديو"
        }
    }
    static func FAQ(_ language: AppLanguage) -> String {
        switch language {
        case .en: return "FAQ"
        case .az: return "Tez-tez verilən suallar"
        case .fr: return "FAQ"
        case .de: return "FAQ"
        case .ar: return "الأسئلة الشائعة"
        }
    }
    static func contactUSScroll(_ language: AppLanguage) -> String{
        switch language {
        case .en: return "Contact Us"
        case .az: return "Bizimlə əlaqə"
        case .fr: return "Contactez-nous"
        case .de: return "Kontakt"
        case .ar: return "اتصل بنا"
        }
    }
    
    static func notificationToolbar(_ language: AppLanguage) -> String {
        switch language {
        case .en: return "Notification"
        case .az: return "Bildiriş"
        case .fr: return "Notification"
        case .de: return "Benachrichtigung"
        case .ar: return "إشعار"
        }
    }
    // Privacy Policy
    
    static func introduction(_ language: AppLanguage) -> String {
        switch language {
        case .en: return "Introduction"
        case .az: return "Giriş"
        case .fr: return "Introduction"
        case .de: return "Einführung"
        case .ar: return "مقدمة"
        }
    }
    static func privacyPolicyText(_ language: AppLanguage) -> String {
        switch language {
        case .en:
            return "This Privacy Policy explains how Movie TMDB (\"we\", \"our\", or \"us\") collects, uses, and protects your personal information when you use our mobile application (\"Movie TMDB\"). By using the App, you agree to the practices described in this Privacy Policy."
        case .az:
            return "Bu Məxfilik Siyasəti, Movie TMDB (\"biz\", \"bizim\" və ya \"bizə\") mobil tətbiqimizi (\"Movie TMDB\") istifadə edərkən şəxsi məlumatlarınızı necə topladığımızı, istifadə etdiyimizi və qoruduğumuzu izah edir. Tətbiqdən istifadə etməklə, bu Məxfilik Siyasətində təsvir olunan praktikaları qəbul etmiş olursunuz."
        case .fr:
            return "Cette politique de confidentialité explique comment Movie TMDB (\"nous\") collecte, utilise et protège vos informations personnelles lorsque vous utilisez notre application mobile (\"Movie TMDB\"). En utilisant l'application, vous acceptez les pratiques décrites dans cette politique de confidentialité."
        case .de:
            return "Diese Datenschutzrichtlinie erklärt, wie Movie TMDB (\"wir\", \"unser\" oder \"uns\") Ihre persönlichen Daten sammelt, verwendet und schützt, wenn Sie unsere mobile Anwendung (\"Movie TMDB\") nutzen. Durch die Nutzung der App stimmen Sie den in dieser Datenschutzrichtlinie beschriebenen Praktiken zu."
        case .ar:
            return "تشرح سياسة الخصوصية هذه كيف تقوم Movie TMDB (\"نحن\") بجمع واستخدام وحماية معلوماتك الشخصية عند استخدام تطبيقنا المحمول (\"Movie TMDB\"). باستخدام التطبيق، فإنك توافق على الممارسات الموضحة في سياسة الخصوصية هذه."
        }
    }
    
    static func informationWeCollect(_ language: AppLanguage) -> String {
        switch language {
        case .en: return "Information We Collect"
        case .az: return "Topladığımız Məlumat"
        case .fr: return "Informations que nous collectons"
        case .de: return "Informationen, die wir sammeln"
        case .ar: return "المعلومات التي نجمعها"
        }
    }
    
    static func informationCollected(_ language: AppLanguage) -> String {
        switch language {
        case .en:
            return """
            We may collect the following types of information:

            Personal Information (optional): Such as name, email address, or account details if you choose to create an account or sign in.

            Usage Data: Information about how you interact with the App, including features you use, screens you visit, and actions you take.

            Device Information: Such as device model, operating system version, unique device identifiers, and network information.

            Location Data (if enabled): We may collect approximate or precise location information for features that require it.
            """
        case .az:
            return """
            Aşağıdakı məlumat növlərini toplaya bilərik:

            Şəxsi Məlumat (istəyə bağlı): Ad, e-poçt ünvanı və ya hesab məlumatları kimi məlumatlar, əgər hesab yaratmağı və ya daxil olmağı seçsəniz.

            İstifadə Məlumatı: Tətbiqlə necə qarşılıqlı əlaqə qurduğunuz barədə məlumatlar, istifadə etdiyiniz funksiyalar, ziyarət etdiyiniz ekranlar və etdiyiniz əməliyyatlar daxil olmaqla.

            Cihaz Məlumatı: Cihaz modeli, əməliyyat sistemi versiyası, unikal cihaz identifikatorları və şəbəkə məlumatları kimi məlumatlar.

            Məkan Məlumatı (aktivdirsə): Lazım olan funksiyalar üçün təxmini və ya dəqiq məkan məlumatlarını toplaya bilərik.
            """
        case .fr:
            return """
            Nous pouvons collecter les types d'informations suivants :

            Informations personnelles (facultatif) : Comme le nom, l'adresse e-mail ou les détails du compte si vous choisissez de créer un compte ou de vous connecter.

            Données d'utilisation : Informations sur la façon dont vous interagissez avec l'application, y compris les fonctionnalités que vous utilisez, les écrans que vous visitez et les actions que vous effectuez.

            Informations sur l'appareil : Comme le modèle de l'appareil, la version du système d'exploitation, les identifiants uniques de l'appareil et les informations réseau.

            Données de localisation (si activées) : Nous pouvons collecter des informations de localisation approximatives ou précises pour les fonctionnalités qui en ont besoin.
            """
        case .de:
            return """
            Wir können die folgenden Arten von Informationen sammeln:

            Persönliche Informationen (optional): Wie Name, E-Mail-Adresse oder Kontodetails, falls Sie sich entscheiden, ein Konto zu erstellen oder sich anzumelden.

            Nutzungsdaten: Informationen darüber, wie Sie mit der App interagieren, einschließlich der Funktionen, die Sie verwenden, besuchten Bildschirme und durchgeführten Aktionen.

            Geräteinformationen: Wie Gerätemodell, Betriebssystemversion, eindeutige Gerätekennungen und Netzwerkinformationen.

            Standortdaten (falls aktiviert): Wir können ungefähre oder genaue Standortinformationen für Funktionen sammeln, die diese benötigen.
            """
        case .ar:
            return """
            قد نقوم بجمع الأنواع التالية من المعلومات:

            المعلومات الشخصية (اختياري): مثل الاسم، عنوان البريد الإلكتروني، أو تفاصيل الحساب إذا اخترت إنشاء حساب أو تسجيل الدخول.

            بيانات الاستخدام: معلومات حول كيفية تفاعلك مع التطبيق، بما في ذلك الميزات التي تستخدمها، والشاشات التي تزورها، والإجراءات التي تقوم بها.

            معلومات الجهاز: مثل طراز الجهاز، إصدار نظام التشغيل، معرفات الجهاز الفريدة، ومعلومات الشبكة.

            بيانات الموقع (إذا تم تمكينها): قد نقوم بجمع معلومات الموقع التقريبية أو الدقيقة للميزات التي تتطلب ذلك.
            """
        }
    }
    
    static func howWeUseYourInformation(_ language: AppLanguage) -> String {
        switch language {
        case .en: return "How We Use Your Information"
        case .az: return "Məlumatlarınızı Necə İstifadə Edirik"
        case .fr: return "Comment nous utilisons vos informations"
        case .de: return "Wie wir Ihre Informationen verwenden"
        case .ar: return "كيفية استخدام معلوماتك"
        }
    }
    static func howWeUseYourInformationDetails(_ language: AppLanguage) -> String {
        switch language {
        case .en:
            return """
            We may use the collected information for the following purposes:

            To provide, maintain, and improve the App and its features.

            To personalize your user experience.

            To analyze usage trends and improve performance.

            To communicate with you (such as sending updates, notifications, or support messages).

            To ensure security and prevent fraudulent or unauthorized activities.
            """
        case .az:
            return """
            Toplanmış məlumatları aşağıdakı məqsədlər üçün istifadə edə bilərik:

            Tətbiqi və onun funksiyalarını təmin etmək, saxlamaq və təkmilləşdirmək.

            İstifadəçi təcrübənizi fərdiləşdirmək.

            İstifadə tendensiyalarını analiz etmək və performansı yaxşılaşdırmaq.

            Sizinlə ünsiyyət qurmaq (məsələn, yeniliklər, bildirişlər və ya dəstək mesajları göndərmək).

            Təhlükəsizliyi təmin etmək və fırıldaqçılıq və ya icazəsiz fəaliyyətlərin qarşısını almaq.
            """
        case .fr:
            return """
            Nous pouvons utiliser les informations collectées aux fins suivantes :

            Pour fournir, maintenir et améliorer l'application et ses fonctionnalités.

            Pour personnaliser votre expérience utilisateur.

            Pour analyser les tendances d'utilisation et améliorer les performances.

            Pour communiquer avec vous (par exemple, envoyer des mises à jour, notifications ou messages de support).

            Pour garantir la sécurité et prévenir les activités frauduleuses ou non autorisées.
            """
        case .de:
            return """
            Wir können die gesammelten Informationen für folgende Zwecke verwenden:

            Um die App und ihre Funktionen bereitzustellen, zu warten und zu verbessern.

            Um Ihr Benutzererlebnis zu personalisieren.

            Um Nutzungstrends zu analysieren und die Leistung zu verbessern.

            Um mit Ihnen zu kommunizieren (z. B. durch das Senden von Updates, Benachrichtigungen oder Support-Nachrichten).

            Um Sicherheit zu gewährleisten und betrügerische oder unautorisierte Aktivitäten zu verhindern.
            """
        case .ar:
            return """
            قد نستخدم المعلومات التي تم جمعها للأغراض التالية:

            لتوفير التطبيق وصيانته وتحسين ميزاته.

            لتخصيص تجربة المستخدم الخاصة بك.

            لتحليل اتجاهات الاستخدام وتحسين الأداء.

            للتواصل معك (مثل إرسال التحديثات، الإشعارات، أو رسائل الدعم).

            لضمان الأمان ومنع الأنشطة الاحتيالية أو غير المصرح بها.
            """
        }
    }
    
    static func sharingOfInformation(_ language: AppLanguage) -> String {
        switch language {
        case .en: return "Sharing of Information"
        case .az: return "Məlumatların Paylaşılması"
        case .fr: return "Partage des informations"
        case .de: return "Weitergabe von Informationen"
        case .ar: return "مشاركة المعلومات"
        }
    }
    
    static func sharingOfInformationDetails(_ language: AppLanguage) -> String {
        switch language {
        case .en:
            return """
            We do not sell your personal information. We may share information only in the following situations:

            With trusted third-party service providers (such as analytics, cloud storage, or advertising partners) who help us operate the App.

            If required by law, regulation, or legal process.

            To protect our rights, privacy, safety, or property, or that of our users.
            """
        case .az:
            return """
            Şəxsi məlumatlarınızı satmırıq. Məlumatları yalnız aşağıdakı hallarda paylaşa bilərik:

            Tətbiqi işlətməyimizə kömək edən etibarlı üçüncü tərəf xidmət təminatçıları ilə (məsələn, analitika, bulud yaddaşı və ya reklam tərəfdaşları).

            Qanun, tənzimləmə və ya hüquqi proses tələb etdikdə.

            Öz hüquqlarımızı, məxfiliyimizi, təhlükəsizliyimizi və ya əmlakımızı və ya istifadəçilərimizin hüquqlarını qorumaq üçün.
            """
        case .fr:
            return """
            Nous ne vendons pas vos informations personnelles. Nous pouvons partager les informations uniquement dans les situations suivantes :

            Avec des prestataires de services tiers de confiance (tels que l'analyse, le stockage cloud ou les partenaires publicitaires) qui nous aident à faire fonctionner l'application.

            Si la loi, un règlement ou une procédure légale l'exige.

            Pour protéger nos droits, notre vie privée, notre sécurité ou nos biens, ou ceux de nos utilisateurs.
            """
        case .de:
            return """
            Wir verkaufen Ihre persönlichen Informationen nicht. Wir können Informationen nur in folgenden Situationen weitergeben:

            An vertrauenswürdige Drittanbieter (z. B. Analysen, Cloud-Speicher oder Werbepartner), die uns beim Betrieb der App helfen.

            Wenn gesetzlich, durch Vorschriften oder rechtliche Verfahren erforderlich.

            Zum Schutz unserer Rechte, Privatsphäre, Sicherheit oder Eigentum oder der unserer Benutzer.
            """
        case .ar:
            return """
            نحن لا نبيع معلوماتك الشخصية. قد نشارك المعلومات فقط في الحالات التالية:

            مع مزودي خدمات طرف ثالث موثوقين (مثل التحليلات، التخزين السحابي، أو شركاء الإعلانات) الذين يساعدوننا في تشغيل التطبيق.

            إذا كان ذلك مطلوبًا بموجب القانون أو اللوائح أو الإجراءات القانونية.

            لحماية حقوقنا وخصوصيتنا وسلامتنا أو ممتلكاتنا، أو حقوق مستخدمينا.
            """
        }
    }
    
    static func dataSecurity(_ language: AppLanguage) -> String {
        switch language {
        case .en: return "Data Security"
        case .az: return "Məlumatların Təhlükəsizliyi"
        case .fr: return "Sécurité des données"
        case .de: return "Datensicherheit"
        case .ar: return "أمان البيانات"
        }
    }
    
    static func dataSecurityDetails(_ language: AppLanguage) -> String {
        switch language {
        case .en:
            return "We implement reasonable security measures to protect your data. However, please note that no method of electronic transmission or storage is completely secure."
        case .az:
            return "Məlumatlarınızı qorumaq üçün məqbul təhlükəsizlik tədbirləri tətbiq edirik. Bununla belə, qeyd edin ki, heç bir elektron ötürmə və ya saxlanma üsulu tamamilə təhlükəsiz deyil."
        case .fr:
            return "Nous mettons en œuvre des mesures de sécurité raisonnables pour protéger vos données. Cependant, veuillez noter qu’aucune méthode de transmission ou de stockage électronique n’est totalement sécurisée."
        case .de:
            return "Wir setzen angemessene Sicherheitsmaßnahmen zum Schutz Ihrer Daten um. Bitte beachten Sie jedoch, dass keine Methode der elektronischen Übertragung oder Speicherung vollständig sicher ist."
        case .ar:
            return "نقوم بتنفيذ تدابير أمان معقولة لحماية بياناتك. ومع ذلك، يرجى ملاحظة أنه لا توجد طريقة نقل أو تخزين إلكتروني آمنة تمامًا."
        }
    }
    
    static func yourRights(_ language: AppLanguage) -> String {
        switch language {
        case .en: return "Your Rights"
        case .az: return "Sizin Hüquqlarınız"
        case .fr: return "Vos droits"
        case .de: return "Ihre Rechte"
        case .ar: return "حقوقك"
        }
    }
    
    static func yourRightsDetails(_ language: AppLanguage) -> String {
        switch language {
        case .en:
            return """
            Depending on your location, you may have the following rights:

            • Access and review the personal data we hold about you.

            • Request correction or deletion of your data.

            • Withdraw consent for certain data uses (e.g., location, notifications).

            • You can exercise these rights by contacting us at 📩 rafaretti2021@gmail.com.
            """
        case .az:
            return """
            Yerinizdən asılı olaraq, aşağıdakı hüquqlara sahib ola bilərsiniz:

            • Bizdə saxlanılan şəxsi məlumatlara giriş və nəzərdən keçirmə.

            • Məlumatlarınızın düzəldilməsini və ya silinməsini tələb etmək.

            • Müəyyən məlumat istifadələri üçün razılığınızı geri çəkmək (məsələn, yer, bildirişlər).

            • Bu hüquqlardan istifadə etmək üçün bizimlə 📩 rafaretti2021@gmail.com ünvanında əlaqə saxlayın.
            """
        case .fr:
            return """
            En fonction de votre localisation, vous pouvez disposer des droits suivants :

            • Accéder et consulter les données personnelles que nous détenons à votre sujet.

            • Demander la correction ou la suppression de vos données.

            • Retirer votre consentement pour certaines utilisations des données (par ex., localisation, notifications).

            • Vous pouvez exercer ces droits en nous contactant à 📩 rafaretti2021@gmail.com.
            """
        case .de:
            return """
            Abhängig von Ihrem Standort können Sie folgende Rechte haben:

            • Zugriff auf und Überprüfung der personenbezogenen Daten, die wir über Sie speichern.

            • Korrektur oder Löschung Ihrer Daten anfordern.

            • Zustimmung für bestimmte Datenverwendungen widerrufen (z. B. Standort, Benachrichtigungen).

            • Sie können diese Rechte ausüben, indem Sie uns unter 📩 rafaretti2021@gmail.com kontaktieren.
            """
        case .ar:
            return """
            اعتمادًا على موقعك، قد تكون لك الحقوق التالية:

            • الوصول إلى البيانات الشخصية التي نحتفظ بها عنك ومراجعتها.

            • طلب تصحيح أو حذف بياناتك.

            • سحب الموافقة لاستخدامات معينة للبيانات (مثل الموقع، الإشعارات).

            • يمكنك ممارسة هذه الحقوق عن طريق الاتصال بنا على 📩 rafaretti2021@gmail.com.
            """
        }
    }
    
    static func childrensPrivacy(_ language: AppLanguage) -> String {
        switch language {
        case .en: return "Children’s Privacy"
        case .az: return "Uşaqların Məxfiliyi"
        case .fr: return "Confidentialité des enfants"
        case .de: return "Datenschutz für Kinder"
        case .ar: return "خصوصية الأطفال"
        }
    }
    
    static func childrensPrivacyDetails(_ language: AppLanguage) -> String {
        switch language {
        case .en:
            return "Our App is not intended for children under 13 (or under 16 in the EU). We do not knowingly collect personal data from children. If we become aware of such data, we will delete it immediately."
        case .az:
            return "Tətbiqimiz 13 yaşdan kiçik uşaqlar (AB-də 16 yaşdan kiçik) üçün nəzərdə tutulmayıb. Biz uşaqlardan qəsdən şəxsi məlumat toplamırıq. Belə məlumatı aşkar etdikdə dərhal siləcəyik."
        case .fr:
            return "Notre application n’est pas destinée aux enfants de moins de 13 ans (ou de moins de 16 ans dans l’UE). Nous ne collectons pas sciemment de données personnelles auprès des enfants. Si nous prenons connaissance de telles données, nous les supprimerons immédiatement."
        case .de:
            return "Unsere App richtet sich nicht an Kinder unter 13 Jahren (oder unter 16 Jahren in der EU). Wir sammeln wissentlich keine persönlichen Daten von Kindern. Wenn wir solche Daten feststellen, werden wir sie sofort löschen."
        case .ar:
            return "تطبيقنا غير مخصص للأطفال دون سن 13 عامًا (أو دون سن 16 عامًا في الاتحاد الأوروبي). نحن لا نجمع بيانات شخصية من الأطفال عن قصد. إذا اكتشفنا مثل هذه البيانات، سنقوم بحذفها على الفور."
        }
    }
    
    static func thirdPartyServices(_ language: AppLanguage) -> String {
        switch language {
        case .en: return "Third-Party Services"
        case .az: return "Üçüncü Tərəf Xidmətləri"
        case .fr: return "Services tiers"
        case .de: return "Drittanbieter-Dienste"
        case .ar: return "خدمات الطرف الثالث"
        }
    }
    static func thirdPartyServicesDetails(_ language: AppLanguage) -> String {
        switch language {
        case .en:
            return "The App may contain links to third-party websites or use third-party SDKs/services (e.g., Google Analytics, Firebase, AdMob). These services may collect data independently and have their own privacy policies."
        case .az:
            return "Tətbiq üçüncü tərəf vebsaytlarına keçidlər və ya üçüncü tərəf SDK/ləri/xidmətləri (məsələn, Google Analytics, Firebase, AdMob) istifadə edə bilər. Bu xidmətlər müstəqil məlumat toplaya və öz məxfilik siyasətlərinə sahib ola bilərlər."
        case .fr:
            return "L’application peut contenir des liens vers des sites Web tiers ou utiliser des SDK/services tiers (par ex., Google Analytics, Firebase, AdMob). Ces services peuvent collecter des données de manière indépendante et avoir leurs propres politiques de confidentialité."
        case .de:
            return "Die App kann Links zu Websites von Drittanbietern enthalten oder Drittanbieter-SDKs/-Dienste (z. B. Google Analytics, Firebase, AdMob) verwenden. Diese Dienste können Daten unabhängig sammeln und haben eigene Datenschutzrichtlinien."
        case .ar:
            return "قد يحتوي التطبيق على روابط لمواقع الطرف الثالث أو استخدام SDK/خدمات الطرف الثالث (مثل Google Analytics و Firebase و AdMob). قد تجمع هذه الخدمات البيانات بشكل مستقل ولها سياسات خصوصية خاصة بها."
        }
    }
    
    static func changesToPolicy(_ language: AppLanguage) -> String {
        switch language {
        case .en: return "Changes to This Policy"
        case .az: return "Bu Siyasətdə Dəyişikliklər"
        case .fr: return "Modifications de cette politique"
        case .de: return "Änderungen dieser Richtlinie"
        case .ar: return "التغييرات على هذه السياسة"
        }
    }
    
    static func changesToPolicyDetails(_ language: AppLanguage) -> String {
        switch language {
        case .en:
            return "We may update this Privacy Policy from time to time. Any changes will be posted within the App and/or on our website with the updated effective date."
        case .az:
            return "Biz bu Məxfilik Siyasətini zaman-zaman yeniləyə bilərik. Hər hansı dəyişikliklər Tətbiqdə və/və ya veb saytımızda yenilənmiş təsir tarixi ilə yerləşdiriləcək."
        case .fr:
            return "Nous pouvons mettre à jour cette politique de confidentialité de temps à autre. Toute modification sera publiée dans l’application et/ou sur notre site Web avec la date d’entrée en vigueur mise à jour."
        case .de:
            return "Wir können diese Datenschutzerklärung von Zeit zu Zeit aktualisieren. Änderungen werden innerhalb der App und/oder auf unserer Website mit dem aktualisierten Wirksamkeitsdatum veröffentlicht."
        case .ar:
            return "قد نقوم بتحديث سياسة الخصوصية هذه من حين لآخر. سيتم نشر أي تغييرات داخل التطبيق و/أو على موقعنا الإلكتروني مع تاريخ السريان المحدّث."
        }
    }
    
    static func contactUsPolicy(_ language: AppLanguage) -> String {
        switch language {
        case .en: return "Contact Us"
        case .az: return "Bizimlə Əlaqə"
        case .fr: return "Nous contacter"
        case .de: return "Kontaktieren Sie uns"
        case .ar: return "اتصل بنا"
        }
    }
    static func contactUsDetails(_ language: AppLanguage) -> String {
        switch language {
        case .en:
            return "If you have any questions or concerns about this Privacy Policy, please contact us at:\n📧 rafaretti2021@gmail.com\n🌐 www.linkedin.com/rafaelagayev"
        case .az:
            return "Bu Məxfilik Siyasəti ilə bağlı hər hansı sualınız və ya narahatlığınız varsa, zəhmət olmasa bizimlə əlaqə saxlayın:\n📧 rafaretti2021@gmail.com\n🌐 www.linkedin.com/rafaelagayev"
        case .fr:
            return "Si vous avez des questions ou des préoccupations concernant cette politique de confidentialité, veuillez nous contacter à :\n📧 rafaretti2021@gmail.com\n🌐 www.linkedin.com/rafaelagayev"
        case .de:
            return "Wenn Sie Fragen oder Bedenken zu dieser Datenschutzrichtlinie haben, kontaktieren Sie uns bitte unter:\n📧 rafaretti2021@gmail.com\n🌐 www.linkedin.com/rafaelagayev"
        case .ar:
            return "إذا كانت لديك أي أسئلة أو مخاوف بشأن سياسة الخصوصية هذه، يرجى الاتصال بنا على:\n📧 rafaretti2021@gmail.com\n🌐 www.linkedin.com/rafaelagayev"
        }
    }
    
    static func privacyPolicyTool(_ language: AppLanguage) -> String {
        switch language {
        case .en: return "Privacy Policy"
        case .az: return "Məxfilik Siyasəti"
        case .fr: return "Politique de confidentialité"
        case .de: return "Datenschutzrichtlinie"
        case .ar: return "سياسة الخصوصية"
        }
    }
    
    //Security Profile
    
    static func control(_ language: AppLanguage) -> String {
        switch language {
        case .en: return "Control"
        case .az: return "Nəzarət"
        case .fr: return "Contrôle"
        case .de: return "Kontrolle"
        case .ar: return "التحكم"
        }
    }
    static func security(_ language: AppLanguage) -> String {
        switch language {
        case .en: return "Security"
        case .az: return "Təhlükəsizlik"
        case .fr: return "Sécurité"
        case .de: return "Sicherheit"
        case .ar: return "الأمان"
        }
    }
    static func googleAuthenticator(_ language: AppLanguage) -> String {
        switch language {
        case .en: return "Google Authenticator"
        case .az: return "Google Authenticator"
        case .fr: return "Google Authenticator"
        case .de: return "Google Authenticator"
        case .ar: return "Google Authenticator"
        }
    }
    
    static func changePIN(_ language: AppLanguage) -> String {
        switch language {
        case .en: return "Change PIN"
        case .az: return "PIN-i Dəyiş"
        case .fr: return "Changer le code PIN"
        case .de: return "PIN ändern"
        case .ar: return "تغيير رمز PIN"
        }
    }
    
    static func changePassword(_ language: AppLanguage) -> String {
        switch language {
        case .en: return "Change Password"
        case .az: return "Şifrəni Dəyiş"
        case .fr: return "Changer le mot de passe"
        case .de: return "Passwort ändern"
        case .ar: return "تغيير كلمة المرور"
        }
    }
    
    static func securityDetails(_ language: AppLanguage) -> String {
        switch language {
        case .en: return "Security Details"
        case .az: return "Təhlükəsizlik Məlumatları"
        case .fr: return "Détails de sécurité"
        case .de: return "Sicherheitsdetails"
        case .ar: return "تفاصيل الأمان"
        }
    }
    
    // Security Alerts
    static func securityAlerts(_ language: AppLanguage) -> String {
        switch language {
        case .en: return "Security Alerts"
        case .az: return "Təhlükəsizlik Xəbərdarlıqları"
        case .fr: return "Alertes de sécurité"
        case .de: return "Sicherheitswarnungen"
        case .ar: return "تنبيهات الأمان"
        }
    }

    // Manage Devices
    static func manageDevices(_ language: AppLanguage) -> String {
        switch language {
        case .en: return "Manage Devices"
        case .az: return "Cihazları İdarə Et"
        case .fr: return "Gérer les appareils"
        case .de: return "Geräte verwalten"
        case .ar: return "إدارة الأجهزة"
        }
    }

    // Manage Permission
    static func managePermission(_ language: AppLanguage) -> String {
        switch language {
        case .en: return "Manage Permission"
        case .az: return "İcazələri İdarə Et"
        case .fr: return "Gérer les autorisations"
        case .de: return "Berechtigungen verwalten"
        case .ar: return "إدارة الأذونات"
        }
    }
    
    // Remember Me
    static func rememberMe(_ language: AppLanguage) -> String {
        switch language {
        case .en: return "Remember Me"
        case .az: return "Məni Yadda Saxla"
        case .fr: return "Se souvenir de moi"
        case .de: return "Angemeldet bleiben"
        case .ar: return "تذكرني"
        }
    }

    // Face ID
    static func faceID(_ language: AppLanguage) -> String {
        switch language {
        case .en: return "Face ID"
        case .az: return "Üz Tanıma"
        case .fr: return "Face ID"
        case .de: return "Face-ID"
        case .ar: return "التعرف على الوجه"
        }
    }

    // Biometric ID
    static func biometricID(_ language: AppLanguage) -> String {
        switch language {
        case .en: return "Biometric ID"
        case .az: return "Biometrik ID"
        case .fr: return "ID biométrique"
        case .de: return "Biometrische ID"
        case .ar: return "المعرف البيومتري"
        }
    }
    
    static func wifiOnly(_ language: AppLanguage) -> String{
        switch language {
        case .en: return "Wi-Fi Only"

        case .az: return "Yalnız Wi-Fi"
        case .fr: return "Wi-Fi seulement"
        case .de: return "Nur WLAN"
        case .ar: return "فقط الواي فاي"

        }
    }
    
    static func downloadToolbar(_ language: AppLanguage) -> String {
        switch language {
        case .en: return "Download"
        case .az: return "Endirmə"
        case .fr: return "Télécharger"
        case .de: return "Herunterladen"
        case .ar: return "تنزيل"
        }
    }
    
    static func smartDownloads(_ language: AppLanguage) -> String {
        switch language {
        case .en: return "Smart Downloads"
        case .az: return "Ağıllı Endirmələr"
        case .fr: return "Téléchargements intelligents"
        case .de: return "Intelligente Downloads"
        case .ar: return "التنزيلات الذكية"
        }
    }

    static func videoQuality(_ language: AppLanguage) -> String {
        switch language {
        case .en: return "Video Quality"
        case .az: return "Video Keyfiyyəti"
        case .fr: return "Qualité Vidéo"
        case .de: return "Videoqualität"
        case .ar: return "جودة الفيديو"
        }
    }

    static func audioQuality(_ language: AppLanguage) -> String {
        switch language {
        case .en: return "Audio Quality"
        case .az: return "Səs Keyfiyyəti"
        case .fr: return "Qualité Audio"
        case .de: return "Audioqualität"
        case .ar: return "جودة الصوت"
        }
    }

    static func deleteAllDownloads(_ language: AppLanguage) -> String {
        switch language {
        case .en: return "Delete All Downloads"
        case .az: return "Bütün Endirmələri Sil"
        case .fr: return "Supprimer Tous les Téléchargements"
        case .de: return "Alle Downloads Löschen"
        case .ar: return "حذف جميع التنزيلات"
        }
    }

    static func deleteCache(_ language: AppLanguage) -> String {
        switch language {
        case .en: return "Delete Cache"
        case .az: return "Keşi Sil"
        case .fr: return "Supprimer le Cache"
        case .de: return "Cache Löschen"
        case .ar: return "حذف ذاكرة التخزين المؤقت"
        }
    }
    static func joinPremium(_ language: AppLanguage) -> String {
        switch language {
        case .en:
            return "Join Premium!"
        case .de:
            return "Premium beitreten!"
        case .fr:
            return "Rejoindre Premium !"
        case .ar:
            return "انضم إلى بريميوم!"
        case .az:
            return "Premiuma Qoşul!"
        }
    }
    
    static func fullHDMovies(_ language: AppLanguage) -> String {
        switch language {
        case .en:
            return "Enter watching Full-HD movies, without restrictions and without ads."
        case .de:
            return "Sehen Sie Full-HD-Filme, ohne Einschränkungen und ohne Werbung."
        case .fr:
            return "Regardez des films en Full-HD, sans restrictions et sans publicités."
        case .ar:
            return "شاهد أفلام Full-HD، بلا قيود وبدون إعلانات."
        case .az:
            return "Full-HD filmlərə məhdudiyyətsiz və reklamsız baxın."
        }
    }
    static func subscribeToPremium(_ language: AppLanguage) -> String {
        switch language {
        case .en: return "Subscribe to Premium"
        case .az: return "Premium-a Abunə Ol"
        case .fr: return "S'abonner à Premium"
        case .de: return "Premium abonnieren"
        case .ar: return "اشترك في البريميوم"
        }
    }
    static func watchAllAdFree(_ language: AppLanguage) -> String {
        switch language {
        case .en: return "Watch all you want, ad-free"
        case .az: return "İstədiyiniz qədər baxın, reklamsız"
        case .fr: return "Regardez tout ce que vous voulez, sans publicité"
        case .de: return "Schauen Sie alles, was Sie wollen, werbefrei"
        case .ar: return "شاهد كل ما تريد بدون إعلانات"
        }
    }
    static func allowsStreaming4K(_ language: AppLanguage) -> String {
        switch language {
        case .en: return "Allows streaming of 4K"
        case .az: return "4K axınına icazə verir"
        case .fr: return "Autorise le streaming en 4K"
        case .de: return "Ermöglicht 4K-Streaming"
        case .ar: return "يسمح بالبث بدقة 4K"
        }
    }
    static func videoQualityBetter(_ language: AppLanguage) -> String {
        switch language {
        case .en: return "Video & Quality is better"
        case .az: return "Video və keyfiyyət daha yaxşıdır"
        case .fr: return "La vidéo et la qualité sont meilleures"
        case .de: return "Video & Qualität ist besser"
        case .ar: return "الفيديو والجودة أفضل"
        }
    }
    
    static func monthlyPrice(_ language: AppLanguage) -> String {
            switch language {
            case .en: return "$9.99/month"
            case .az: return "9.99$/ay"
            case .fr: return "9,99$/mois"
            case .de: return "9,99$/Monat"
            case .ar: return "٩٫٩٩$/شهر"
            }
        }
    
    static func yearlyPrice(_ language: AppLanguage) -> String{
        switch language{
        case .en: return "$99.99/yearly"
        case .az: return "99.99$/illik"
        case .fr: return "99,99$/annuel"
        case .de: return "99,99$/jährlich"
        case .ar: return "٩٩٫٩٩$/سنوياً"
        }
    }
    
    static func loginOrRegister(_ language: AppLanguage) -> String {
        switch language {
        case .az:
            return "Zəhmət olmasa daxil olun və ya qeydiyyatdan keçin"
        case .en:
            return "Please login or Register"
        case .fr:
            return "Veuillez vous connecter ou vous inscrire"
        case .de:
            return "Bitte einloggen oder registrieren"
        case .ar:
            return "الرجاء تسجيل الدخول أو إنشاء حساب"
        }
    }
    
    static func enterEmail(_ lang: AppLanguage) -> String {
        switch lang {
        case .az:
            return "Email daxil edin"
        case .en:
            return "Enter Email"
        case .fr:
            return "Entrez l'email"
        case .de:
            return "E-Mail eingeben"
        case .ar:
            return "أدخل البريد الإلكتروني"
        }
    }
    
    static func enterPassword(_ language: AppLanguage) -> String {
        switch language {
        case .az:
            return "Şifrə daxil edin"
        case .en:
            return "Enter Password"
        case .fr:
            return "Entrez le mot de passe"
        case .de:
            return "Passwort eingeben"
        case .ar:
            return "أدخل كلمة المرور"
        }
    }
    
    static func login(_ language: AppLanguage) -> String {
        switch language {
        case .az:
            return "Daxil ol"
        case .en:
            return "Login"
        case .fr:
            return "Connexion"
        case .de:
            return "Anmelden"
        case .ar:
            return "تسجيل الدخول"
        }
    }
       
    static func register(_ language: AppLanguage) -> String {
        switch language {
        case .az:
            return "Qeydiyyat"
        case .en:
            return "Register"
        case .fr:
            return "S’inscrire"
        case .de:
            return "Registrieren"
        case .ar:
            return "تسجيل"
        }
    }
    static func unknown(_ language: AppLanguage) -> String {
        switch language {
        case .en: return "Unknown"
        case .az: return "Naməlum"
        case .fr: return "Inconnu"
        case .de: return "Unbekannt"
        case .ar: return "غير معروف"
        }
    }
    
    static func logout(_ language: AppLanguage) -> String {
        switch language{
        case .en: return "Logout"
        case .az: return "Çıxış"
        case .fr: return "Se déconnecter"
        case .de: return "Abmelden"
        case .ar: return "تسجيل الخروج"
        }
    }
    
    static func payment(_ language: AppLanguage) -> String {
        switch language {
        case .az: return "Ödəniş"
        case .en: return "Payment"
        case .fr: return "Paiement"
        case .de: return "Zahlung"
        case .ar: return "الدفع"
        }
    }
    
    static func enterCardName(_ lang: AppLanguage) -> String {
        switch lang {
        case .az: return "Kart sahibinin adı"
        case .en: return "Enter card name"
        case .fr: return "Nom sur la carte"
        case .de: return "Kartenname eingeben"
        case .ar: return "أدخل اسم البطاقة"
        }
    }
    
    static func payButton(_ lang: AppLanguage) -> String {
        switch lang {
        case .az: return "Ödə"
        case .en: return "Pay"
        case .fr: return "Payer"
        case .de: return "Bezahlen"
        case .ar: return "ادفع"
        }
    }
    
    static func SignIn(_ language: AppLanguage) -> String {
        switch language {
        case .az:
            return "Profilə giriş"
        case .en:
            return "Sign In"
        case .fr:
            return "Se connecter"
        case .ar:
            return "تسجيل الدخول"
        case .de:
            return "Anmelden"
        }
    }
    
   static func localizedContinueWithFacebook(_ language: AppLanguage) -> String {
        switch language{
        case .az:
            return "Facebook ilə davam et"
        case .en:
            return "Continue with Facebook"
        case .fr:
            return "Continuer avec Facebook"
        case .ar:
            return "المتابعة باستخدام فيسبوك"
        case .de:
            return "Mit Facebook fortfahren"
            
        }
    }
    
    static func localizedContinueWithGoogle(_ language: AppLanguage) -> String {
        switch language {
        case .az:
            return "Google ilə davam et"
        case .en:
            return "Continue with Google"
        case .fr:
            return "Continuer avec Google"
        case .ar:
            return "المتابعة باستخدام جوجل"
        case .de:
            return "Mit Google fortfahren"
        }
    }
    
    static func localizedContinueWithApple(_ language: AppLanguage) -> String {
        switch language {
        case .az:
            return "Apple ilə davam et"
        case .en:
            return "Continue with Apple"
        case .fr:
            return "Continuer avec Apple"
        case .ar:
            return "المتابعة باستخدام آبل"
        case .de:
            return "Mit Apple fortfahren"
            
        }
    }
    
    static func localizedOr(_ language: AppLanguage) -> String {
        switch language {
        case .az:
            return "və ya"
        case .en:
            return "or"
        case .fr:
            return "ou"
        case .ar:
            return "أو"
        case .de:
            return "oder"
            
        }
    }
    
    static func localizedSignInWithPassword(_ language: AppLanguage) -> String {
        switch language {
        case .az:
            return "Şifrə ilə daxil olun"
        case .en:
            return "Sign in with password"
        case .fr:
            return "Se connecter avec mot de passe"
        case .ar:
            return "تسجيل الدخول باستخدام كلمة المرور"
        case .de:
            return "Mit Passwort anmelden"
            
        }
    }
    
    static func localizedDontHaveAccount(_ language: AppLanguage) -> String {
        switch language {
        case .az:
            return "Hesabınız yoxdur?"
        case .en:
            return "Don't have an account?"
        case .fr:
            return "Vous n'avez pas de compte ?"
        case .ar:
            return "ليس لديك حساب؟"
        case .de:
            return "Sie haben kein Konto?"
            
        }
    }
    
    static func localizedSignUp(_ language: AppLanguage) -> String {
        switch language {
        case .az:
            return "Qeydiyyatdan keç"
        case .en:
            return "Sign up"
        case .fr:
            return "S'inscrire"
        case .ar:
            return "سجّل"
        case .de:
            return "Registrieren"
        }
    }
    
    static func localizedCreateYourAccount(_ language: AppLanguage) -> String {
        switch language {
        case .az:
            return "Hesabınızı yaradın"
        case .en:
            return "Create your Account"
        case .fr:
            return "Créez votre compte"
        case .ar:
            return "أنشئ حسابك"
        case .de:
            return "Erstellen Sie Ihr Konto"
        }
    }
    
    static func localizedOrContinueWith(_ language: AppLanguage) -> String {
        switch language {
        case .az:
            return "və ya davam et"
        case .en:
            return "or continue with"
        case .fr:
            return "ou continuer avec"
        case .ar:
            return "أو المتابعة باستخدام"
        case .de:
            return "oder weiter mit"
            
        }
    }
    
    static func localizedAlreadyHaveAccount(_ language: AppLanguage) -> String {
        switch language{
        case .az:
            return "Artıq hesabınız var?"
        case .en:
            return "Already have an account?"
        case .fr:
            return "Vous avez déjà un compte ?"
        case .ar:
            return "هل لديك حساب بالفعل؟"
        case .de:
            return "Haben Sie bereits ein Konto?"
            
        }
    }
    static func localizedSignIn(_ language: AppLanguage) -> String {
        switch language{
        case .az:
            return "Daxil ol"
        case .en:
            return "Sign in"
        case .fr:
            return "Se connecter"
        case .ar:
            return "تسجيل الدخول"
        case .de:
            return "Anmelden"
            
        }
    }
    
    static func localizedError(_ language: AppLanguage) -> String {
        switch language{
        case .az:
            return "Xəta"
        case .en:
            return "Error"
        case .fr:
            return "Erreur"
        case .ar:
            return "خطأ"
        case .de:
            return "Fehler"
            
        }
    }
        
    static func localizedOk(_ language: AppLanguage) -> String {
        switch language {
        case .az:
            return "OK"
        case .en:
            return "OK"
        case .fr:
            return "OK"
        case .ar:
            return "موافق"
        case .de:
            return "OK"
            
        }
    }
    
   static func localizedPlay(_ language: AppLanguage) -> String {
        switch language {
        case .az:
            return "Oynat"
        case .en:
            return "Play"
        case .fr:
            return "Lire"
        case .ar:
            return "تشغيل"
        case .de:
            return "Abspielen"
        
        }
    }
    
   static func localizedMyList(_ language: AppLanguage) -> String {
        switch language {
        case .az:
            return "Mənim Siyahım"
        case .en:
            return "My List"
        case .fr:
            return "Ma Liste"
        case .ar:
            return "قائمتي"
        case .de:
            return "Meine Liste"
        }
    }
    
    static func localizedTopRated(_ language: AppLanguage) -> String {
        switch language {
        case .az: return "Ən Yaxşılar"
        case .en: return "Top Rated"
        case .fr: return "Les Mieux Notés"
        case .ar: return "الأعلى تقييماً"
        case .de: return "Am besten bewertet"
            
        }
    }

    static func localizedSeeAll(_ language: AppLanguage) -> String {
        switch language {
        case .az: return "Hamısını Gör"
        case .en: return "See All"
        case .fr: return "Tout Voir"
        case .ar: return "عرض الكل"
        case .de: return "Alle ansehen"
        
        }
    }
    
   static func localizedTop10MoviesThisWeek(_ language: AppLanguage) -> String {
        switch language {
        case .az: return "Bu Həftənin 10 Ən Yaxşı Filmi"
        case .en: return "Top 10 Movies This Week"
        case .fr: return "Top 10 Films de la Semaine"
        case .ar: return "أفضل 10 أفلام هذا الأسبوع"
        case .de: return "Top 10 Filme dieser Woche"
        }
    }
    
    static func loginToYourAccount(_ lang: AppLanguage) -> String {
        switch lang {
        case .az:
            return "Hesabınıza daxil olun"
        case .en:
            return "Login to your Account"
        case .ar:
            return "سجّل الدخول إلى حسابك"
        case .de:
            return "Melden Sie sich bei Ihrem Konto an"
        case .fr:
            return "Connectez-vous à votre compte"
            
        }
    }
}

