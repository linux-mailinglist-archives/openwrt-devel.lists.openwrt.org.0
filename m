Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 044021A6511
	for <lists+openwrt-devel@lfdr.de>; Mon, 13 Apr 2020 12:14:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:MIME-Version:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=qFF+kFWKtnAGP4SlqEVKJqu1DhjW2GLp1ygKD/7Izeg=; b=GFf
	kGOORyytY/3hGN3s5fgk1+1Pr/Br2vd7D7nYRWxg+sfPDoIoyeZuofa36ta+9bU4eaSUbDjzDCgwd
	RvOsYZhxBvSu5h1BQna0yKbz9jaQ7IlxqO3fmy/h96gcNAysBWgAn5Tdt9SiLNmYrtc3WZZcRj+8s
	QHhDsFC8zFovcCawxg/PelRoBQRoMZuAHokqh4ghyArrjn+US2bm72Nwi4mp/9jJox4S5ezAbXaGI
	u+u62MB+nto7IzljdedpeUF8bwaIRzss1U2G62mrQkrvnn/NKDgx/FDELj5Ho5metZ7NogLpGpMhP
	NDJwBYziwONA+dp/wCeVAb0pQu1Cudg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNw6w-0001OA-4r; Mon, 13 Apr 2020 10:14:38 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNw6p-0001NI-GH
 for openwrt-devel@lists.openwrt.org; Mon, 13 Apr 2020 10:14:33 +0000
Received: by mail-wr1-x42f.google.com with SMTP id j2so9598189wrs.9
 for <openwrt-devel@lists.openwrt.org>; Mon, 13 Apr 2020 03:14:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=melmac.net; s=google;
 h=mime-version:from:date:message-id:subject:to;
 bh=tQolXwJm08vyJesRs1tCvf+BAp+6Q1hR+SCUECm+gHI=;
 b=Rc9/jRDIUDb+S83JYIaUl34zXTSg+SdUxXNuOH75t/EyUEHCnqnYP2yshz9DEdGJ/n
 PXwEv+29bJUWIUg1AFy2Az15efWuiCX2ntXncwjLhAqIm6R3QiUoN4fLXY59IqATZVXT
 HvPDgs+zKgRRPR1UgNPTP3fYqvc0xVPTwrof4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=tQolXwJm08vyJesRs1tCvf+BAp+6Q1hR+SCUECm+gHI=;
 b=e8c2wxeJSg7YDeh27GQ2cVxK6uffdSvMlwTEjdcY+4DbxhqQVO4ul8BwBhLWRBmPRW
 pMb3hmyGwy2UhJQXb6sPZIkE++kJ817MwGvi9Au49qkxXdkO21BiEqAVGHdLjR7TSG3i
 /CBoXhbzunc17p+/8GFsrIPdQSn9v2a3Ab7QdtDBcQh4gY54TP7GtxdDFGTeBuLZN85n
 msnpM8Z6BYIXJ6/4kVtEYeiu8TNdgmgmIkgYYKLhxtrCw6ofeogmg06ZQILEJaMin4hE
 b03Z2qExbZ8iiNgV3jvNfhgj9qTrV/N3bMeJyjn0uii+zIMpYifW1Ji5OIVUcZRcUsbA
 Yh9A==
X-Gm-Message-State: AGi0PuYyZY1XNJU4lGuaMJbSipnvP7nK7IeDdF2Q3njZ8MjTMOsashIa
 wOzMu9JawOrkawT0NzReQ+2EzAoeTOaiP3z10qW6RqxcI5ypPg==
X-Google-Smtp-Source: APiQypJEU/KI/7XPASOGFp2p3YBYxpo0NB7NByj9xPLPlrPMHJWB8mG42TDKkuNGD/zrNVEkfmPvwy+x3Ut0749YHYk=
X-Received: by 2002:a5d:498b:: with SMTP id r11mr18004192wrq.368.1586772868878; 
 Mon, 13 Apr 2020 03:14:28 -0700 (PDT)
MIME-Version: 1.0
From: Stan Grishin <stangri@melmac.net>
Date: Mon, 13 Apr 2020 03:14:17 -0700
Message-ID: <CALu2O0Te_dc=Oqs9qc7FB=nZVMrpLAv3YAgJndYUSochBM=OyA@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_031431_548500_827CB737 
X-CRM114-Status: UNSURE (   6.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42f listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 WEIRD_PORT             URI: Uses non-standard port number for HTTP
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] Using the SDK vs toolchain for custom packages;
 SDK HW requirements; 
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============5311562576299820000=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============5311562576299820000==
Content-Type: multipart/alternative; boundary="00000000000030697605a32959e1"

--00000000000030697605a32959e1
Content-Type: text/plain; charset="UTF-8"

Is there a difference between using pre-built SDK (from
downloads.openwrt.org) vs the toolchain from git for building custom
packages? I've been using SDK, but here and from PMs on the forum I see
toolchain recommended -- why?

Also, I have only been installing only some libs + luci-base
with ./scripts/feeds install, however I'm seeing recommendations to install
all packages (./scripts/feeds install -a) which on my system (Ubuntu 18.04
8 GB RAM, 2 vCPUs, 160 GB SSD VM) result in the segfault.

After I've downloaded and unpacked a fresh SDK for mvebu/19.07.2, then in
the SDK directory:
rm -f .config && make defconfig
./scripts/feeds update -f
./scripts/feeds install -a
make -j1 V=sc
...
make[3]: ***
[/home/stangri/development/Builder/SDK_mvebu_19.07.2/build_dir/target-arm_cortex-a9+vfpv3_musl_eabi/linux-mvebu_cortexa9/base-files/.configured_ef91f8dd9e1b18f9e888cabc5c198db0_8e081b74cf069e1e6800a5bbcbb282f0]
Segmentation fault (core dumped)
make[3]: Leaving directory
'/home/stangri/development/Builder/SDK_mvebu_19.07.2/feeds/base/package/base-files'
time: package/feeds/base/base-files/compile#0.23#0.06#0.41
package/Makefile:111: recipe for target
'package/feeds/base/base-files/compile' failed
make[2]: *** [package/feeds/base/base-files/compile] Error 2
make[2]: Leaving directory
'/home/stangri/development/Builder/SDK_mvebu_19.07.2'
package/Makefile:107: recipe for target
'/home/stangri/development/Builder/SDK_mvebu_19.07.2/staging_dir/target-arm_cortex-a9+vfpv3_musl_eabi/stamp/.package_compile'
failed
make[1]: ***
[/home/stangri/development/Builder/SDK_mvebu_19.07.2/staging_dir/target-arm_cortex-a9+vfpv3_musl_eabi/stamp/.package_compile]
Error 2
make[1]: Leaving directory
'/home/stangri/development/Builder/SDK_mvebu_19.07.2'
/home/stangri/development/Builder/SDK_mvebu_19.07.2/include/toplevel.mk:218:
recipe for target 'world' failed
make: *** [world] Error 2

Am I doing something wrong?

Also, I don't believe this is addressed in wiki for neither SDK nor
toolchain, but in order to build a custom luci package, here's what I do --
I init a git directory in package/luci and with sparse checkout only
checkout luci.mk (and build directory of in18n.pl) from the
appropriate branch, then place custom luci apps in
package/luci/applications. I believe it was also recommended by one of the
core developers but in case it wasn't and it's something I came up with
myself -- is that the proper procedure for building custom (as in not in
the feeds) luci apps?

--00000000000030697605a32959e1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Is there a difference between using pre-built SDK (from <a=
 href=3D"http://downloads.openwrt.org">downloads.openwrt.org</a>) vs the to=
olchain from git for building custom packages? I&#39;ve been using SDK, but=
 here and from PMs on the forum I see toolchain recommended -- why?<div><br=
></div><div>Also, I have only been installing only some libs=C2=A0+ luci-ba=
se with=C2=A0./scripts/feeds install, however I&#39;m seeing recommendation=
s to install all packages (./scripts/feeds install -a) which on my system (=
Ubuntu 18.04 8 GB RAM, 2 vCPUs, 160 GB SSD VM) result in the segfault.=C2=
=A0<br><div><br></div><div>After I&#39;ve downloaded and unpacked a fresh=
=C2=A0SDK for mvebu/19.07.2, then in the SDK directory:<br></div><div>rm -f=
 .config &amp;&amp; make defconfig<br>./scripts/feeds update -f<br>./script=
s/feeds install -a<br>make=C2=A0-j1 V=3Dsc<br></div><div>...<br></div><div>=
make[3]: *** [/home/stangri/development/Builder/SDK_mvebu_19.07.2/build_dir=
/target-arm_cortex-a9+vfpv3_musl_eabi/linux-mvebu_cortexa9/base-files/.conf=
igured_ef91f8dd9e1b18f9e888cabc5c198db0_8e081b74cf069e1e6800a5bbcbb282f0] S=
egmentation fault (core dumped)<br></div><div>make[3]: Leaving directory &#=
39;/home/stangri/development/Builder/SDK_mvebu_19.07.2/feeds/base/package/b=
ase-files&#39;<br>time: package/feeds/base/base-files/compile#0.23#0.06#0.4=
1<br>package/Makefile:111: recipe for target &#39;package/feeds/base/base-f=
iles/compile&#39; failed<br>make[2]: *** [package/feeds/base/base-files/com=
pile] Error 2<br>make[2]: Leaving directory &#39;/home/stangri/development/=
Builder/SDK_mvebu_19.07.2&#39;<br>package/Makefile:107: recipe for target &=
#39;/home/stangri/development/Builder/SDK_mvebu_19.07.2/staging_dir/target-=
arm_cortex-a9+vfpv3_musl_eabi/stamp/.package_compile&#39; failed<br>make[1]=
: *** [/home/stangri/development/Builder/SDK_mvebu_19.07.2/staging_dir/targ=
et-arm_cortex-a9+vfpv3_musl_eabi/stamp/.package_compile] Error 2<br>make[1]=
: Leaving directory &#39;/home/stangri/development/Builder/SDK_mvebu_19.07.=
2&#39;<br>/home/stangri/development/Builder/SDK_mvebu_19.07.2/include/<a hr=
ef=3D"http://toplevel.mk:218">toplevel.mk:218</a>: recipe for target &#39;w=
orld&#39; failed<br>make: *** [world] Error 2<br></div><div><br></div></div=
><div>Am I doing something wrong?</div><div><br></div><div>Also, I don&#39;=
t believe this is addressed in wiki for neither SDK nor toolchain, but in o=
rder to build a custom luci package, here&#39;s what I do -- I init a git d=
irectory in package/luci and with sparse checkout only checkout <a href=3D"=
http://luci.mk">luci.mk</a> (and build directory of <a href=3D"http://in18n=
.pl">in18n.pl</a>) from the appropriate=C2=A0branch, then place custom luci=
 apps in package/luci/applications. I believe it was also recommended by on=
e of the core developers but in case it wasn&#39;t and it&#39;s something I=
 came up with myself -- is that the proper procedure for building custom (a=
s in not in the feeds) luci apps?</div></div>

--00000000000030697605a32959e1--


--===============5311562576299820000==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5311562576299820000==--

