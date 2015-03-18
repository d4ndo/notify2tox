# notify2tox
A bash script to forward dbus notify to tox.

#Getting started:

notify2tox requires:
* ratox,
* and bash.

ratox is a client implementation of the tox protocol. It allows complete interaction through named pipes.
How to install ratox: https://wiki.tox.im/Ratox

After installing ratox clone the repository:

```bash
git clone https://github.com/d4ndo/notify2tox.git
```

#Usage:

Start the bot:

```bash
cd notify2tox

# start ratox client first
ratox notify2tox
# start the bash script
# report every notificatio to TOXID
./notify2tox TOXID
```

Howto add notify2tox to your friendlist:

```bash
echo TOXID > ./request/in
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
