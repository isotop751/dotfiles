
if status is-interactive
    # Commands to run in interactive sessions can go here
end
source ~/.profile
fish_add_path -m ~/.local/bin
# oh-my-posh init fish --config ~/.cache/oh-my-posh/themes/cloud-native-azure.omp.json| source
oh-my-posh init fish --config ~/.cache/oh-my-posh/themes/sonicboom_dark.omp.json| source
#oh-my-posh init fish --config ~/.cache/oh-my-posh/themes/illusi0n.omp.json| source

# zoxide
zoxide init fish | source
