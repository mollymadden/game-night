class GuestValidator < ActiveModel::Validator
    def validate(record)
      if !(/Anhar|Harrison|Luke|Molly|Aaron|Andrew|Chris|Christopher|Elizabeth|Liz|Heng|Izzy|Jack|Jason|Kristy|Kyle|Levente|Lev|Marco|Mark|Martyna|Max|Mel|Melissa|Michelle|Murtaza|Nhan|Pankaj|Rach|Rachael|Roddy|Samaa|Stanley|Tayla|Tess|Tessa/.match(record.body))
        record.errors.add( :name, :guest, message: 'RSVP error: name not on pre-approved list' )
      end
    end
  end