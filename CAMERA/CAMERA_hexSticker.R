library(ggplot2)
library(png)
library(grid)
library(hexSticker)

## Settings:
col_bg <- "#32ae2e"      ## Green
col_border <- "#19691a"  ## Dark Green
col_text <- "#ffffff"    ## White
n_steps <- 60
y_min <- 1.2
y_max <- 1.6
x_min <- 0.0
x_max <- 1.1

## Read the drawing
setwd("~/Desktop/BiocStickers/CAMERA")
img <- readPNG("./drawing.png")
img_a <- matrix(rgb(img[,,1], img[,,2], img[,,3], img[,,4] * 0.6),
                nrow = dim(img)[1])
g_img <- rasterGrob(img_a, width = 0.9, x = 0.5, interpolate = TRUE)

## Rectangle with color shade to transparency
ys <- seq(y_min, y_max, length.out = n_steps + 1)
alpha_steps <- seq(from = 0, to = 0.5, length.out = n_steps)
trans_df <- data.frame(xmin = x_min, xmax = x_max, ymin = ys[-length(ys)],
                       ymax = ys[-1], alpha = alpha_steps)
trans_rect <- geom_rect(data = trans_df, fill = col_bg,
                        aes(xmin = xmin, xmax = xmax, ymin = ymin, ymax = ymax,
                            alpha = alpha))
gg <- ggplot() +
    geom_rect(aes(xmin = 0, xmax = 1.5, ymin = 0, ymax = 1.5), fill = NA) +
    annotation_custom(g_img, xmin = -0.1) + coord_fixed() +
    trans_rect + theme_void() + guides(alpha = FALSE)

sticker(gg, dpi = 1440, package="CAMERA", p_size = 9.5, s_x = 0.966, s_y = .85, s_width = 1.27,
        s_height = 1.48, p_color = col_text, h_fill = col_bg,
        h_color = col_border, filename="CAMERA.png", p_family = "Aller_Lt",
        u_color = col_border, url = "www.bioconductor.org")

set.seed(123)
sticker(gg, dpi = 1440, package="CAMERA", p_size = 9.5, s_x = 0.966, s_y = .85, s_width = 1.27,
        s_height = 1.48, p_color = col_text, h_fill = col_bg,
        spotlight = TRUE, l_x = 1.25, l_y = 0.75, l_alpha = 0.5,
        h_color = col_border, filename="CAMERA_hl.png", p_family = "Aller_Lt",
        u_color = col_border, url = "www.bioconductor.org")
