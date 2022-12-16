#!/bin/sh

echo "Class name:"
read CLASS_NAME
FILE_NAME="${CLASS_NAME^}.hpp"
echo "#ifndef ${CLASS_NAME^^}_HPP" > $FILE_NAME
echo "#define ${CLASS_NAME^^}_HPP" >> $FILE_NAME
echo "" >> $FILE_NAME
echo "Class ${CLASS_NAME^}" >> $FILE_NAME
echo "{" >> $FILE_NAME
echo "" >> $FILE_NAME
echo "private:" >> $FILE_NAME
echo "" >> $FILE_NAME
echo "	//private attributes here" >> $FILE_NAME
echo "" >> $FILE_NAME
echo "public:" >> $FILE_NAME
echo "" >> $FILE_NAME
echo "	"${CLASS_NAME^}"(void);" >> $FILE_NAME
echo "	"${CLASS_NAME^}"(const ${CLASS_NAME^} & other);" >> $FILE_NAME
echo "	"~${CLASS_NAME^}"(void);" >> $FILE_NAME
echo "	"${CLASS_NAME} "operator=(const ${CLASS_NAME^} & other);" >> $FILE_NAME
echo "" >> $FILE_NAME
echo "};" >> $FILE_NAME
echo "" >> $FILE_NAME
echo "#endif" >> $FILE_NAME
FILE_NAME="${CLASS_NAME^}.cpp"
echo "#include \"${CLASS_NAME^}.hpp\"" > $FILE_NAME
echo "" >> $FILE_NAME
echo "${CLASS_NAME^}::${CLASS_NAME^}(void)" >> $FILE_NAME
echo "{" >> $FILE_NAME
echo "	std::cout << \"Default constructor called\" << std::endl;" >> $FILE_NAME
echo "}" >> $FILE_NAME
echo "" >> $FILE_NAME
echo "${CLASS_NAME^}::${CLASS_NAME^}(const ${CLASS_NAME^} & other)" >> $FILE_NAME
echo "{" >> $FILE_NAME
echo "	std::cout << \"Default copy constructor called\" << std::endl;" >> $FILE_NAME
echo "}" >> $FILE_NAME
echo "" >> $FILE_NAME
echo "${CLASS_NAME^}::~${CLASS_NAME^}(void)" >> $FILE_NAME
echo "{" >> $FILE_NAME
echo "	std::cout << \"Default destructor called\" << std::endl;" >> $FILE_NAME
echo "}" >> $FILE_NAME
echo "" >> $FILE_NAME
echo "${CLASS_NAME^}::operator=(const ${CLASS_NAME^} & other)" >> $FILE_NAME
echo "{" >> $FILE_NAME
echo "	//copy operations here" >> $FILE_NAME
echo "	std::cout << \"Assignment operator called\" << std::endl;" >> $FILE_NAME
echo "	return (*this);" >> $FILE_NAME
echo "}" >> $FILE_NAME
