# notify2tox
Forward dbus notification to some tox messenger.
Could be triggerd by any application or just notify-send in some script.

#Getting started:

notify2tox requires:
* ratox,
* and bash.

ratox is a client implementation of the tox protocol. It allows complete interaction through named pipes.
How to install ratox: http://git.z3bra.org/ratox/file/README.html

After installing ratox clone the repository:

```bash
git clone https://github.com/d4ndo/notify2tox.git
```

#Usage:

Start the bot:

```bash
cd notify2tox

# start the ratox client first
ratox notify

# start notify2tox
# report every notification to TOXID
./notify2tox.sh TOXID
```

To add notify2tox to your friendlist, do this:

```bash
echo TOXID > ./request/in
```

To test your settings use the command notify-send:

```bash
notify-send "Hello World"
```

Some other useful commands:

```bash
#allow request
echo 1 > ./request/out/TOXID

#returns TOXID from notify2tox bot
cat id

#change nickname to "notify"
echo notify > ./name/in
```
