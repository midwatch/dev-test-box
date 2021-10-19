echo "Update PATH"
echo 'PATH="/vagrant/bin:$PATH"' >> /home/$USER/.profile

echo "Install pipx"
python3 -m pip install --user pipx
python3 -m pipx ensurepath

echo "Cache github ssh fingerprint"
sh -c "ssh -T git@github.com -o StrictHostKeyChecking=no; true"
