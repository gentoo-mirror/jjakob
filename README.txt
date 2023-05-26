This is an unofficial Gentoo overlay repository maintained by me (jjakob).

I prefer if you add this upstream directly to repos.conf instead of using
'eselect repository'. This way portage can gpg verify commit signatures while
syncing. The mirrors that Gentoo creates do not have gpg signed commits.

To use:
- mask all packages in this overlay:
  echo printf '%s' "*/*::jjakob" > /etc/portage/package.mask/repo_jjakob
- add my gpg public key to root's gpg trust store (This will download my key
  and mark it as ultimately trusted in root's trust store. If you wish to contact
  me to arrange key signing please do!):
  - as user:
    - gpg --recv-keys 32238A107C6830B72F45042DEAF0634961C07989
    - gpg --output jjakob.gpg --export 32238A107C6830B72F45042DEAF0634961C07989
  - as root:
    - gpg --import jjakob.gpg
    - gpg --edit-key 32238A107C6830B72F45042DEAF0634961C07989 <<-"EOF"
	trust
	5
	q
	EOF
- cat > /etc/portage/repos.conf/jjakob <<- "EOF"
	[jjakob]
	location = /var/db/repos/jjakob
	sync-type = git
	sync-uri = https://github.com/jjakob/gentoo-overlay.git
	# comment this if portage can't verify signatures
	sync-git-verify-commit-signature = true
	EOF
- unmask the packages you need, for example:
  printf '%s\n' "net-im/gomuks::jjakob" >>
	/etc/portage/package.unmask/repo_jjakob
- sync and install packages as usual

Packages:
- net-im/gomuks
	To use, you must also enable the "guru" repository. I recommend using
	the same method of masking and unmasking the overlay as above.
	To install:
	  - unmask net-im/gomuks::jjakob and dev-libs/olm::guru
	  - printf '%s\n' "net-im/gomuks::jjakob" "dev-libs/olm::guru" >
	    /etc/portage/package.accept_keywords/gomuks
	  - emerge -a net-im/gomuks

- mail-mta/dma
	"Dragonfly Mail Agent", https://github.com/corecode/dma
	Version 9999 points to my fork https://github.com/jjakob/dma
	branch "rewriteheaderfrom".
	Other versions point to official releases.

	To install:
	  - printf '%s' "virtual/mta::gentoo" > /etc/portage/package.mask/mta
	  - unmask mail-mta/dma::jjakob
	  - printf '%s' "=mail-mta/dma-9999 **" >
	    /etc/portage/package.accept_keywords/dma
	      or, to use the official releases:
	    printf '%s' "mail-mta/dma" >
	    /etc/portage/package.accept_keywords/dma
	  - emerge -a mail-mta/dma

- virtual/mta
	copy of virtual/mta::gentoo with added mail-mta/dma

- net-p2p/monero-gui
	copy of net-p2p/monero-gui::booboo
	updated version, fixed issues preventing a successful build

- net-analyzer/cnping
- www-client/vimb
- www-misc/wyebadblock

- app-crypt/pynitrokey
	https://github.com/Nitrokey/pynitrokey
	To install:
	  - enable overlay "guru" (mask it as described above)
	  - cat >> /etc/portage/package.accept_keywords/pynitrokey <<-"EOF"
		app-crypt/pynitrokey::jjakob
		app-crypt/libnitrokey::jjakob
		dev-python/libusb1::jjakob
		dev-python/python-fire::guru
		dev-python/nkdfu::jjakob
		dev-python/spsdk::jjakob
		dev-python/bincopy::jjakob
		dev-python/humanfriendly::gentoo
		dev-python/argparse-addons::jjakob
		dev-python/hexdump::jjakob
		dev-libs/libusbsio::jjakob
		dev-python/pylink-square::jjakob
		dev-python/sly-python::jjakob
		dev-python/tlv8::jjakob
		dev-python/click-option-group::guru
		dev-python/click-command-tree::guru
		dev-python/pyocd::jjakob
		dev-python/cmsis-pack-manager::jjakob
		dev-python/oscrypto::guru
		dev-libs/hidapi::gentoo

		# for USE=doc, optional
		dev-python/sphinx-click::guru
		EOF
	  - if you have masked overlays, unmask all the above packages
	  - emerge -a app-crypt/pynitrokey
