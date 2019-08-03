Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 311C580640
	for <lists+openwrt-devel@lfdr.de>; Sat,  3 Aug 2019 14:59:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:Cc:From:
	List-Post:List-Id:Message-ID:MIME-Version:References:In-Reply-To:To:Date:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IX+qp0/yTr0rj0xrbaV1bwdgAMCq0cRhC5gG+6SA54A=; b=c5o16wOHKbzrWxEi54xoHsxf9
	x5nGNwV0TYUl/nCFynhJnCBYIvHrtLqUnA2azTMnfn0Cg33UFHVNpKBW1GsFM4wuY9VZ6OIhOZGfp
	rjeyJE/Xb0+17uPxFJo3k/tyEsKMPWcFRLI6cQeokUM+XOVSrjlLwFTSs/ITzw4qo15mY9lFSz2XS
	rT42WHBsMKazyvzSslgTJox5at7Vw0Mje+9irrzcTWLJ/diGJKmkMHPPu9upaj/f183OXSs+R4egD
	MhZ1mlMjRVHmPHFEdhD4+cTo8z5v4Jy45MfoedOJgCeCmRreul2Ajq7WOyvdJYx3bkCMYffkD1y3e
	pulAVscdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1httcp-0007rX-Ir; Sat, 03 Aug 2019 12:59:07 +0000
Date: Sat, 03 Aug 2019 20:58:43 +0800
To: Rosen Penev <rosenp@gmail.com>
In-Reply-To: <5ec256e502e0298841b973a58ba9a3d2@grosjo.net>
References: <mailman.13754.1564703810.19300.openwrt-devel@lists.openwrt.org>
 <20190802103653.GP74752@meh.true.cz>
 <2a6780799fb7077e5d731337bcfadbe0@grosjo.net>
 <b13b66b94fb80ac49631e0e2dc971c60@grosjo.net>
 <2cec2c33f72eb4cc8d33e0a18289d099@grosjo.net>
 <mailman.14120.1564793695.19300.openwrt-devel@lists.openwrt.org>
 <CAKxU2N9hwSx3w0SLfJQBH_GMyJUwKLNU-k7sgjCCnB1ZgHy0Gw@mail.gmail.com>
 <5ec256e502e0298841b973a58ba9a3d2@grosjo.net>
MIME-Version: 1.0
Message-ID: <mailman.14200.1564837131.19300.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: Joan Moreau via openwrt-devel <openwrt-devel@lists.openwrt.org>
Precedence: list
Cc: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: Joan Moreau <jom@grosjo.net>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: Re: [OpenWrt-Devel] package mt76 fails to compile under certain
 configuration [Was: Compilation error on master / mt7620]
Content-Type: multipart/mixed; boundary="===============1254004887750900423=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============1254004887750900423==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============1254004887750900423==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from grosjo.net ([94.130.37.163])
	by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
	id 1httcV-0007rB-TX
	for openwrt-devel@lists.openwrt.org; Sat, 03 Aug 2019 12:58:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=grosjo.net;
	 s=dkim; h=Message-ID:References:In-Reply-To:Subject:Cc:To:From:Date:
	Content-Type:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=i6813YkamtjBx9drKJufBbNBReYta2JMf4Bf2rr30kw=; b=Uxt69Miu4KcxdgmsP0EXf1K5/L
	eMB1sxZMx2Wlu3u+4p4ClSP0iuss8Nm5LDd5L/z5RBi0/vt708CDww/3CVTe8WuiWrIdvAwPBrGaL
	+7rGSMf3iwo3oimP2JyceKDBBEhfC+XumrEeU7gXLedVb+OuK4WUaR0QfA/swtk1dz+4=;
Received: from localhost ([127.0.0.1] helo=grosjo.net)
	by grosjo.net with esmtp (Exim 4.92.1)
	(envelope-from <jom@grosjo.net>)
	id 1httcR-0004YT-I9; Sat, 03 Aug 2019 12:58:44 +0000
MIME-Version: 1.0
Content-Type: multipart/alternative;
 boundary="=_ef0e8600930a0910228ff56d3d35e5d2"
Date: Sat, 03 Aug 2019 20:58:43 +0800
From: Joan Moreau <jom@grosjo.net>
To: Rosen Penev <rosenp@gmail.com>
Cc: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>, OpenWrt Development List
 <openwrt-devel@lists.openwrt.org>
Subject: Re: [OpenWrt-Devel] package mt76 fails to compile under certain
 configuration [Was: Compilation error on master / mt7620]
In-Reply-To: <5ec256e502e0298841b973a58ba9a3d2@grosjo.net>
References: <mailman.13754.1564703810.19300.openwrt-devel@lists.openwrt.org>
 <20190802103653.GP74752@meh.true.cz>
 <2a6780799fb7077e5d731337bcfadbe0@grosjo.net>
 <b13b66b94fb80ac49631e0e2dc971c60@grosjo.net>
 <2cec2c33f72eb4cc8d33e0a18289d099@grosjo.net>
 <mailman.14120.1564793695.19300.openwrt-devel@lists.openwrt.org>
 <CAKxU2N9hwSx3w0SLfJQBH_GMyJUwKLNU-k7sgjCCnB1ZgHy0Gw@mail.gmail.com>
 <5ec256e502e0298841b973a58ba9a3d2@grosjo.net>
User-Agent: Roundcube Webmail/1.4-git
Message-ID: <3b4d7396132017a9253bedb2cc3862b2@grosjo.net>
X-Sender: jom@grosjo.net
X-GJ: Sent from localhost
X-Spam-Score: -2.9 (--)
X-Spam-Report: Spam detection software, running on the system "gjserver",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 admin@grosjo.net for details.
 
 Content preview:  To narrow down the problem, my mt76 device (zbt826) runs fines
    on OpenWrt 19.07-SNAPSHOT r10233-4a7a8d93fa (including DebugFS and JFFS)
   On current 19.07, DebugFS makes the compilation fails, and here the details
    of JFFS2 dmesg 
 
 Content analysis details:   (-2.9 points, 3.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 HTML_MESSAGE           BODY: HTML included in message
X-GJ-SMTP: h_FROM = Joan Moreau <jom@grosjo.net> RPATH=jom@grosjo.net SENDERADR= jom@grosjo.net:
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190803_055848_259809_979207D6 
X-CRM114-Status: GOOD (  12.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [94.130.37.163 listed in list.dnswl.org]
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature

--=_ef0e8600930a0910228ff56d3d35e5d2
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8;
 format=flowed

To narrow down the problem, my mt76 device (zbt826) runs fines on
OpenWrt 19.07-SNAPSHOT r10233-4a7a8d93fa (including DebugFS and JFFS)=20

On current 19.07, DebugFS makes the compilation fails, and here the
details of JFFS2 dmesg=20

dmesg | grep -i jffs=20

[ 0.000000] Kernel command line: console=3DttyS0,115200
rootfstype=3Dsquashfs,jffs2
[ 0.753768] jffs2: version 2.2 (NAND) (SUMMARY) (LZMA) (RTIME)
(CMODE_PRIORITY) (c) 2001-2006 Red Hat, Inc.
[ 9.720839] jffs2: Error: unknown compressor "zlib"
[ 9.726302] mount_root: failed to mount -t jffs2 /dev/mtdblock6
/tmp/overlay: Invalid argument
[ 9.743698] mount_root: switching to jffs2 overlay
[ 9.748830] mount_root: switching to jffs2 failed - fallback to
ramoverlay

On 2019-08-03 10:18, Joan Moreau wrote:

> well maybe=20
>=20
> Bottom line : mt76 is not usable in master or 19.07.=20
>=20
> So far=20
>=20
> - DebugFS creates compilation error=20
>=20
> - SquashFS does not include LZO and creates compilation errors=20
>=20
> On 2019-08-03 09:57, Rosen Penev wrote:=20
> On Fri, Aug 2, 2019 at 5:55 PM Joan Moreau via openwrt-devel
> <openwrt-devel@lists.openwrt.org> wrote:=20
> The sender domain has a DMARC Reject/Quarantine policy which disallows
> sending mailing list messages using the original "From" header.
>=20
> To mitigate this problem, the original message has been wrapped
> automatically by the mailing list software.
>=20
> ---------- Forwarded message ----------
> From: Joan Moreau <jom@grosjo.net>
> To: "Petr =C5=A0tetiar" <ynezz@true.cz>
> Cc: openwrt-devel@lists.openwrt.org
> Bcc:
> Date: Sat, 03 Aug 2019 08:54:45 +0800
> Subject: Re: [OpenWrt-Devel] package mt76 fails to compile under certain =
configuration [Was: Compilation error on master / mt7620]
>=20
> In an attempt to force LZO with JFFS2, I clicked on "mksquash" in menucon=
fig.
>=20
> I reach the follwoing error
>=20
> mipsel-openwrt-linux-musl-gcc -Os -pipe -mno-branch-likely -mips32r2 -mtu=
ne=3D24kc -fno-caller-saves -fno-plt -fhonour-copts -Wno-error=3Dunused-but=
-set-variable -Wno-error=3Dunused-result -msoft-float -mips16 -minterlink-m=
ips16 -iremap/usr/src/openwrt/4g/build_dir/target-mipsel_24kc_musl/squashfs=
-tools-4.3:squashfs-tools-4.3 -Wformat -Werror=3Dformat-security -fstack-pr=
otector -D_FORTIFY_SOURCE=3D1 -Wl,-z,now -Wl,-z,relro -I/usr/src/openwrt/4g=
/staging_dir/target-mipsel_24kc_musl/usr/include -I/usr/src/openwrt/4g/stag=
ing_dir/target-mipsel_24kc_musl/include -I/usr/src/openwrt/4g/staging_dir/t=
oolchain-mipsel_24kc_gcc-7.4.0_musl/usr/include -I/usr/src/openwrt/4g/stagi=
ng_dir/toolchain-mipsel_24kc_gcc-7.4.0_musl/include/fortify -I/usr/src/open=
wrt/4g/staging_dir/toolchain-mipsel_24kc_gcc-7.4.0_musl/include -I. -D_FILE=
_OFFSET_BITS=3D64 -D_LARGEFILE_SOURCE -D_GNU_SOURCE -DCOMP_DEFAULT=3D\"gzip=
\" -Wall -DGZIP_SUPPORT -DXZ_SUPPORT -DLZO_SUPPORT -DLZ4_SUPPORT -c -o mksq=
uashfs.o mksquashfs.c
> mksquashfs.c: In function 'create_inode':
> mksquashfs.c:996:24: error: called object 'major' is not a function or fu=
nction pointer
> unsigned int major =3D major(buf->st_rdev);
> ^~~~~
> mksquashfs.c:996:16: note: declared here
> unsigned int major =3D major(buf->st_rdev);
> ^~~~~
>=20
> Something is very broken in mt76 That error is related to squashfs-tools,=
 not mt76:
> https://downloads.openwrt.org/snapshots/faillogs/mips_24kc/packages/squas=
hfs-tools/compile.txt=20
>=20
> On 2019-08-02 23:12, Joan Moreau wrote:
>=20
> Additionally, I get the following error in the image generated (master) w=
ithout the debugfs option then to allow compilation
>=20
> [ 8.936247] jffs2: Error: unknown compressor "zlib"
> [ 8.941939] mount_root: failed to mount -t jffs2 /dev/mtdblock6 /tmp/over=
lay: Invalid argument
> [ 8.951033] mount_root: overlay filesystem has not been fully initialized=
 yet
> [ 8.958979] mount_root: switching to jffs2 overlay
> [ 8.964114] mount_root: switching to jffs2 failed - fallback to ramoverla=
y
>=20
> On 2019-08-02 21:37, Joan Moreau wrote:
>=20
> Removing "debug fs" in compilation options removes the problem.
>=20
> So there is something very awkward in the Makefile
>=20
> On 2019-08-02 20:28, Joan Moreau wrote:
>=20
> attached
>=20
> On 2019-08-02 18:36, Petr =C5=A0tetiar wrote:
>=20
> Joan Moreau via openwrt-devel <openwrt-devel@lists.openwrt.org> [2019-08-=
02 07:56:41]:
>=20
> Hello,
>=20
> I reach the following error while compiling my MT7620/ZBT826-16M on
> master (no error on 18.06) :
>=20
> CC [M]
> /usr/src/openwrt/4g/build_dir/target-mipsel_24kc_musl/linux-ramips_mt7620=
/mt76-2019-07-22-75656a45/mt7603/pci.o
> <command-line>:0:37: error: redeclaration of enumerator
> 'IEEE80211_HW_REPORTS_TX_ACK_STATUS'
> <command-line>:0:37: note: in definition of macro
> 'IEEE80211_HW_TX_STATUS_NO_AMPDU_LEN'
> In file included from
> /usr/src/openwrt/4g/build_dir/target-mipsel_24kc_musl/linux-ramips_mt7620=
/mt76-2019-07-22-75656a45/mt7603/../mt76.h:27:0,
> from
> /usr/src/openwrt/4g/build_dir/target-mipsel_24kc_musl/linux-ramips_mt7620=
/mt76-2019-07-22-75656a45/mt7603/mt7603.h:8,
> from
> /usr/src/openwrt/4g/build_dir/target-mipsel_24kc_musl/linux-ramips_mt7620=
/mt76-2019-07-22-75656a45/mt7603/pci.c:7:
> /usr/src/openwrt/4g/staging_dir/target-mipsel_24kc_musl/usr/include/mac80=
211/net/mac80211.h:2293:2:
> note: previous definition of 'IEEE80211_HW_REPORTS_TX_ACK_STATUS' was
> here
> IEEE80211_HW_REPORTS_TX_ACK_STATUS,
> ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> make[6]: *** [scripts/Makefile.build:327:
> /usr/src/openwrt/4g/build_dir/target-mipsel_24kc_musl/linux-ramips_mt7620=
/mt76-2019-07-22-75656a45/mt7603/pci.o]
> Error 1
> make[5]: *** [scripts/Makefile.build:585:
> /usr/src/openwrt/4g/build_dir/target-mipsel_24kc_musl/linux-ramips_mt7620=
/mt76-2019-07-22-75656a45/mt7603]
> Error 2
> make[4]: *** [Makefile:1532:
> _module_/usr/src/openwrt/4g/build_dir/target-mipsel_24kc_musl/linux-ramip=
s_mt7620/mt76-2019-07-22-75656a45]
> Error 2
>=20
> Can you help ?
>=20
> the problem is probably in this compile check[1], so please do following:
>=20
> make package/mt76/{clean,prepare}
> sed -i 's;TMP";TMP" 2> $(TOPDIR)/meh.log;' build_dir/target-mipsel_24kc_m=
usl/linux-ramips_mt7620/mt76-2019-07-22-75656a45/mt7603/Makefile
> make package/mt76/compile
> scripts/diffconfig.sh >> meh.log; gzip meh.log
>=20
> and send meh.log.gz file as attachment.
>=20
> 1. https://github.com/openwrt/mt76/blob/master/mt7603/Makefile#L7
>=20
> -- ynezz
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
--=_ef0e8600930a0910228ff56d3d35e5d2
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; charset=
=3DUTF-8" /></head><body style=3D'font-size: 9pt; font-family: Verdana,Gene=
va,sans-serif'>
<p>To narrow down the problem, my mt76 device (zbt826) runs fines on OpenWr=
t 19.07-SNAPSHOT r10233-4a7a8d93fa (including DebugFS and JFFS)</p>
<p>On current 19.07, DebugFS makes the compilation fails, and here the deta=
ils of JFFS2 dmesg</p>
<p>dmesg | grep -i jffs</p>
<p>[ 0.000000] Kernel command line: console=3DttyS0,115200 rootfstype=3Dsqu=
ashfs,jffs2<br />[ 0.753768] jffs2: version 2.2 (NAND) (SUMMARY) (LZMA) (RT=
IME) (CMODE_PRIORITY) (c) 2001-2006 Red Hat, Inc.<br />[ 9.720839] jffs2: E=
rror: unknown compressor "zlib"<br />[ 9.726302] mount_root: failed to moun=
t -t jffs2 /dev/mtdblock6 /tmp/overlay: Invalid argument<br />[ 9.743698] m=
ount_root: switching to jffs2 overlay<br />[ 9.748830] mount_root: switchin=
g to jffs2 failed - fallback to ramoverlay</p>
<div id=3D"signature">&nbsp;</div>
<p><br /></p>
<p id=3D"reply-intro">On 2019-08-03 10:18, Joan Moreau wrote:</p>
<blockquote type=3D"cite" style=3D"padding: 0 0.4em; border-left: #1010ff 2=
px solid; margin: 0">
<div id=3D"replybody1">
<div style=3D"font-size: 9pt; font-family: Verdana,Geneva,sans-serif;">
<p>well maybe</p>
<p><br /></p>
<p>Bottom line : mt76 is not usable in master or 19.07.</p>
<p>So far</p>
<p>- DebugFS creates compilation error</p>
<p>- SquashFS does not include LZO and creates compilation errors</p>
<p><br /></p>
<div id=3D"v1signature">&nbsp;</div>
<p><br /></p>
<p id=3D"v1reply-intro">On 2019-08-03 09:57, Rosen Penev wrote:</p>
<blockquote style=3D"padding: 0 0.4em; border-left: #1010ff 2px solid; marg=
in: 0;">
<div class=3D"v1pre" style=3D"margin: 0; padding: 0; font-family: monospace=
;">On Fri, Aug 2, 2019 at 5:55 PM Joan Moreau via openwrt-devel<br />&lt;<a=
 href=3D"mailto:openwrt-devel@lists.openwrt.org" rel=3D"noreferrer">openwrt=
-devel@lists.openwrt.org</a>&gt; wrote:
<blockquote style=3D"padding: 0 0.4em; border-left: #1010ff 2px solid; marg=
in: 0;"><br />The sender domain has a DMARC Reject/Quarantine policy which =
disallows<br />sending mailing list messages using the original "From" head=
er.<br /><br />To mitigate this problem, the original message has been wrap=
ped<br />automatically by the mailing list software.<br /><br /><br />-----=
----- Forwarded message ----------<br />From: Joan Moreau &lt;<a href=3D"ma=
ilto:jom@grosjo.net" rel=3D"noreferrer">jom@grosjo.net</a>&gt;<br />To: "Pe=
tr &Scaron;tetiar" &lt;<a href=3D"mailto:ynezz@true.cz" rel=3D"noreferrer">=
ynezz@true.cz</a>&gt;<br />Cc: <a href=3D"mailto:openwrt-devel@lists.openwr=
t.org" rel=3D"noreferrer">openwrt-devel@lists.openwrt.org</a><br />Bcc:<br =
/>Date: Sat, 03 Aug 2019 08:54:45 +0800<br />Subject: Re: [OpenWrt-Devel] p=
ackage mt76 fails to compile under certain configuration [Was: Compilation =
error on master / mt7620]<br /><br />In an attempt to force LZO with JFFS2,=
 I clicked on "mksquash" in menuconfig.<br /><br /><br />I reach the follwo=
ing error<br /><br />mipsel-openwrt-linux-musl-gcc -Os -pipe -mno-branch-li=
kely -mips32r2 -mtune=3D24kc -fno-caller-saves -fno-plt -fhonour-copts -Wno=
-error=3Dunused-but-set-variable -Wno-error=3Dunused-result -msoft-float -m=
ips16 -minterlink-mips16 -iremap/usr/src/openwrt/4g/build_dir/target-mipsel=
_24kc_musl/squashfs-tools-4.3:squashfs-tools-4.3 -Wformat -Werror=3Dformat-=
security -fstack-protector -D_FORTIFY_SOURCE=3D1 -Wl,-z,now -Wl,-z,relro -I=
/usr/src/openwrt/4g/staging_dir/target-mipsel_24kc_musl/usr/include -I/usr/=
src/openwrt/4g/staging_dir/target-mipsel_24kc_musl/include -I/usr/src/openw=
rt/4g/staging_dir/toolchain-mipsel_24kc_gcc-7.4.0_musl/usr/include -I/usr/s=
rc/openwrt/4g/staging_dir/toolchain-mipsel_24kc_gcc-7.4.0_musl/include/fort=
ify -I/usr/src/openwrt/4g/staging_dir/toolchain-mipsel_24kc_gcc-7.4.0_musl/=
include -I. -D_FILE_OFFSET_BITS=3D64 -D_LARGEFILE_SOURCE -D_GNU_SOURCE -DCO=
MP_DEFAULT=3D\"gzip\" -Wall -DGZIP_SUPPORT -DXZ_SUPPORT -DLZO_SUPPORT -DLZ4=
_SUPPORT -c -o mksquashfs.o mksquashfs.c<br />mksquashfs.c: In function 'cr=
eate_inode':<br />mksquashfs.c:996:24: error: called object 'major' is not =
a function or function pointer<br />unsigned int major =3D major(buf-&gt;st=
_rdev);<br />^~~~~<br />mksquashfs.c:996:16: note: declared here<br />unsig=
ned int major =3D major(buf-&gt;st_rdev);<br />^~~~~<br /><br /><br />Somet=
hing is very broken in mt76</blockquote>
That error is related to squashfs-tools, not mt76:<br /><a href=3D"https://=
downloads.openwrt.org/snapshots/faillogs/mips_24kc/packages/squashfs-tools/=
compile.txt" target=3D"_blank" rel=3D"noopener noreferrer">https://download=
s.openwrt.org/snapshots/faillogs/mips_24kc/packages/squashfs-tools/compile=
=2Etxt</a>
<blockquote style=3D"padding: 0 0.4em; border-left: #1010ff 2px solid; marg=
in: 0;"><br /><br /><br /><br /><br /><br />On 2019-08-02 23:12, Joan Morea=
u wrote:<br /><br />Additionally, I get the following error in the image ge=
nerated (master) without the debugfs option then to allow compilation<br />=
<br /><br />[ 8.936247] jffs2: Error: unknown compressor "zlib"<br />[ 8.94=
1939] mount_root: failed to mount -t jffs2 /dev/mtdblock6 /tmp/overlay: Inv=
alid argument<br />[ 8.951033] mount_root: overlay filesystem has not been =
fully initialized yet<br />[ 8.958979] mount_root: switching to jffs2 overl=
ay<br />[ 8.964114] mount_root: switching to jffs2 failed - fallback to ram=
overlay<br /><br /><br /><br /><br />On 2019-08-02 21:37, Joan Moreau wrote=
:<br /><br />Removing "debug fs" in compilation options removes the problem=
=2E<br /><br />So there is something very awkward in the Makefile<br /><br =
/><br /><br /><br /><br />On 2019-08-02 20:28, Joan Moreau wrote:<br /><br =
/>attached<br /><br /><br /><br /><br />On 2019-08-02 18:36, Petr &Scaron;t=
etiar wrote:<br /><br />Joan Moreau via openwrt-devel &lt;<a href=3D"mailto=
:openwrt-devel@lists.openwrt.org" rel=3D"noreferrer">openwrt-devel@lists.op=
enwrt.org</a>&gt; [2019-08-02 07:56:41]:<br /><br />Hello,<br /><br />I rea=
ch the following error while compiling my MT7620/ZBT826-16M on<br />master =
(no error on 18.06) :<br /><br />CC [M]<br />/usr/src/openwrt/4g/build_dir/=
target-mipsel_24kc_musl/linux-ramips_mt7620/mt76-2019-07-22-75656a45/mt7603=
/pci.o<br />&lt;command-line&gt;:0:37: error: redeclaration of enumerator<b=
r />'IEEE80211_HW_REPORTS_TX_ACK_STATUS'<br />&lt;command-line&gt;:0:37: no=
te: in definition of macro<br />'IEEE80211_HW_TX_STATUS_NO_AMPDU_LEN'<br />=
In file included from<br />/usr/src/openwrt/4g/build_dir/target-mipsel_24kc=
_musl/linux-ramips_mt7620/mt76-2019-07-22-75656a45/mt7603/../mt76.h:27:0,<b=
r />from<br />/usr/src/openwrt/4g/build_dir/target-mipsel_24kc_musl/linux-r=
amips_mt7620/mt76-2019-07-22-75656a45/mt7603/mt7603.h:8,<br />from<br />/us=
r/src/openwrt/4g/build_dir/target-mipsel_24kc_musl/linux-ramips_mt7620/mt76=
-2019-07-22-75656a45/mt7603/pci.c:7:<br />/usr/src/openwrt/4g/staging_dir/t=
arget-mipsel_24kc_musl/usr/include/mac80211/net/mac80211.h:2293:2:<br />not=
e: previous definition of 'IEEE80211_HW_REPORTS_TX_ACK_STATUS' was<br />her=
e<br />IEEE80211_HW_REPORTS_TX_ACK_STATUS,<br />^~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~~~~<br />make[6]: *** [scripts/Makefile.build:327:<br />/usr/src/openwr=
t/4g/build_dir/target-mipsel_24kc_musl/linux-ramips_mt7620/mt76-2019-07-22-=
75656a45/mt7603/pci.o]<br />Error 1<br />make[5]: *** [scripts/Makefile.bui=
ld:585:<br />/usr/src/openwrt/4g/build_dir/target-mipsel_24kc_musl/linux-ra=
mips_mt7620/mt76-2019-07-22-75656a45/mt7603]<br />Error 2<br />make[4]: ***=
 [Makefile:1532:<br />_module_/usr/src/openwrt/4g/build_dir/target-mipsel_2=
4kc_musl/linux-ramips_mt7620/mt76-2019-07-22-75656a45]<br />Error 2<br /><b=
r />Can you help ?<br /><br /><br />the problem is probably in this compile=
 check[1], so please do following:<br /><br />&nbsp;make package/mt76/{clea=
n,prepare}<br />&nbsp;sed -i 's;TMP";TMP" 2&gt; $(TOPDIR)/meh.log;' build_d=
ir/target-mipsel_24kc_musl/linux-ramips_mt7620/mt76-2019-07-22-75656a45/mt7=
603/Makefile<br />&nbsp;make package/mt76/compile<br />&nbsp;scripts/diffco=
nfig.sh &gt;&gt; meh.log; gzip meh.log<br /><br />and send meh.log.gz file =
as attachment.<br /><br />1. <a href=3D"https://github.com/openwrt/mt76/blo=
b/master/mt7603/Makefile#L7" target=3D"_blank" rel=3D"noopener noreferrer">=
https://github.com/openwrt/mt76/blob/master/mt7603/Makefile#L7</a><br /><br=
 />-- ynezz<br /><br />_______________________________________________<br /=
>openwrt-devel mailing list<br /><a href=3D"mailto:openwrt-devel@lists.open=
wrt.org" rel=3D"noreferrer">openwrt-devel@lists.openwrt.org</a><br /><a hre=
f=3D"https://lists.openwrt.org/mailman/listinfo/openwrt-devel" target=3D"_b=
lank" rel=3D"noopener noreferrer">https://lists.openwrt.org/mailman/listinf=
o/openwrt-devel</a><br /><br />____________________________________________=
___<br />openwrt-devel mailing list<br /><a href=3D"mailto:openwrt-devel@li=
sts.openwrt.org" rel=3D"noreferrer">openwrt-devel@lists.openwrt.org</a><br =
/><a href=3D"https://lists.openwrt.org/mailman/listinfo/openwrt-devel" targ=
et=3D"_blank" rel=3D"noopener noreferrer">https://lists.openwrt.org/mailman=
/listinfo/openwrt-devel</a></blockquote>
<br />_______________________________________________<br />openwrt-devel ma=
iling list<br /><a href=3D"mailto:openwrt-devel@lists.openwrt.org" rel=3D"n=
oreferrer">openwrt-devel@lists.openwrt.org</a><br /><a href=3D"https://list=
s.openwrt.org/mailman/listinfo/openwrt-devel" target=3D"_blank" rel=3D"noop=
ener noreferrer">https://lists.openwrt.org/mailman/listinfo/openwrt-devel</=
a></div>
</blockquote>
</div>
</div>
</blockquote>
</body></html>

--=_ef0e8600930a0910228ff56d3d35e5d2--


--===============1254004887750900423==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1254004887750900423==--

