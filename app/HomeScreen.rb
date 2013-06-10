class HomeScreen < PM::Screen

  attr_accessor :reader

  def will_appear
    @view_loaded ||= begin
      view.backgroundColor = UIColor.whiteColor

      # Set up a button to launch our barcode reader
      @reader_button = add UIButton.buttonWithType(UIButtonTypeRoundedRect), {
        frame: CGRectMake(10, 10, 200, 30)
      }
      @reader_button.setTitle("Launch ZBar", forState: UIControlStateNormal)
      @reader_button.when(UIControlEventTouchUpInside) do
        launch_zbar
      end
    end
  end

  def launch_zbar
    ap "Scanning Screen Launched!"

    self.reader ||= ZBarReaderViewController.new
    self.reader.readerDelegate = self
    open self.reader, modal: true
  end

  def imagePickerController(reader, didFinishPickingMediaWithInfo:info)
    ap info
    results = info.objectForKey(ZBarReaderControllerResults)
    image = info.objectForKey(UIImagePickerControllerOriginalImage)

    # Put the scanned image on the screen
    @img ||= add UIImageView.new, {
      frame: CGRectMake(10, 50, 200, 200),
    }
    @img.image = image

    ap "Total scanned barcodes: #{results.count}"
    results.each do |result|
      # Should be a ZBarSymbol
      ap "--begin--"
        ap "!!Not a ZBarSymbol!!" unless result.is_a? ZBarSymbol # Sanity check
      ap "Symbol Type: #{result.typeName}"
      ap "Data String: #{result.data}"
      ap "--end--"
    end
  end
end
