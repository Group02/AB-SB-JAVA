(function($) {
    $.fn.closef = function(options) {
        
        
        var defaults = {  
		    closeonbackgroundclick: true, 
		    dismissmodalclass: 'close-sign', 
		}; 

        var options = $.extend({}, defaults, options); 
	
        return this.each(function() {
        	var modal = $(this),
        		topMeasure  = parseInt(modal.css('top')),
				topOffset = modal.height() + topMeasure,
          		locked = false,
				modalBG = $('.close-bg');

			if(modalBG.length == 0) {
				modalBG = $('<div class="close-bg" />').insertAfter(modal);
			}		    
			modal.bind('closef:open', function () {
			  modalBG.unbind('click.modalEvent');
				$('.' + options.dismissmodalclass).unbind('click.modalEvent');
				if(!locked) {
					lockModal();
					modal.css({'opacity' : 0, 'visibility' : 'visible', 'top': $(document).scrollTop()+topMeasure});
						modalBG.fadeIn(options.animationspeed/2);
						modal.delay(options.animationspeed/2).animate({
							"opacity" : 1
						}, options.animationspeed,unlockModal());	
				}
				modal.unbind('closef:open');
			}); 	

			modal.bind('closef:close', function () {
			  if(!locked) {
					lockModal();
					modalBG.delay(options.animationspeed).fadeOut(options.animationspeed);
						modal.animate({
							"opacity" : 0
						}, options.animationspeed, function() {
							modal.css({'opacity' : 1, 'visibility' : 'hidden', 'top' : topMeasure});
							unlockModal();
						});		
				}
				modal.unbind('closef:close');
			});     
   	
    	modal.trigger('closef:open')
			
			//Close Modal Listeners
			var closeButton = $('.' + options.dismissmodalclass).bind('click.modalEvent', function () {
			  modal.trigger('closef:close')
			});
			
			if(options.closeonbackgroundclick) {
				modalBG.css({"cursor":"pointer"})
				modalBG.bind('click.modalEvent', function () {
				  modal.trigger('closef:close')
				});
			}
			$('body').keyup(function(e) {
        		if(e.which===27){ modal.trigger('closef:close'); } // 27 is the keycode for the Escape key
			});
			
			function unlockModal() { 
				locked = false;
			}
			function lockModal() {
				locked = true;
			}	
			
        });//each call
    }//orbit plugin call
})(jQuery);