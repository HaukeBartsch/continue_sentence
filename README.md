# Use GPT2 to continue a sentence

Nothing much to it:
```
docker build -t titles -f Dockerfile .
docker run --rm -it titles --prompt "Hepatoscintigraphy, arteriography, and ultrasonography in preoperative diagnosis of " --length 100
=== GENERATED SEQUENCE 1 ===
Hepatoscintigraphy, arteriography, and ultrasonography in preoperative diagnosis of erythematous nephropathy (from the theory of longitudinal ultrasonography). Ludwig van Beethoven's 1919 16th century symphony in which characters form the melody were presented in a violin case, using biophysiological signals that would lead to adult onset of nephropathy and- A. E. Hardini and Abel Cardone Stouro (1638–1643), two British physicians. Of the more recent musical taste tests used here, most suggest that (a
```