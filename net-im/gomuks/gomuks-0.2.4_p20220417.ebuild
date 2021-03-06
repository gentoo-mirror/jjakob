# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="A terminal based Matrix client written in Go"
HOMEPAGE="https://github.com/tulir/gomuks"
LICENSE="AGPL-3 Apache-2.0 BSD BSD-2 MIT MPL-2.0"
SLOT="0"
IUSE="+encryption"
EGO_PN="github.com/tulir/gomuks"

inherit go-module
EGO_SUM=(
	"github.com/alecthomas/chroma v0.10.0"
	"github.com/alecthomas/chroma v0.10.0/go.mod"
	"github.com/davecgh/go-spew v1.1.0/go.mod"
	"github.com/davecgh/go-spew v1.1.1"
	"github.com/davecgh/go-spew v1.1.1/go.mod"
	"github.com/disintegration/imaging v1.6.2"
	"github.com/disintegration/imaging v1.6.2/go.mod"
	"github.com/dlclark/regexp2 v1.4.0"
	"github.com/dlclark/regexp2 v1.4.0/go.mod"
	"github.com/gabriel-vasile/mimetype v1.4.0"
	"github.com/gabriel-vasile/mimetype v1.4.0/go.mod"
	"github.com/gdamore/encoding v1.0.0"
	"github.com/gdamore/encoding v1.0.0/go.mod"
	"github.com/gorilla/mux v1.8.0"
	"github.com/gorilla/mux v1.8.0/go.mod"
	"github.com/gorilla/websocket v1.5.0"
	"github.com/gorilla/websocket v1.5.0/go.mod"
	"github.com/kr/pretty v0.1.0"
	"github.com/kr/pretty v0.1.0/go.mod"
	"github.com/kr/pty v1.1.1/go.mod"
	"github.com/kr/text v0.1.0"
	"github.com/kr/text v0.1.0/go.mod"
	"github.com/kyokomi/emoji/v2 v2.2.9"
	"github.com/kyokomi/emoji/v2 v2.2.9/go.mod"
	"github.com/lithammer/fuzzysearch v1.1.3"
	"github.com/lithammer/fuzzysearch v1.1.3/go.mod"
	"github.com/lucasb-eyer/go-colorful v1.2.0"
	"github.com/lucasb-eyer/go-colorful v1.2.0/go.mod"
	"github.com/mattn/go-runewidth v0.0.13"
	"github.com/mattn/go-runewidth v0.0.13/go.mod"
	"github.com/mattn/go-sqlite3 v1.14.12"
	"github.com/mattn/go-sqlite3 v1.14.12/go.mod"
	"github.com/nu7hatch/gouuid v0.0.0-20131221200532-179d4d0c4d8d"
	"github.com/nu7hatch/gouuid v0.0.0-20131221200532-179d4d0c4d8d/go.mod"
	"github.com/petermattis/goid v0.0.0-20180202154549-b0b1615b78e5"
	"github.com/petermattis/goid v0.0.0-20180202154549-b0b1615b78e5/go.mod"
	"github.com/pkg/diff v0.0.0-20210226163009-20ebb0f2a09e/go.mod"
	"github.com/pmezard/go-difflib v1.0.0"
	"github.com/pmezard/go-difflib v1.0.0/go.mod"
	"github.com/rivo/uniseg v0.2.0"
	"github.com/rivo/uniseg v0.2.0/go.mod"
	"github.com/rogpeppe/go-internal v1.8.1/go.mod"
	"github.com/sasha-s/go-deadlock v0.3.1"
	"github.com/sasha-s/go-deadlock v0.3.1/go.mod"
	"github.com/stretchr/objx v0.1.0/go.mod"
	"github.com/stretchr/testify v1.7.0/go.mod"
	"github.com/stretchr/testify v1.7.1"
	"github.com/stretchr/testify v1.7.1/go.mod"
	"github.com/tidwall/gjson v1.12.1/go.mod"
	"github.com/tidwall/gjson v1.14.0"
	"github.com/tidwall/gjson v1.14.0/go.mod"
	"github.com/tidwall/match v1.1.1"
	"github.com/tidwall/match v1.1.1/go.mod"
	"github.com/tidwall/pretty v1.2.0"
	"github.com/tidwall/pretty v1.2.0/go.mod"
	"github.com/tidwall/sjson v1.2.4"
	"github.com/tidwall/sjson v1.2.4/go.mod"
	"github.com/yuin/goldmark v1.4.11"
	"github.com/yuin/goldmark v1.4.11/go.mod"
	"github.com/zyedidia/clipboard v1.0.3"
	"github.com/zyedidia/clipboard v1.0.3/go.mod"
	"go.etcd.io/bbolt v1.3.6"
	"go.etcd.io/bbolt v1.3.6/go.mod"
	"go.mau.fi/cbind v0.0.0-20220415094356-e1d579b7925e"
	"go.mau.fi/cbind v0.0.0-20220415094356-e1d579b7925e/go.mod"
	"go.mau.fi/mauview v0.1.4-0.20220416164650-aac1ebd3a472"
	"go.mau.fi/mauview v0.1.4-0.20220416164650-aac1ebd3a472/go.mod"
	"go.mau.fi/tcell v0.0.0-20220415093808-07c67d224693/go.mod"
	"go.mau.fi/tcell v0.0.0-20220416164612-f5dbb33f6c9c"
	"go.mau.fi/tcell v0.0.0-20220416164612-f5dbb33f6c9c/go.mod"
	"golang.org/x/crypto v0.0.0-20220408190544-5352b0902921"
	"golang.org/x/crypto v0.0.0-20220408190544-5352b0902921/go.mod"
	"golang.org/x/image v0.0.0-20191009234506-e7c1f5e7dbb8/go.mod"
	"golang.org/x/image v0.0.0-20220413100746-70e8d0d3baa9"
	"golang.org/x/image v0.0.0-20220413100746-70e8d0d3baa9/go.mod"
	"golang.org/x/net v0.0.0-20210505024714-0287a6fb4125/go.mod"
	"golang.org/x/net v0.0.0-20211112202133-69e39bad7dc2/go.mod"
	"golang.org/x/net v0.0.0-20220407224826-aac1ed45d8e3/go.mod"
	"golang.org/x/net v0.0.0-20220412020605-290c469a71a5"
	"golang.org/x/net v0.0.0-20220412020605-290c469a71a5/go.mod"
	"golang.org/x/sync v0.0.0-20210220032951-036812b2e83c/go.mod"
	"golang.org/x/sys v0.0.0-20200923182605-d9f96fdee20d/go.mod"
	"golang.org/x/sys v0.0.0-20201119102817-f84b799fce68/go.mod"
	"golang.org/x/sys v0.0.0-20210423082822-04245dca01da/go.mod"
	"golang.org/x/sys v0.0.0-20210615035016-665e8c7367d1/go.mod"
	"golang.org/x/sys v0.0.0-20211216021012-1d35b9e2eb4e/go.mod"
	"golang.org/x/sys v0.0.0-20220412211240-33da011f77ad"
	"golang.org/x/sys v0.0.0-20220412211240-33da011f77ad/go.mod"
	"golang.org/x/term v0.0.0-20201126162022-7de9c90e9dd1/go.mod"
	"golang.org/x/term v0.0.0-20210927222741-03fcf44c2211/go.mod"
	"golang.org/x/term v0.0.0-20220411215600-e5f449aeb171"
	"golang.org/x/term v0.0.0-20220411215600-e5f449aeb171/go.mod"
	"golang.org/x/text v0.3.0/go.mod"
	"golang.org/x/text v0.3.6/go.mod"
	"golang.org/x/text v0.3.7"
	"golang.org/x/text v0.3.7/go.mod"
	"golang.org/x/tools v0.0.0-20180917221912-90fa682c2a6e/go.mod"
	"gopkg.in/check.v1 v0.0.0-20161208181325-20d25e280405/go.mod"
	"gopkg.in/check.v1 v1.0.0-20180628173108-788fd7840127"
	"gopkg.in/check.v1 v1.0.0-20180628173108-788fd7840127/go.mod"
	"gopkg.in/errgo.v2 v2.1.0/go.mod"
	"gopkg.in/toast.v1 v1.0.0-20180812000517-0a84660828b2"
	"gopkg.in/toast.v1 v1.0.0-20180812000517-0a84660828b2/go.mod"
	"gopkg.in/vansante/go-ffprobe.v2 v2.0.3"
	"gopkg.in/vansante/go-ffprobe.v2 v2.0.3/go.mod"
	"gopkg.in/yaml.v2 v2.4.0"
	"gopkg.in/yaml.v2 v2.4.0/go.mod"
	"gopkg.in/yaml.v3 v3.0.0-20200313102051-9f266ea9e77c/go.mod"
	"gopkg.in/yaml.v3 v3.0.0-20210107192922-496545a6307b"
	"gopkg.in/yaml.v3 v3.0.0-20210107192922-496545a6307b/go.mod"
	"maunium.net/go/maulogger/v2 v2.3.2"
	"maunium.net/go/maulogger/v2 v2.3.2/go.mod"
	"maunium.net/go/mautrix v0.10.13-0.20220417095934-0eee489b6417"
	"maunium.net/go/mautrix v0.10.13-0.20220417095934-0eee489b6417/go.mod"
	"mvdan.cc/xurls/v2 v2.4.0"
	"mvdan.cc/xurls/v2 v2.4.0/go.mod"
)

go-module_set_globals

EGIT_COMMIT="b755302b93c4f84dab0dd576cb086e9f1f5289bb"
SRC_URI="https://github.com/tulir/gomuks/archive/${EGIT_COMMIT}.tar.gz -> ${P}.tar.gz
		${EGO_SUM_SRC_URI}"
S=${WORKDIR}/${PN}-${EGIT_COMMIT}
KEYWORDS="~amd64 ~arm64 ~ppc64 ~x86"

DEPEND="encryption? ( >=dev-libs/olm-3 )"
RDEPEND="${DEPEND}"

src_compile() {
	use encryption || export CGO_ENABLED=0
	go build
}

src_install() {
	dobin ${PN}
}

pkg_postinst() {
	has_version -r "x11-misc/xdg-utils" || ewarn "To open media, xdg-open from x11-misc/xdg-utils is required."
	if ! has_version -r "media-video/ffmpeg" ; then
		ewarn "To include audio/video file metadata to uploaded files,"
		ewarn "ffprobe from media-video/ffmpeg is required."
	fi
}
