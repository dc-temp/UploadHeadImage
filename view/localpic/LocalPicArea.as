﻿package view.localpic
			
		public function cutShapeFromBitmapData( bitmapData : BitmapData, shape : Shape ):BitmapData 
		{
			// Copy the shape to a bitmap
			var shapeBitmapData : BitmapData = new BitmapData( bitmapData.width, bitmapData.height, true, 0x00000000 );
			shapeBitmapData.draw( shape, shape.transform.matrix, null, null, null, true );
			// Now keep the alpha channel, but copy all other channels from the source
			var p : Point = new Point(0, 0);
			shapeBitmapData.copyChannel( bitmapData, bitmapData.rect, p, BitmapDataChannel.RED, BitmapDataChannel.RED );
			shapeBitmapData.copyChannel( bitmapData, bitmapData.rect, p, BitmapDataChannel.GREEN, BitmapDataChannel.GREEN );
			shapeBitmapData.copyChannel( bitmapData, bitmapData.rect, p, BitmapDataChannel.BLUE, BitmapDataChannel.BLUE );
			// Tada!

			return shapeBitmapData;
		}

			var s:Shape = new Shape();
            var halfSize:uint = _w / 2;
            s.graphics.beginFill(0xffffff);
            s.graphics.drawCircle(halfSize, halfSize, halfSize);
            s.graphics.endFill();
			