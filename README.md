# ubuntu-life
A collection of tips and tools to make my ubuntu experience even better


## 

#### Remove snap

```
curl -o- https://raw.githubusercontent.com/mwarevn/ubuntu-life/main/fuck-snap.sh | bash
```

#### Re-install kernel

```
sudo apt update
sudo apt upgrade
sudo apt install --install-recommends linux-generic
sudo reboot
```

#### Ibus unikey

  https://github.com/mwarevn/ibus-unikey


#### Changle color of title buttons

- make file in: `~/.config/gtk-4.0/gtk.css`

- css:

  ```
    headerbar button.close {
        color: #ff5c5c;
    }
    
    headerbar button.minimize {
        color: #ffbd44;
    }
    
    headerbar button.maximize {
        color: #28c840;
    }
  ```
