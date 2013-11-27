


echo "Installing JDK........................."
apt-get install -y openjdk-7-jdk


echo "Installing Git........................."
apt-get install -y git

echo "Installing PEAR Package Manger"
apt-get install -y php-pear


echo "Installing PHPUNIT........................."
 pear channel-discover pear.pdepend.org
 pear channel-discover pear.phpmd.org
 pear channel-discover pear.phpunit.de
 pear channel-discover components.ez.no
 pear channel-discover pear.symfony-project.com
 pear install pdepend/PHP_Depend
 pear install phpmd/PHP_PMD
 pear install  --force --alldeps phpunit/phpunit
 pear install phpunit/phploc
 pear install PHPDocumentor
 pear install PHP_CodeSniffer
 pear install --alldeps phpunit/PHP_CodeBrowser
 pear install  phpunit/PHP_CodeCoverage
 pear install  phpunit/DbUnit
 pear install  phpunit/PHPUnit_Selenium
 pear install  phpunit/phpcpd

echo "Installing Sqlite........................."
apt-get install php5-sqlite

