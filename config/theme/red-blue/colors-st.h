const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#000000", /* black   */
  [1] = "#e51a1a", /* red     */
  [2] = "#e51a1a", /* green   */
  [3] = "#4b96eb", /* yellow  */
  [4] = "#4b96eb", /* blue    */
  [5] = "#4b96eb", /* magenta */
  [6] = "#86b5eb", /* cyan    */
  [7] = "#ffffff", /* white   */

  /* 8 bright colors */
  [8]  = "#aaaaaa",  /* black   */
  [9]  = "#e51a1a",  /* red     */
  [10] = "#e51a1a", /* green   */
  [11] = "#4b96eb", /* yellow  */
  [12] = "#4b96eb", /* blue    */
  [13] = "#4b96eb", /* magenta */
  [14] = "#86b5eb", /* cyan    */
  [15] = "#ffffff", /* white   */

  /* special colors */
  [256] = "#000000", /* background */
  [257] = "#ffffff", /* foreground */
  [258] = "#ffffff",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
