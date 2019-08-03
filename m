Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0849B803F1
	for <lists+openwrt-devel@lfdr.de>; Sat,  3 Aug 2019 04:19:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:Cc:From:
	List-Post:List-Id:Message-ID:MIME-Version:References:In-Reply-To:To:Date:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eZyMCPJHCiKW3jHPme02OtHWUjJmaCLi3mrEpjXX+Ak=; b=fVm+t9idGCwIWoQjc3TYWlIHK
	7goT1m/WaeaT2guie42dtcCxr8BvexXAV5tksA1e0uxbkoQraDJheY6bPsx11gOTGlxyFTUwFGE3E
	7lWaNrPkuMin4NUdDYXmubI/fn71oXv5LDxvWcTkjBJxRrDq38N95X7U6hHWhmkIooF0aEdzBufp4
	YbWU0A9V03bl18BQe8gCuLAGo9u+Y3P1TV9osovXa1c3pQ7wPMzX24iFATu0JBbtu+SLnKToHhoL3
	dXOqlsxZT7Sk2Bx60R88exwcl4GGnpUtUQdh5kUbNM1kfJdYELUbtiZ7w8DFQwMzuuJrJPrLRIh0J
	87GCmRESw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htjdY-0001xY-HT; Sat, 03 Aug 2019 02:19:12 +0000
Date: Sat, 03 Aug 2019 10:18:57 +0800
To: Rosen Penev <rosenp@gmail.com>
In-Reply-To: <CAKxU2N9hwSx3w0SLfJQBH_GMyJUwKLNU-k7sgjCCnB1ZgHy0Gw@mail.gmail.com>
References: <mailman.13754.1564703810.19300.openwrt-devel@lists.openwrt.org>
 <20190802103653.GP74752@meh.true.cz>
 <2a6780799fb7077e5d731337bcfadbe0@grosjo.net>
 <b13b66b94fb80ac49631e0e2dc971c60@grosjo.net>
 <2cec2c33f72eb4cc8d33e0a18289d099@grosjo.net>
 <mailman.14120.1564793695.19300.openwrt-devel@lists.openwrt.org>
 <CAKxU2N9hwSx3w0SLfJQBH_GMyJUwKLNU-k7sgjCCnB1ZgHy0Gw@mail.gmail.com>
MIME-Version: 1.0
Message-ID: <mailman.14131.1564798746.19300.openwrt-devel@lists.openwrt.org>
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
Content-Type: multipart/mixed; boundary="===============4138067448462891414=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============4138067448462891414==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============4138067448462891414==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from grosjo.net ([94.130.37.163])
	by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
	id 1htjdP-0001xF-7s
	for openwrt-devel@lists.openwrt.org; Sat, 03 Aug 2019 02:19:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=grosjo.net;
	 s=dkim; h=Message-ID:References:In-Reply-To:Subject:Cc:To:From:Date:
	Content-Type:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=zwe6kpokhhLGylzqjiu5ciuga3rJ2y9Q6AoCXazhzS4=; b=PaEd8AvsNEOdjVuOyYAu+hQgQY
	r4gep9Q6yZgNA5vpu1oEFh0+rW4bHIPO1Df6XjKrLroW+pB0Cl/8HCibHwRVDnhPeI72tejxVQnSd
	q8TjvkW85VbKSCcjNet7aDzGCsCA6rXE50TbTjXPYiN4UL45QE6zpgLKWRMz+kOMGOas=;
Received: from localhost ([127.0.0.1] helo=grosjo.net)
	by grosjo.net with esmtp (Exim 4.92.1)
	(envelope-from <jom@grosjo.net>)
	id 1htjdJ-0008Rv-Rc; Sat, 03 Aug 2019 02:18:58 +0000
MIME-Version: 1.0
Content-Type: multipart/alternative;
 boundary="=_d8cccdf4fe06c663edb06c67c7aaf3c3"
Date: Sat, 03 Aug 2019 10:18:57 +0800
From: Joan Moreau <jom@grosjo.net>
To: Rosen Penev <rosenp@gmail.com>
Cc: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>, OpenWrt Development List
 <openwrt-devel@lists.openwrt.org>
Subject: Re: [OpenWrt-Devel] package mt76 fails to compile under certain
 configuration [Was: Compilation error on master / mt7620]
In-Reply-To: <CAKxU2N9hwSx3w0SLfJQBH_GMyJUwKLNU-k7sgjCCnB1ZgHy0Gw@mail.gmail.com>
References: <mailman.13754.1564703810.19300.openwrt-devel@lists.openwrt.org>
 <20190802103653.GP74752@meh.true.cz>
 <2a6780799fb7077e5d731337bcfadbe0@grosjo.net>
 <b13b66b94fb80ac49631e0e2dc971c60@grosjo.net>
 <2cec2c33f72eb4cc8d33e0a18289d099@grosjo.net>
 <mailman.14120.1564793695.19300.openwrt-devel@lists.openwrt.org>
 <CAKxU2N9hwSx3w0SLfJQBH_GMyJUwKLNU-k7sgjCCnB1ZgHy0Gw@mail.gmail.com>
User-Agent: Roundcube Webmail/1.4-git
Message-ID: <5ec256e502e0298841b973a58ba9a3d2@grosjo.net>
X-Sender: jom@grosjo.net
X-GJ: Sent from localhost
X-Spam-Score: -2.9 (--)
X-Spam-Report: Spam detection software, running on the system "gjserver",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 admin@grosjo.net for details.
 
 Content preview:  well maybe Bottom line : mt76 is not usable in master or 19.07.
    So far 
 
 Content analysis details:   (-2.9 points, 3.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 HTML_MESSAGE           BODY: HTML included in message
X-GJ-SMTP: h_FROM = Joan Moreau <jom@grosjo.net> RPATH=jom@grosjo.net SENDERADR= jom@grosjo.net:
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_191903_589759_F312894A 
X-CRM114-Status: UNSURE (   5.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [94.130.37.163 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain

--=_d8cccdf4fe06c663edb06c67c7aaf3c3
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8;
 format=flowed

well maybe=20

Bottom line : mt76 is not usable in master or 19.07.=20

So far=20

- DebugFS creates compilation error=20

- SquashFS does not include LZO and creates compilation errors=20

On 2019-08-03 09:57, Rosen Penev wrote:

> On Fri, Aug 2, 2019 at 5:55 PM Joan Moreau via openwrt-devel
> <openwrt-devel@lists.openwrt.org> wrote:=20
>=20
>> The sender domain has a DMARC Reject/Quarantine policy which disallows
>> sending mailing list messages using the original "From" header.
>>=20
>> To mitigate this problem, the original message has been wrapped
>> automatically by the mailing list software.
>>=20
>> ---------- Forwarded message ----------
>> From: Joan Moreau <jom@grosjo.net>
>> To: "Petr =C5=A0tetiar" <ynezz@true.cz>
>> Cc: openwrt-devel@lists.openwrt.org
>> Bcc:
>> Date: Sat, 03 Aug 2019 08:54:45 +0800
>> Subject: Re: [OpenWrt-Devel] package mt76 fails to compile under certain=
 configuration [Was: Compilation error on master / mt7620]
>>=20
>> In an attempt to force LZO with JFFS2, I clicked on "mksquash" in menuco=
nfig.
>>=20
>> I reach the follwoing error
>>=20
>> mipsel-openwrt-linux-musl-gcc -Os -pipe -mno-branch-likely -mips32r2 -mt=
une=3D24kc -fno-caller-saves -fno-plt -fhonour-copts -Wno-error=3Dunused-bu=
t-set-variable -Wno-error=3Dunused-result -msoft-float -mips16 -minterlink-=
mips16 -iremap/usr/src/openwrt/4g/build_dir/target-mipsel_24kc_musl/squashf=
s-tools-4.3:squashfs-tools-4.3 -Wformat -Werror=3Dformat-security -fstack-p=
rotector -D_FORTIFY_SOURCE=3D1 -Wl,-z,now -Wl,-z,relro -I/usr/src/openwrt/4=
g/staging_dir/target-mipsel_24kc_musl/usr/include -I/usr/src/openwrt/4g/sta=
ging_dir/target-mipsel_24kc_musl/include -I/usr/src/openwrt/4g/staging_dir/=
toolchain-mipsel_24kc_gcc-7.4.0_musl/usr/include -I/usr/src/openwrt/4g/stag=
ing_dir/toolchain-mipsel_24kc_gcc-7.4.0_musl/include/fortify -I/usr/src/ope=
nwrt/4g/staging_dir/toolchain-mipsel_24kc_gcc-7.4.0_musl/include -I. -D_FIL=
E_OFFSET_BITS=3D64 -D_LARGEFILE_SOURCE -D_GNU_SOURCE -DCOMP_DEFAULT=3D\"gzi=
p\" -Wall -DGZIP_SUPPORT -DXZ_SUPPORT -DLZO_SUPPORT -DLZ4_SUPPORT -c -o mks=
quashfs.o mksquashfs.c
>> mksquashfs.c: In function 'create_inode':
>> mksquashfs.c:996:24: error: called object 'major' is not a function or f=
unction pointer
>> unsigned int major =3D major(buf->st_rdev);
>> ^~~~~
>> mksquashfs.c:996:16: note: declared here
>> unsigned int major =3D major(buf->st_rdev);
>> ^~~~~
>>=20
>> Something is very broken in mt76
> That error is related to squashfs-tools, not mt76:
> https://downloads.openwrt.org/snapshots/faillogs/mips_24kc/packages/squas=
hfs-tools/compile.txt=20
>=20
>> On 2019-08-02 23:12, Joan Moreau wrote:
>>=20
>> Additionally, I get the following error in the image generated (master) =
without the debugfs option then to allow compilation
>>=20
>> [ 8.936247] jffs2: Error: unknown compressor "zlib"
>> [ 8.941939] mount_root: failed to mount -t jffs2 /dev/mtdblock6 /tmp/ove=
rlay: Invalid argument
>> [ 8.951033] mount_root: overlay filesystem has not been fully initialize=
d yet
>> [ 8.958979] mount_root: switching to jffs2 overlay
>> [ 8.964114] mount_root: switching to jffs2 failed - fallback to ramoverl=
ay
>>=20
>> On 2019-08-02 21:37, Joan Moreau wrote:
>>=20
>> Removing "debug fs" in compilation options removes the problem.
>>=20
>> So there is something very awkward in the Makefile
>>=20
>> On 2019-08-02 20:28, Joan Moreau wrote:
>>=20
>> attached
>>=20
>> On 2019-08-02 18:36, Petr =C5=A0tetiar wrote:
>>=20
>> Joan Moreau via openwrt-devel <openwrt-devel@lists.openwrt.org> [2019-08=
-02 07:56:41]:
>>=20
>> Hello,
>>=20
>> I reach the following error while compiling my MT7620/ZBT826-16M on
>> master (no error on 18.06) :
>>=20
>> CC [M]
>> /usr/src/openwrt/4g/build_dir/target-mipsel_24kc_musl/linux-ramips_mt762=
0/mt76-2019-07-22-75656a45/mt7603/pci.o
>> <command-line>:0:37: error: redeclaration of enumerator
>> 'IEEE80211_HW_REPORTS_TX_ACK_STATUS'
>> <command-line>:0:37: note: in definition of macro
>> 'IEEE80211_HW_TX_STATUS_NO_AMPDU_LEN'
>> In file included from
>> /usr/src/openwrt/4g/build_dir/target-mipsel_24kc_musl/linux-ramips_mt762=
0/mt76-2019-07-22-75656a45/mt7603/../mt76.h:27:0,
>> from
>> /usr/src/openwrt/4g/build_dir/target-mipsel_24kc_musl/linux-ramips_mt762=
0/mt76-2019-07-22-75656a45/mt7603/mt7603.h:8,
>> from
>> /usr/src/openwrt/4g/build_dir/target-mipsel_24kc_musl/linux-ramips_mt762=
0/mt76-2019-07-22-75656a45/mt7603/pci.c:7:
>> /usr/src/openwrt/4g/staging_dir/target-mipsel_24kc_musl/usr/include/mac8=
0211/net/mac80211.h:2293:2:
>> note: previous definition of 'IEEE80211_HW_REPORTS_TX_ACK_STATUS' was
>> here
>> IEEE80211_HW_REPORTS_TX_ACK_STATUS,
>> ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>> make[6]: *** [scripts/Makefile.build:327:
>> /usr/src/openwrt/4g/build_dir/target-mipsel_24kc_musl/linux-ramips_mt762=
0/mt76-2019-07-22-75656a45/mt7603/pci.o]
>> Error 1
>> make[5]: *** [scripts/Makefile.build:585:
>> /usr/src/openwrt/4g/build_dir/target-mipsel_24kc_musl/linux-ramips_mt762=
0/mt76-2019-07-22-75656a45/mt7603]
>> Error 2
>> make[4]: *** [Makefile:1532:
>> _module_/usr/src/openwrt/4g/build_dir/target-mipsel_24kc_musl/linux-rami=
ps_mt7620/mt76-2019-07-22-75656a45]
>> Error 2
>>=20
>> Can you help ?
>>=20
>> the problem is probably in this compile check[1], so please do following=
:
>>=20
>> make package/mt76/{clean,prepare}
>> sed -i 's;TMP";TMP" 2> $(TOPDIR)/meh.log;' build_dir/target-mipsel_24kc_=
musl/linux-ramips_mt7620/mt76-2019-07-22-75656a45/mt7603/Makefile
>> make package/mt76/compile
>> scripts/diffconfig.sh >> meh.log; gzip meh.log
>>=20
>> and send meh.log.gz file as attachment.
>>=20
>> 1. https://github.com/openwrt/mt76/blob/master/mt7603/Makefile#L7
>>=20
>> -- ynezz
>>=20
>> _______________________________________________
>> openwrt-devel mailing list
>> openwrt-devel@lists.openwrt.org
>> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>>=20
>> _______________________________________________
>> openwrt-devel mailing list
>> openwrt-devel@lists.openwrt.org
>> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
--=_d8cccdf4fe06c663edb06c67c7aaf3c3
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; charset=
=3DUTF-8" /></head><body style=3D'font-size: 9pt; font-family: Verdana,Gene=
va,sans-serif'>
<p>well maybe</p>
<p><br /></p>
<p>Bottom line : mt76 is not usable in master or 19.07.</p>
<p>So far</p>
<p>- DebugFS creates compilation error</p>
<p>- SquashFS does not include LZO and creates compilation errors</p>
<p><br /></p>
<div id=3D"signature">&nbsp;</div>
<p><br /></p>
<p id=3D"reply-intro">On 2019-08-03 09:57, Rosen Penev wrote:</p>
<blockquote type=3D"cite" style=3D"padding: 0 0.4em; border-left: #1010ff 2=
px solid; margin: 0">
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace">=
On Fri, Aug 2, 2019 at 5:55 PM Joan Moreau via openwrt-devel<br />&lt;<a hr=
ef=3D"mailto:openwrt-devel@lists.openwrt.org">openwrt-devel@lists.openwrt=
=2Eorg</a>&gt; wrote:
<blockquote type=3D"cite" style=3D"padding: 0 0.4em; border-left: #1010ff 2=
px solid; margin: 0"><br />The sender domain has a DMARC Reject/Quarantine =
policy which disallows<br />sending mailing list messages using the origina=
l "From" header.<br /><br />To mitigate this problem, the original message =
has been wrapped<br />automatically by the mailing list software.<br /><br =
/><br />---------- Forwarded message ----------<br />From: Joan Moreau &lt;=
<a href=3D"mailto:jom@grosjo.net">jom@grosjo.net</a>&gt;<br />To: "Petr &Sc=
aron;tetiar" &lt;<a href=3D"mailto:ynezz@true.cz">ynezz@true.cz</a>&gt;<br =
/>Cc: <a href=3D"mailto:openwrt-devel@lists.openwrt.org">openwrt-devel@list=
s.openwrt.org</a><br />Bcc:<br />Date: Sat, 03 Aug 2019 08:54:45 +0800<br /=
>Subject: Re: [OpenWrt-Devel] package mt76 fails to compile under certain c=
onfiguration [Was: Compilation error on master / mt7620]<br /><br />In an a=
ttempt to force LZO with JFFS2, I clicked on "mksquash" in menuconfig.<br /=
><br /><br />I reach the follwoing error<br /><br />mipsel-openwrt-linux-mu=
sl-gcc -Os -pipe -mno-branch-likely -mips32r2 -mtune=3D24kc -fno-caller-sav=
es -fno-plt -fhonour-copts -Wno-error=3Dunused-but-set-variable -Wno-error=
=3Dunused-result -msoft-float -mips16 -minterlink-mips16 -iremap/usr/src/op=
enwrt/4g/build_dir/target-mipsel_24kc_musl/squashfs-tools-4.3:squashfs-tool=
s-4.3 -Wformat -Werror=3Dformat-security -fstack-protector -D_FORTIFY_SOURC=
E=3D1 -Wl,-z,now -Wl,-z,relro -I/usr/src/openwrt/4g/staging_dir/target-mips=
el_24kc_musl/usr/include -I/usr/src/openwrt/4g/staging_dir/target-mipsel_24=
kc_musl/include -I/usr/src/openwrt/4g/staging_dir/toolchain-mipsel_24kc_gcc=
-7.4.0_musl/usr/include -I/usr/src/openwrt/4g/staging_dir/toolchain-mipsel_=
24kc_gcc-7.4.0_musl/include/fortify -I/usr/src/openwrt/4g/staging_dir/toolc=
hain-mipsel_24kc_gcc-7.4.0_musl/include -I. -D_FILE_OFFSET_BITS=3D64 -D_LAR=
GEFILE_SOURCE -D_GNU_SOURCE -DCOMP_DEFAULT=3D\"gzip\" -Wall -DGZIP_SUPPORT =
-DXZ_SUPPORT -DLZO_SUPPORT -DLZ4_SUPPORT -c -o mksquashfs.o mksquashfs.c<br=
 />mksquashfs.c: In function 'create_inode':<br />mksquashfs.c:996:24: erro=
r: called object 'major' is not a function or function pointer<br />unsigne=
d int major =3D major(buf-&gt;st_rdev);<br />^~~~~<br />mksquashfs.c:996:16=
: note: declared here<br />unsigned int major =3D major(buf-&gt;st_rdev);<b=
r />^~~~~<br /><br /><br />Something is very broken in mt76</blockquote>
That error is related to squashfs-tools, not mt76:<br /><a href=3D"https://=
downloads.openwrt.org/snapshots/faillogs/mips_24kc/packages/squashfs-tools/=
compile.txt" target=3D"_blank" rel=3D"noopener noreferrer">https://download=
s.openwrt.org/snapshots/faillogs/mips_24kc/packages/squashfs-tools/compile=
=2Etxt</a>
<blockquote type=3D"cite" style=3D"padding: 0 0.4em; border-left: #1010ff 2=
px solid; margin: 0"><br /><br /><br /><br /><br /><br />On 2019-08-02 23:1=
2, Joan Moreau wrote:<br /><br />Additionally, I get the following error in=
 the image generated (master) without the debugfs option then to allow comp=
ilation<br /><br /><br />[ 8.936247] jffs2: Error: unknown compressor "zlib=
"<br />[ 8.941939] mount_root: failed to mount -t jffs2 /dev/mtdblock6 /tmp=
/overlay: Invalid argument<br />[ 8.951033] mount_root: overlay filesystem =
has not been fully initialized yet<br />[ 8.958979] mount_root: switching t=
o jffs2 overlay<br />[ 8.964114] mount_root: switching to jffs2 failed - fa=
llback to ramoverlay<br /><br /><br /><br /><br />On 2019-08-02 21:37, Joan=
 Moreau wrote:<br /><br />Removing "debug fs" in compilation options remove=
s the problem.<br /><br />So there is something very awkward in the Makefil=
e<br /><br /><br /><br /><br /><br />On 2019-08-02 20:28, Joan Moreau wrote=
:<br /><br />attached<br /><br /><br /><br /><br />On 2019-08-02 18:36, Pet=
r &Scaron;tetiar wrote:<br /><br />Joan Moreau via openwrt-devel &lt;<a hre=
f=3D"mailto:openwrt-devel@lists.openwrt.org">openwrt-devel@lists.openwrt.or=
g</a>&gt; [2019-08-02 07:56:41]:<br /><br />Hello,<br /><br />I reach the f=
ollowing error while compiling my MT7620/ZBT826-16M on<br />master (no erro=
r on 18.06) :<br /><br />CC [M]<br />/usr/src/openwrt/4g/build_dir/target-m=
ipsel_24kc_musl/linux-ramips_mt7620/mt76-2019-07-22-75656a45/mt7603/pci.o<b=
r />&lt;command-line&gt;:0:37: error: redeclaration of enumerator<br />'IEE=
E80211_HW_REPORTS_TX_ACK_STATUS'<br />&lt;command-line&gt;:0:37: note: in d=
efinition of macro<br />'IEEE80211_HW_TX_STATUS_NO_AMPDU_LEN'<br />In file =
included from<br />/usr/src/openwrt/4g/build_dir/target-mipsel_24kc_musl/li=
nux-ramips_mt7620/mt76-2019-07-22-75656a45/mt7603/../mt76.h:27:0,<br />from=
<br />/usr/src/openwrt/4g/build_dir/target-mipsel_24kc_musl/linux-ramips_mt=
7620/mt76-2019-07-22-75656a45/mt7603/mt7603.h:8,<br />from<br />/usr/src/op=
enwrt/4g/build_dir/target-mipsel_24kc_musl/linux-ramips_mt7620/mt76-2019-07=
-22-75656a45/mt7603/pci.c:7:<br />/usr/src/openwrt/4g/staging_dir/target-mi=
psel_24kc_musl/usr/include/mac80211/net/mac80211.h:2293:2:<br />note: previ=
ous definition of 'IEEE80211_HW_REPORTS_TX_ACK_STATUS' was<br />here<br />I=
EEE80211_HW_REPORTS_TX_ACK_STATUS,<br />^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~<=
br />make[6]: *** [scripts/Makefile.build:327:<br />/usr/src/openwrt/4g/bui=
ld_dir/target-mipsel_24kc_musl/linux-ramips_mt7620/mt76-2019-07-22-75656a45=
/mt7603/pci.o]<br />Error 1<br />make[5]: *** [scripts/Makefile.build:585:<=
br />/usr/src/openwrt/4g/build_dir/target-mipsel_24kc_musl/linux-ramips_mt7=
620/mt76-2019-07-22-75656a45/mt7603]<br />Error 2<br />make[4]: *** [Makefi=
le:1532:<br />_module_/usr/src/openwrt/4g/build_dir/target-mipsel_24kc_musl=
/linux-ramips_mt7620/mt76-2019-07-22-75656a45]<br />Error 2<br /><br />Can =
you help ?<br /><br /><br />the problem is probably in this compile check[1=
], so please do following:<br /><br />&nbsp;make package/mt76/{clean,prepar=
e}<br />&nbsp;sed -i 's;TMP";TMP" 2&gt; $(TOPDIR)/meh.log;' build_dir/targe=
t-mipsel_24kc_musl/linux-ramips_mt7620/mt76-2019-07-22-75656a45/mt7603/Make=
file<br />&nbsp;make package/mt76/compile<br />&nbsp;scripts/diffconfig.sh =
&gt;&gt; meh.log; gzip meh.log<br /><br />and send meh.log.gz file as attac=
hment.<br /><br />1. <a href=3D"https://github.com/openwrt/mt76/blob/master=
/mt7603/Makefile#L7" target=3D"_blank" rel=3D"noopener noreferrer">https://=
github.com/openwrt/mt76/blob/master/mt7603/Makefile#L7</a><br /><br />-- yn=
ezz<br /><br />_______________________________________________<br />openwrt=
-devel mailing list<br /><a href=3D"mailto:openwrt-devel@lists.openwrt.org"=
>openwrt-devel@lists.openwrt.org</a><br /><a href=3D"https://lists.openwrt=
=2Eorg/mailman/listinfo/openwrt-devel" target=3D"_blank" rel=3D"noopener no=
referrer">https://lists.openwrt.org/mailman/listinfo/openwrt-devel</a><br /=
><br />_______________________________________________<br />openwrt-devel m=
ailing list<br /><a href=3D"mailto:openwrt-devel@lists.openwrt.org">openwrt=
-devel@lists.openwrt.org</a><br /><a href=3D"https://lists.openwrt.org/mail=
man/listinfo/openwrt-devel" target=3D"_blank" rel=3D"noopener noreferrer">h=
ttps://lists.openwrt.org/mailman/listinfo/openwrt-devel</a></blockquote>
<br />_______________________________________________<br />openwrt-devel ma=
iling list<br /><a href=3D"mailto:openwrt-devel@lists.openwrt.org">openwrt-=
devel@lists.openwrt.org</a><br /><a href=3D"https://lists.openwrt.org/mailm=
an/listinfo/openwrt-devel" target=3D"_blank" rel=3D"noopener noreferrer">ht=
tps://lists.openwrt.org/mailman/listinfo/openwrt-devel</a></div>
</blockquote>
</body></html>

--=_d8cccdf4fe06c663edb06c67c7aaf3c3--


--===============4138067448462891414==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4138067448462891414==--

