function fish_greeting
    # Define the folder path - make sure to update this!
    set img_folder your/image/folder

    # Pick a random image file
    # Uses 'ls' to list and 'shuf' to pick one at random
    set random_img (ls $img_folder/*.{jpg,jpeg,png,gif,webp} 2>/dev/null | shuf -n 1)

    # If an image was found, display it with chafa
    if test -n "$random_img"
        
	# --size adjusts the output; remove it if you want it full-width
        chafa --size=60x30 "$random_img"
        
        # Reset color and add a small spacer line
        set_color normal
        echo ""
    end
end
