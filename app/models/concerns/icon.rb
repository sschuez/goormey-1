class Icon
  def self.call(*args, &block)
    new(*args, &block).call
  end
  
  def initialize(icon)
    @icon = icon
    @icons = {
      trash: '<i class="bi bi-trash-fill"></i>',
      data_base: '<i class="fas fa-database"></i>',
      eye: '<i class="bi bi-eye"></i>',
      eye_slash: '<i class="bi bi-eye-slash"></i>',
      edit: '<i class="bi bi-pencil-square"></i>',
      book: '<i class="bi bi-book"></i>',
      confirm: '<i class="bi bi-check-circle-fill"></i>',
      comments: '<i class="fas fa-comments"></i>',
      translate: '<i class="fas fa-language"></i>',
      language: '<i class="bi bi-translate"></i>',
      cogs: '<i class="fas fa-cogs"></i>',
      divider: '<i class="bi bi-dot"></i>',
      cancel: '<i class="bi bi-x-circle-fill"></i>',
      handle: '<i class="bi bi-grip-horizontal handle mt-xxs ml-s"></i>',
      repeat: '<i class="bi bi-repeat"></i>',
      plus: '<i class="bi bi-plus"></i>',
      followup: '<i class="bi bi-arrow-repeat"></i>',
      hamburger: '<i class="bi bi-list hamburger"></i>',
      close: '<i class="bi bi-x"></i>',
      close_lg: '<i class="bi bi-x-lg"></i>',
      sign_out: '<i class="bi bi-box-arrow-right"></i>',
      sign_in: '<i class="bi bi-box-arrow-in-right"></i>',
      info_black: '<i class="bi bi-info-circle"></i>',
      info: '<i class="bi bi-info-circle" style="color: hsl(210, 100%, 82%)"></i>',
      clip: '<i class="bi bi-paperclip"></i>',
      home: '<i class="bi bi-house"></i>',
      chat: '<i class="bi bi-chat-dots"></i>',
      clock_history: '<i class="bi bi-clock-history"></i>',
      hourglass: '<i class="bi bi-hourglass"></i>',
      admin: '<i class="bi bi-shield-check"></i>',
      play: '<i class="bi bi-play-fill"></i>',
      send: '<i class="bi bi-send"></i>',
      search: '<i class="bi bi-search"></i>',
      search_alt: '<i class="fas fa-search"></i>',
      share: '<i class="bi bi-share"></i>',
      share_alt: '<i class="fas fa-share-alt"></i>',
      share_square: '<i class="far fa-share-square"></i>',
      paste: '<i class="fas fa-paste"></i>',
      mail: '<i class="bi bi-envelope"></i>',
      dollar: '<i class="bi bi-currency-dollar"></i>',
      user: '<i class="bi bi-person-circle"></i>',
      tick_green: '<i class="bi bi-check-circle-fill" style="color: hsl(117, 75%, 61%)"></i>',
      tick_orange: '<i class="bi bi-check-circle-fill" style="color: hsl(24, 96%, 53%)"></i>',
      sunglasses: '<i class="bi bi-sunglasses"></i>',
      published: '<i class="bi bi-eye-fill" style="color: hsl(120, 45%, 56%)"></i>',
      unpublished: '<i class="bi bi-eye-slash-fill" style="color: hsl(10, 73%, 54%)"></i>',
      twitter: '<i class="fab fa-twitter"></i>',
      reddit: '<i class="fab fa-reddit"></i>',
      linkedin: '<i class="fab fa-linkedin"></i>',
      email: '<i class="fas fa-envelope"></i>',
      whatsapp: '<i class="fab fa-whatsapp"></i>',
      line: '<i class="fab fa-line"></i>',
      facebook: '<i class="fab fa-facebook"></i>'
    }
  end

  def call
    @icons[@icon.to_sym].html_safe
  end
end
