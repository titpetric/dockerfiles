#!/bin/bash
PHP_DISPLAY_ERRORS=${PHP_DISPLAY_ERRORS:-0}
if [[ "$PHP_DISPLAY_ERRORS" == "1" ]]; then
	sed -i -e 's/^display_errors.*/display_errors = On/' $(find /etc/php -name 'php.ini')
fi
