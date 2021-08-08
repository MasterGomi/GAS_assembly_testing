# $1 should be target program to disassemble

ddisasm $1 --asm temp.s > /dev/null 2>&1
rm $1
sed -i -e '/ret/i call HelloWorld' -e '3r HelloWorldInject.s' temp.s
gcc -o $1 temp.s
rm temp.s
