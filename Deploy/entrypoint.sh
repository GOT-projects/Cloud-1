sleep 4.2
wp --allow-root core install --url=$WP_DOMAIN --title="$WP_TITLE" --admin_user=$WP_ADMIN_USER --admin_password=$WP_ADMIN_PWD --admin_email=$WP_ADMIN_EMAIL
