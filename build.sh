# Build a jar containing the Obsidian theme, that is importable into a JetBrains IDE.

touch 'IntelliJ IDEA Global Settings'

mkdir colors
cp Obsidian.icls colors

mkdir options
cat <<EOF > options/colors.scheme.xml
<application>
  <component name="EditorColorsManagerImpl">
    <global_color_scheme name="Obsidian" />
  </component>
</application>
EOF

jar cfM Obsidian.jar 'IntelliJ IDEA Global Settings' colors options

rm 'IntelliJ IDEA Global Settings'
rm -rf colors
rm -rf options
