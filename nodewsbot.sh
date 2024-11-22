while true; do
    systemctl is-active --quiet nodews1.service

    if [ $? -ne 0 ]; then
        systemctl enable nodews1.service
        systemctl start nodews1.service

        if [ $? -eq 0 ]; then
            echo "nodews1.service has been successfully started."
        else
            echo "Failed to start nodews1.service."
        fi
    else
        echo "nodews1.service is running."
    fi

    sleep 5
done
