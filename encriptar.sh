if [ ! -f "/usr/bin/shc" ]; then
	echo "Instalando shc..."
	sudo apt-get install shc
	echo "SHC instalado."
fi

shc script.sh
shc iniciar.sh
mv script.sh.x script
mv iniciar.sh.x iniciar
rm script.sh
rm iniciar.sh
rm script.sh.x.c
rm iniciar.sh.x.c
chmod a+x script && chmod a+x iniciar
bash iniciar
