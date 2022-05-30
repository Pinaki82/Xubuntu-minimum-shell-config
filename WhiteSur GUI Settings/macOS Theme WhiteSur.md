## macOS Theme WhiteSur

Go to the HOME folder.

```
cd ~/
```

Place the script `whitesur.sh`. Allow it to execute by changing the permission parameter, `chmod +x whitesur.sh`. Run the script.

```
./whitesur.sh
```

#### Firewall: Turn on the Firewall.

```
sudo apt install gufw
```

Whisker Menu -> Settings Manager -> Firewall Configuration

![Settings-Firewall-000](https://user-images.githubusercontent.com/16861933/139431182-af5a6f47-1cb1-4fd3-93f1-e507e3889b1c.png)

![Settings-Firewall-001](https://user-images.githubusercontent.com/16861933/139431222-6ec5672d-d2f7-4210-815b-e2f81b8870b2.png)

#### Shift the "Minimise, Maximise, Close" buttons to the left side and change the order of the button arrangement.

Whisker Menu -> Settings -> Settings Editor -> **xfwm4** -> **button_layout** -> `CMHS|O`

Notice that the default was `O|HMC`

![Settings-Editor-Window-Button-Layout-CMH-pipe-O](https://user-images.githubusercontent.com/16861933/139431305-0ea97734-8916-45ad-8d85-b7065842a4a9.png)

Hide Desktop Icons.

Whisker Menu -> Settings  -> Settings Manager -> Desktop -> Icons -> Icon Type

Select 'None'.

The default was 'File/launcher icons'.

![Desktop-Icons](https://user-images.githubusercontent.com/16861933/139431409-353023a9-e41d-4191-9f97-1a8ce79efff3.png)

Remember that 'Filesystem' and 'Removable Devices' were previously turned off by default.

First Things First. Back up your current/default panel configuration, and give it a name.

Whisker Menu -> Settings -> Settings Manager -> Panel Profiles -> Save Configuration

Give it a name, e.g. 'Xubuntu 22 Default'.

![Panel-Config-Bak-000](https://user-images.githubusercontent.com/16861933/139431539-1e68f5ec-b71a-4a5c-8cde-410e7d052b1e.png)

![Panel-Config-Bak-001](https://user-images.githubusercontent.com/16861933/139431650-15caeb59-ea4b-4c90-aa26-b7d7bf14e34f.png)

Default Whisker Menu Settings Screenshots. In case you mangle Whisker Menu, you have the screenshots from where you can restore the default settings as a last resort. Although, nothing bad will happen since you're not going to change too much of the Whisker Menu settings.

Whisker Menu -> Settings -> Panel Preferences -> Whisker Menu

Click on the wrench icon to edit the setting when needed.

![e2356c2881d87c76aa1bc4f3d9248532f08c9f51](https://user-images.githubusercontent.com/16861933/171023120-1b293b4c-1593-434b-9823-25f13bd3da21.png)

![2022-05-30-20-24-14-Screenshot_2022-05-30_00-55-30](https://user-images.githubusercontent.com/16861933/171023371-a6930488-6914-4cca-9eee-bee2188a0e8c.png)

![2022-05-30-20-24-29-Screenshot_2022-05-30_00-55-37](https://user-images.githubusercontent.com/16861933/171023458-88c8308f-8543-4a1c-b7d2-c28305e7b98c.png)

![2022-05-30-20-24-42-Screenshot_2022-05-30_00-55-58](https://user-images.githubusercontent.com/16861933/171023561-1b29e2f4-d255-47e7-acf8-073c4cad854b.png)

![2022-05-30-20-24-56-Screenshot_2022-05-30_00-56-05](https://user-images.githubusercontent.com/16861933/171023653-57d187d6-c15b-46e6-9c16-f4b128db82f3.png)

The Default Theme: Keep a note of your default theme. Here are the screenshots.

Whisker Menu -> Settings -> Appearance

![000-default_style](https://user-images.githubusercontent.com/16861933/139432324-1114cd14-ab5f-415d-a723-11b9f659eaeb.png)

![001-default_icons](https://user-images.githubusercontent.com/16861933/139432346-95a73b8f-cc33-40ec-a8dd-c3347bcca96e.png)

![002-default_fonts](https://user-images.githubusercontent.com/16861933/139432369-baa095b9-3be4-4fad-aff4-9aa0fc97b9f4.png)

Whisker Menu -> Settings -> Window Manager

![2022-05-30-20-25-29-Screenshot_2022-05-30_00-59-18](https://user-images.githubusercontent.com/16861933/171023979-2ae78b0f-21d6-47b4-b850-afec9f6f2921.png)

![default_others_1](https://user-images.githubusercontent.com/16861933/139432441-e0a69dde-046b-4662-8230-2cb60800fef6.png)

![default_others_2](https://user-images.githubusercontent.com/16861933/139432456-745d35d2-0155-40a1-9789-7a759809ffa1.png)

![default_others_3](https://user-images.githubusercontent.com/16861933/139432503-d74a0971-fcca-4a23-acc3-8fb65974e8e0.png)

It's time to change the theme to WhiteSur.

Whisker Menu -> Settings -> Appearance

Whisker Menu -> Settings -> Window Manager

![Appearance-000-Style](https://user-images.githubusercontent.com/16861933/139432686-b0f85a5d-301e-4dae-a3a8-3cbcdc3d03da.png)

You can also install the **Papirus** icon theme for Ubuntu.

https://github.com/PapirusDevelopmentTeam/papirus-icon-theme#installation

```
yes | sudo add-apt-repository ppa:papirus/papirus
```

```
yes | sudo apt update
```

```
sudo apt install papirus-icon-theme -y
```

Some other icon themes, if you want:

Moka

https://snwh.org/moka

```
yes | sudo add-apt-repository -u ppa:snwh/ppa
```

```
yes | sudo apt update
```

```
sudo apt install moka-icon-theme -y
```

Paper

https://snwh.org/paper/download

```
yes | sudo add-apt-repository -u ppa:snwh/ppa
```

```
yes | sudo apt update
```

```
sudo apt install paper-icon-theme -y
```

Change the icon theme to Papirus or WhiteSur.

![2022-05-30-20-29-15-Screenshot_2022-05-30_01-29-28](https://user-images.githubusercontent.com/16861933/171024138-0f75596c-16cf-4eb9-901d-8f385235d5de.png)

OR

![Appearance-001-Icons](https://user-images.githubusercontent.com/16861933/139432710-8421e9bc-48a6-4fef-9bae-f11a8cad7ca4.png)

![Appearance-002-Settings](https://user-images.githubusercontent.com/16861933/139432747-2d3d7a3d-cf7d-4bf3-ad69-ac4fc10b17f6.png)

![Window-Manager-000-Style](https://user-images.githubusercontent.com/16861933/139432948-412a93a3-26f5-4b42-96db-517e82aa4b3f.png)

Change a few settings in the 'Window Manager Tweaks' to get a feel from your DE that resembles macOS.

Whisker Menu -> Settings -> Window Manager Tweaks

The default:

![2022-05-30-20-28-09-Screenshot_2022-05-30_01-03-22](https://user-images.githubusercontent.com/16861933/171024581-5c841885-949c-4d63-9ee0-0aac9409c37b.png)

New:

![WM-Tweak-000](https://user-images.githubusercontent.com/16861933/139433060-1478ad30-509a-41e2-890d-0b8e23f7f09c.png)

settings > window manager tweaks > accessibilty > check "Automatically tile wondows when moving towards the screen edge"

![WM-Tweak-001](https://user-images.githubusercontent.com/16861933/139433088-0572c745-43a6-4092-8a9d-a09e1a93dfb3.png)

Add MS Windows-like right-click Context Menu to the Desktop.

Whisker Menu -> Settings > Desktop

![2022-05-30-20-30-47-Screenshot_2022-05-30_01-31-56](https://user-images.githubusercontent.com/16861933/171024683-8769da7c-a752-4ed1-aa7e-dd1398515320.png)

Run the command `plank --preferences`.  Adjust the icon size and zoom level in the Plank dock. Change the default theme to something else if that looks better according to your choice.

![Plank-Dock-Settings-000](https://user-images.githubusercontent.com/16861933/139433202-c1662b2d-e724-4eab-93ff-5ffe8a0ccb49.png)

![Plank-Dock-Settings-001](https://user-images.githubusercontent.com/16861933/139433233-59e4c688-115c-40d9-ad33-a02d9f75cc90.png)

![Plank-Dock-Settings-002](https://user-images.githubusercontent.com/16861933/139433257-6cc668ab-a237-4c76-8264-df1476497b82.png)

Apply a new mouse theme which is identical to the mouse theme of the WhiteSur.

Whisker Menu -> Settings -> Mouse and Touchpad -> Theme

![Mouse-n-Touchpad-Theme](https://user-images.githubusercontent.com/16861933/139433536-432c8115-d550-46d3-81d1-44c1b0ed55dd.png)

Whisker Menu -> Settings -> Keyboard -> Application Shortcuts

Add a system-wide keyboard shortcut to trigger application search with the Rofi launcher.

Click on the Add button. Paste the following commands and type a key sequence that triggers Rofi with the command below. I set `<Super(WINDOWS)> + <Space>`.

```
rofi -combi-modi window,drun,ssh -theme solarized -font "hack 10" -show combi -icon-theme "WhiteSur" -show-icons
```

Ref 1: https://wiki.archlinux.org/title/Rofi

Ref 2: https://www.unixmen.com/how-to-add-shortcut-keys-in-xfce/

![Keyboards-Application-Shortcuts-000-Rofi-as-Synapse-Program-Search](https://user-images.githubusercontent.com/16861933/139433671-e5f93857-5c5b-47ec-af5a-6fd6494dcec1.png)

![Keyboards-Application-Shortcuts-001-Rofi-as-Synapse-Program-Search](https://user-images.githubusercontent.com/16861933/139433695-2614b617-c62c-4b6a-90fd-71284222cdfb.png)

Rofi program search:

![e6d322e298cbeb07be47e147d123c2f39a4ee150](https://user-images.githubusercontent.com/16861933/171024822-b9237edb-7028-4381-95b8-c92e8078e194.png)

Now customise the panel to give your setup a bit macOS  like appeal.

Clock Format:
R-Click on the Clock -> Properties -> Clock Options

Or change the clock format in the panel preferences.

Whisker Menu -> Settings -> Panel Preferences -> Items -> Clock -> Settings -> FORMAT

`%a %d %b %I:%M:%S %p`

![PanelPreferences014ClockFormat](https://user-images.githubusercontent.com/16861933/139434246-74c3190d-dad8-4817-9493-ef0b573bede7.png)

Add two workspaces or more. Change some settings to make the workspace switcher small.

Whisker Menu -> Settings -> Panel -> Panel Preferences

Add a new Item, 'Workspace Switcher'.

![Panel_Preferences-015-Workspace-Switcher](https://user-images.githubusercontent.com/16861933/139434269-0ce4c742-91c0-41f9-8a02-98b8aadaa544.png)

![Panel_Preferences-016-Workspace-Switcher](https://user-images.githubusercontent.com/16861933/139434301-9a223d54-51cb-4a26-885b-c65b1a2cbefe.png)

Enable 'Window Grouping'. Edit the item, 'Window Buttons' as shown below.

Change Behaviour -> Window Grouping to 'Always' from 'Never'.

Old:

![2022-05-30-20-32-36-Screenshot_2022-05-30_19-04-26](https://user-images.githubusercontent.com/16861933/171025263-57ca9cb9-11dd-4925-bfaf-7619ec840b6a.png)

New:

![2022-05-30-20-33-25-Screenshot_2022-05-30_19-06-05](https://user-images.githubusercontent.com/16861933/171025330-a267c89d-02c6-41ae-9930-bff3737c91c4.png)

----

In case you want to use AppMenu XFCE Plugin (which I don't recommend):

Whisker Menu -> Settings -> Panel Preferences

![000-R_Click-Panel-Panel_Preferences](https://user-images.githubusercontent.com/16861933/139433889-3c258949-cfe3-4b76-86d6-9c25828fda7a.png)

![Panel_Preferences-000](https://user-images.githubusercontent.com/16861933/139433968-357ebc1e-e714-40bf-be1c-caf161c83a7e.png)

![Panel_Preferences-001](https://user-images.githubusercontent.com/16861933/139433999-7323da8a-39ff-4d91-9c1a-d31f7ea45028.png)

![Panel_Preferences-006-AppMenu-XFCE-Plug](https://user-images.githubusercontent.com/16861933/139434102-febc3b7a-2b71-424b-85b2-3a27c9ea6518.png)

![Panel_Preferences-007-sep](https://user-images.githubusercontent.com/16861933/139434115-d01f91cf-4de2-49fc-aaa6-6e29584086be.png)

![Panel_Preferences-008-Window-Buttons](https://user-images.githubusercontent.com/16861933/139434133-3143835c-2942-47ac-ba46-f19abd6f6240.png)

![Panel_Preferences-009-sep](https://user-images.githubusercontent.com/16861933/139434146-5c8e1472-b52a-48fb-af6f-95c16c4ce7da.png)

![Panel_Preferences-010-Weather-Update](https://user-images.githubusercontent.com/16861933/139434167-009f5840-928e-4aae-b964-994e0555af92.png)

![Panel_Preferences-011-Weather-Update](https://user-images.githubusercontent.com/16861933/139434185-c94e8bb4-b216-4f11-a6c1-07f5d511f459.png)

![Panel_Preferences-012](https://user-images.githubusercontent.com/16861933/139434205-a4665c56-bfb6-496a-b902-392a053bcf52.png)

![Panel_Preferences-013-sep](https://user-images.githubusercontent.com/16861933/139434220-275a90e6-bdca-436c-8b92-5a53f958db55.png)

---

Whether you want to use XFCE AppMenu Plugin or not, you will need Plank Dock and Conky Desktop Widget manager. The steps written above may not be necessary, but Conky and Plank's configurations are essential.

Add Conky Desktop Widget and Plank Dock to system startup.

![Session-n-Startup-000-Conky](https://user-images.githubusercontent.com/16861933/139437063-8620d1f1-177d-4f47-b843-05249770f90d.png)

![Session-n-Startup-001-Conky-2](https://user-images.githubusercontent.com/16861933/139437104-869cdfe8-0881-4aba-ad87-be4ce510449b.png)

![Session-n-Startup-002-Plank](https://user-images.githubusercontent.com/16861933/139437141-6faa729a-5e41-4989-a8f9-307ad5f7f3a3.png)

![Session-n-Startup-003-Plank-2](https://user-images.githubusercontent.com/16861933/139437213-607de3f0-9f8f-4efd-84fe-1cfe5a4cf7d1.png)

The Final Look.

![a998a8f60fa2bf30dd7164d3ee3b1ad7463e3148](https://user-images.githubusercontent.com/16861933/171025507-8b8b72eb-bc17-4e45-858f-5c2e4e767c1f.png)

Extra:
Do you plan to use Veracrypt? Simple Veracrypt volumes created by Zulucrypt on Linux can be accessed by Veracypt on Windows. Volumes encrypted with key files by Zulucrypt cannot be accessed on Windows. Install Veracrypt in that case for better compatibility.
Here's the settings:

![139437463-a9925679-c460-4103-bd35-2c465b3c3e63](https://user-images.githubusercontent.com/16861933/171028664-55bf8523-b0de-41ca-9809-2faaf678a066.png)

**My two cents**, avoid installing way too many icons and themes. I don't modify the DE other than changing the clock display format and shifting the close-maximise-minimise buttons to the top-left. Excessive customisation can be a performance penalty later. Convenience should be another consideration. Icons and themes also take up drive space.
