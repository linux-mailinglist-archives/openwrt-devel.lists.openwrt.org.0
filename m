Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0D02907BE
	for <lists+openwrt-devel@lfdr.de>; Fri, 16 Aug 2019 20:26:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:MIME-Version:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=mYWSOSVx7LBkRg9f05Zr5k8zr54ny/43GgkNULZekGg=; b=n/D
	uyRxASfhtJkssQS+DuYmghk8ha+mAUjwVgHb+ij08RpUchDPUO+c7iRKsKozrecZ+EgUaDwojEl+4
	cce4+sVvPCPjyC06n9tm2VhJ9/LG9keqauL/rruhOWR20ZTvxh6AlJnj3PQSZrhlNnbMLFwtdWwZ2
	DZRcrQssgV1nJziezMSr4J437GquK7iLp1EZw2X2SBGIw9jdZHsQEMlqm0Jp36g+WVzixcFkWrRo/
	q2+Xwk2I5+6hTp450qOAgN1rRspYeBbVD6CzG+1/uXtieyZ2kUhb4EC2OA85GxqK5ay0tBaLbj/W6
	356orM6I/Js9NQ3fmOY68ztzDb3Oz/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hygvG-0002ep-Ct; Fri, 16 Aug 2019 18:25:58 +0000
Received: from mail-vs1-xe36.google.com ([2607:f8b0:4864:20::e36])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hygv5-0002eA-Jn
 for openwrt-devel@lists.openwrt.org; Fri, 16 Aug 2019 18:25:49 +0000
Received: by mail-vs1-xe36.google.com with SMTP id q188so4305945vsa.4
 for <openwrt-devel@lists.openwrt.org>; Fri, 16 Aug 2019 11:25:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=e+UvT7rkeya0HD5OYC06eYlBvR0szb9W/PyRAcFF1C0=;
 b=jAXexbydF1pt6vVD3tHW96aY7863XI4/93OUAQAIwt+M42jn3dYmXytTJk0qJZKh2q
 bmiRc/aYcPI/UmL7JNHPs6d9BBfyK0VCUH5N7BCxWLlGEpG53p10qC1QaFPPyTKBkMlc
 6WvO3UyExOlk7CGVLjzAEj0Cu5u5ZcpnsguaiRt4FAJfTZK1tirXO1MVF+CBGmG/WC3n
 Sk4L8iJ+TyLeFm2fsk4d59nWbNYvvLd1g9x/dSoNMG+qLJVPE676JHZE+s71FDmbFDOd
 rMMhDCyjkXuHrr87qERjIu7wISZpksgRUr7wSNdI52W0WVH6B6BBCCzjOuDrSRHwIw5j
 0XMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=e+UvT7rkeya0HD5OYC06eYlBvR0szb9W/PyRAcFF1C0=;
 b=IlnzoJ27cpF9kBa2TZlksPb5sTN4IL2YjY0Z7V7svE5oY4cljpZnhazOOgUtIK0Lc0
 mBcE0Q5cTol0II8GNURvD5RPD9EHoLsZrX6DU9GjjabiPkoh+Xoql0Q0w932WKu/hUUV
 dWAlSrHw+rmoQvDErvjnhLv/X8IRMMT97Pc3T3CWnm5hv8Y3mmntZR7Rc9BkZqIKE02b
 lnGLpaK/z59966/CxmtA+0nbaFJr/TBibJuf0YvmTOR/ZmKacGSqXKm/JeVr5r8k6Oj6
 yK1OZx3UFHR6IsTOPLvMXzCQs7F5PUE3zEf2F5DTWrm44efpr7N2MA62zY9bS+OfOtyM
 l2aA==
X-Gm-Message-State: APjAAAUjggySC7Q/5FupxKmBSqzoxTEkQE3yJNbDaV/CRURhXGkaoKfA
 sCGOHVmR3zfDC6aiIix8zTVMWAWe7N4GhMRyH/lXqjmQ
X-Google-Smtp-Source: APXvYqyhY4BOA0+n/bFlGha0CaxKpvbPnc02h01QL1rCTvwjryAzdqJu07jGxdqdKinz0IJYAhhBu2fG6D9wItmU/ug=
X-Received: by 2002:a67:8e0a:: with SMTP id q10mr7096860vsd.215.1565979941819; 
 Fri, 16 Aug 2019 11:25:41 -0700 (PDT)
MIME-Version: 1.0
From: Jeffery To <jeffery.to@gmail.com>
Date: Sat, 17 Aug 2019 02:25:30 +0800
Message-ID: <CAJXyS=jYMtmp3rhMP_Dv=fwB9AGDCyurPsyvm365SiroJw_0zA@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_112547_686271_20772575 
X-CRM114-Status: UNSURE (   6.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e36 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jeffery.to[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 WEIRD_PORT             URI: Uses non-standard port number for HTTP
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] Cannot compile cryptodev-linux using x86-64 SDK
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
Content-Type: multipart/mixed; boundary="===============8895450338210876467=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============8895450338210876467==
Content-Type: multipart/alternative; boundary="00000000000028597e0590401e58"

--00000000000028597e0590401e58
Content-Type: text/plain; charset="UTF-8"

Hi,

As the subject of this email says, I get an error when trying to compile
cryptodev-linux using the x86-64 SDK. (Though a different error than the
one I found with the armvirt-64 SDK.)

This error has been happening for a while, at least a month. (I haven't had
time to follow up until now.) I suspect this is also related to the switch
to the 4.19 kernel, though I have no direct evidence.

The error message (included below) doesn't seem too helpful. Any help in
fixing this would be appreciated.

Thanks,
Jeff


Make output:
make[2]: Entering directory
'/media/jeff/Jekyll/Files/openwrt/testing/c/x86-64/feeds/base/package/kernel/cryptodev-linux'
touch
/media/jeff/Jekyll/Files/openwrt/testing/c/x86-64/build_dir/target-x86_64_musl/linux-x86_64/cryptodev-linux-cryptodev-linux-1.10/.prepared_35c87bfa80bf594a5e3809806f37d832_6664517399ebbbc92a37c5bb081b5c53_check
. /media/jeff/Jekyll/Files/openwrt/testing/c/x86-64/include/shell.sh; gzip
-dc /media/jeff/Jekyll/Files/openwrt/dl/cryptodev-linux-1.10.tar.gz | tar
-C
/media/jeff/Jekyll/Files/openwrt/testing/c/x86-64/build_dir/target-x86_64_musl/linux-x86_64/cryptodev-linux-cryptodev-linux-1.10/..
-xf -
[ ! -d ./src/ ] || cp -fpR ./src/.
/media/jeff/Jekyll/Files/openwrt/testing/c/x86-64/build_dir/target-x86_64_musl/linux-x86_64/cryptodev-linux-cryptodev-linux-1.10
touch
/media/jeff/Jekyll/Files/openwrt/testing/c/x86-64/build_dir/target-x86_64_musl/linux-x86_64/cryptodev-linux-cryptodev-linux-1.10/.prepared_35c87bfa80bf594a5e3809806f37d832_6664517399ebbbc92a37c5bb081b5c53
rm -f
/media/jeff/Jekyll/Files/openwrt/testing/c/x86-64/build_dir/target-x86_64_musl/linux-x86_64/cryptodev-linux-cryptodev-linux-1.10/.configured_*
rm -f
/media/jeff/Jekyll/Files/openwrt/testing/c/x86-64/staging_dir/target-x86_64_musl/stamp/.cryptodev-linux_installed
touch
/media/jeff/Jekyll/Files/openwrt/testing/c/x86-64/build_dir/target-x86_64_musl/linux-x86_64/cryptodev-linux-cryptodev-linux-1.10/.configured_68b329da9893e34099c7d8ad5cb9c940
rm -f
/media/jeff/Jekyll/Files/openwrt/testing/c/x86-64/build_dir/target-x86_64_musl/linux-x86_64/cryptodev-linux-cryptodev-linux-1.10/.built
touch
/media/jeff/Jekyll/Files/openwrt/testing/c/x86-64/build_dir/target-x86_64_musl/linux-x86_64/cryptodev-linux-cryptodev-linux-1.10/.built_check
cat /dev/null >
/media/jeff/Jekyll/Files/openwrt/testing/c/x86-64/staging_dir/target-x86_64_musl/pkginfo/cryptodev-linux.symvers;
for subdir in .; do cat
/media/jeff/Jekyll/Files/openwrt/testing/c/x86-64/staging_dir/target-x86_64_musl/pkginfo/*.symvers
2>/dev/null >
/media/jeff/Jekyll/Files/openwrt/testing/c/x86-64/build_dir/target-x86_64_musl/linux-x86_64/cryptodev-linux-cryptodev-linux-1.10/$subdir/Module.symvers;
done
make -C
/media/jeff/Jekyll/Files/openwrt/testing/c/x86-64/build_dir/target-x86_64_musl/linux-x86_64/cryptodev-linux-cryptodev-linux-1.10
HOSTCFLAGS="-O2
-I/media/jeff/Jekyll/Files/openwrt/testing/c/x86-64/staging_dir/host/include
-I/media/jeff/Jekyll/Files/openwrt/testing/c/x86-64/staging_dir/hostpkg/include
-I/media/jeff/Jekyll/Files/openwrt/testing/c/x86-64/staging_dir/target-x86_64_musl/host/include
-Wall -Wmissing-prototypes -Wstrict-prototypes"
CROSS_COMPILE="x86_64-openwrt-linux-musl-" ARCH="x86" KBUILD_HAVE_NLS=no
KBUILD_BUILD_USER="builder" KBUILD_BUILD_HOST="buildhost"
KBUILD_BUILD_TIMESTAMP="Thu Aug 15 12:25:51 2019" KBUILD_BUILD_VERSION="0"
HOST_LOADLIBES="-L/media/jeff/Jekyll/Files/openwrt/testing/c/x86-64/staging_dir/host/lib"
CONFIG_SHELL="bash" V=''  cmd_syscalls= KERNELRELEASE=4.19.66
KERNEL_DIR="/media/jeff/Jekyll/Files/openwrt/testing/c/x86-64/build_dir/target-x86_64_musl/linux-x86_64/linux-4.19.66"
make[3]: Entering directory
'/media/jeff/Jekyll/Files/openwrt/testing/c/x86-64/build_dir/target-x86_64_musl/linux-x86_64/cryptodev-linux-cryptodev-linux-1.10'
make -C
/media/jeff/Jekyll/Files/openwrt/testing/c/x86-64/build_dir/target-x86_64_musl/linux-x86_64/linux-4.19.66
M=/media/jeff/Jekyll/Files/openwrt/testing/c/x86-64/build_dir/target-x86_64_musl/linux-x86_64/cryptodev-linux-cryptodev-linux-1.10
ARCH=x86 CROSS_COMPILE=x86_64-openwrt-linux-musl- modules
make[4]: Entering directory
'/media/jeff/Jekyll/Files/openwrt/testing/c/x86-64/build_dir/target-x86_64_musl/linux-x86_64/linux-4.19.66'
make[5]: *** No rule to make target
'/media/jeff/Jekyll/Files/openwrt/testing/c/x86-64/build_dir/target-x86_64_musl/linux-x86_64/cryptodev-linux-cryptodev-linux-1.10/ioctl.o',
needed by
'/media/jeff/Jekyll/Files/openwrt/testing/c/x86-64/build_dir/target-x86_64_musl/linux-x86_64/cryptodev-linux-cryptodev-linux-1.10/cryptodev.o'.
Stop.
make[4]: *** [Makefile:1517:
_module_/media/jeff/Jekyll/Files/openwrt/testing/c/x86-64/build_dir/target-x86_64_musl/linux-x86_64/cryptodev-linux-cryptodev-linux-1.10]
Error 2
make[4]: Leaving directory
'/media/jeff/Jekyll/Files/openwrt/testing/c/x86-64/build_dir/target-x86_64_musl/linux-x86_64/linux-4.19.66'
make[3]: *** [Makefile:27: build] Error 2
make[3]: Leaving directory
'/media/jeff/Jekyll/Files/openwrt/testing/c/x86-64/build_dir/target-x86_64_musl/linux-x86_64/cryptodev-linux-cryptodev-linux-1.10'
make[2]: *** [Makefile:63:
/media/jeff/Jekyll/Files/openwrt/testing/c/x86-64/build_dir/target-x86_64_musl/linux-x86_64/cryptodev-linux-cryptodev-linux-1.10/.built]
Error 2
make[2]: Leaving directory
'/media/jeff/Jekyll/Files/openwrt/testing/c/x86-64/feeds/base/package/kernel/cryptodev-linux'
time: package/feeds/base/cryptodev-linux/compile#1.59#1.05#15.02
make[1]: *** [package/Makefile:113:
package/feeds/base/cryptodev-linux/compile] Error 2
make[1]: Leaving directory
'/media/jeff/Jekyll/Files/openwrt/testing/c/x86-64'
make: *** [/media/jeff/Jekyll/Files/openwrt/testing/c/x86-64/include/
toplevel.mk:211: package/cryptodev-linux/compile] Error 2

--00000000000028597e0590401e58
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>As the subject of this e=
mail says, I get an error when trying to compile cryptodev-linux using the =
x86-64 SDK. (Though a different error than the one I found with the armvirt=
-64 SDK.)</div><div><br></div><div>This error has been happening for a whil=
e, at least a month. (I haven&#39;t had time to follow up until now.) I sus=
pect this is also related to the switch to the 4.19 kernel, though I have n=
o direct evidence.</div><div><br></div><div>The error message (included bel=
ow) doesn&#39;t seem too helpful. Any help in fixing this would be apprecia=
ted.</div><div><br></div><div>Thanks,</div><div>Jeff</div><div><br></div><d=
iv><br></div><div>Make output:</div><div>make[2]: Entering directory &#39;/=
media/jeff/Jekyll/Files/openwrt/testing/c/x86-64/feeds/base/package/kernel/=
cryptodev-linux&#39;<br>touch /media/jeff/Jekyll/Files/openwrt/testing/c/x8=
6-64/build_dir/target-x86_64_musl/linux-x86_64/cryptodev-linux-cryptodev-li=
nux-1.10/.prepared_35c87bfa80bf594a5e3809806f37d832_6664517399ebbbc92a37c5b=
b081b5c53_check<br>. /media/jeff/Jekyll/Files/openwrt/testing/c/x86-64/incl=
ude/shell.sh; gzip -dc /media/jeff/Jekyll/Files/openwrt/dl/cryptodev-linux-=
1.10.tar.gz | tar -C /media/jeff/Jekyll/Files/openwrt/testing/c/x86-64/buil=
d_dir/target-x86_64_musl/linux-x86_64/cryptodev-linux-cryptodev-linux-1.10/=
.. -xf -<br>[ ! -d ./src/ ] || cp -fpR ./src/. /media/jeff/Jekyll/Files/ope=
nwrt/testing/c/x86-64/build_dir/target-x86_64_musl/linux-x86_64/cryptodev-l=
inux-cryptodev-linux-1.10<br>touch /media/jeff/Jekyll/Files/openwrt/testing=
/c/x86-64/build_dir/target-x86_64_musl/linux-x86_64/cryptodev-linux-cryptod=
ev-linux-1.10/.prepared_35c87bfa80bf594a5e3809806f37d832_6664517399ebbbc92a=
37c5bb081b5c53<br>rm -f /media/jeff/Jekyll/Files/openwrt/testing/c/x86-64/b=
uild_dir/target-x86_64_musl/linux-x86_64/cryptodev-linux-cryptodev-linux-1.=
10/.configured_*<br>rm -f /media/jeff/Jekyll/Files/openwrt/testing/c/x86-64=
/staging_dir/target-x86_64_musl/stamp/.cryptodev-linux_installed<br>touch /=
media/jeff/Jekyll/Files/openwrt/testing/c/x86-64/build_dir/target-x86_64_mu=
sl/linux-x86_64/cryptodev-linux-cryptodev-linux-1.10/.configured_68b329da98=
93e34099c7d8ad5cb9c940<br>rm -f /media/jeff/Jekyll/Files/openwrt/testing/c/=
x86-64/build_dir/target-x86_64_musl/linux-x86_64/cryptodev-linux-cryptodev-=
linux-1.10/.built<br>touch /media/jeff/Jekyll/Files/openwrt/testing/c/x86-6=
4/build_dir/target-x86_64_musl/linux-x86_64/cryptodev-linux-cryptodev-linux=
-1.10/.built_check<br>cat /dev/null &gt; /media/jeff/Jekyll/Files/openwrt/t=
esting/c/x86-64/staging_dir/target-x86_64_musl/pkginfo/cryptodev-linux.symv=
ers; for subdir in .; do cat /media/jeff/Jekyll/Files/openwrt/testing/c/x86=
-64/staging_dir/target-x86_64_musl/pkginfo/*.symvers 2&gt;/dev/null &gt; /m=
edia/jeff/Jekyll/Files/openwrt/testing/c/x86-64/build_dir/target-x86_64_mus=
l/linux-x86_64/cryptodev-linux-cryptodev-linux-1.10/$subdir/Module.symvers;=
 done<br>make -C /media/jeff/Jekyll/Files/openwrt/testing/c/x86-64/build_di=
r/target-x86_64_musl/linux-x86_64/cryptodev-linux-cryptodev-linux-1.10 HOST=
CFLAGS=3D&quot;-O2 -I/media/jeff/Jekyll/Files/openwrt/testing/c/x86-64/stag=
ing_dir/host/include -I/media/jeff/Jekyll/Files/openwrt/testing/c/x86-64/st=
aging_dir/hostpkg/include -I/media/jeff/Jekyll/Files/openwrt/testing/c/x86-=
64/staging_dir/target-x86_64_musl/host/include -Wall -Wmissing-prototypes -=
Wstrict-prototypes&quot; CROSS_COMPILE=3D&quot;x86_64-openwrt-linux-musl-&q=
uot; ARCH=3D&quot;x86&quot; KBUILD_HAVE_NLS=3Dno KBUILD_BUILD_USER=3D&quot;=
builder&quot; KBUILD_BUILD_HOST=3D&quot;buildhost&quot; KBUILD_BUILD_TIMEST=
AMP=3D&quot;Thu Aug 15 12:25:51 2019&quot; KBUILD_BUILD_VERSION=3D&quot;0&q=
uot; HOST_LOADLIBES=3D&quot;-L/media/jeff/Jekyll/Files/openwrt/testing/c/x8=
6-64/staging_dir/host/lib&quot; CONFIG_SHELL=3D&quot;bash&quot; V=3D&#39;&#=
39; =C2=A0cmd_syscalls=3D KERNELRELEASE=3D4.19.66 KERNEL_DIR=3D&quot;/media=
/jeff/Jekyll/Files/openwrt/testing/c/x86-64/build_dir/target-x86_64_musl/li=
nux-x86_64/linux-4.19.66&quot;<br>make[3]: Entering directory &#39;/media/j=
eff/Jekyll/Files/openwrt/testing/c/x86-64/build_dir/target-x86_64_musl/linu=
x-x86_64/cryptodev-linux-cryptodev-linux-1.10&#39;<br>make -C /media/jeff/J=
ekyll/Files/openwrt/testing/c/x86-64/build_dir/target-x86_64_musl/linux-x86=
_64/linux-4.19.66 M=3D/media/jeff/Jekyll/Files/openwrt/testing/c/x86-64/bui=
ld_dir/target-x86_64_musl/linux-x86_64/cryptodev-linux-cryptodev-linux-1.10=
 ARCH=3Dx86 CROSS_COMPILE=3Dx86_64-openwrt-linux-musl- modules<br>make[4]: =
Entering directory &#39;/media/jeff/Jekyll/Files/openwrt/testing/c/x86-64/b=
uild_dir/target-x86_64_musl/linux-x86_64/linux-4.19.66&#39;<br>make[5]: ***=
 No rule to make target &#39;/media/jeff/Jekyll/Files/openwrt/testing/c/x86=
-64/build_dir/target-x86_64_musl/linux-x86_64/cryptodev-linux-cryptodev-lin=
ux-1.10/ioctl.o&#39;, needed by &#39;/media/jeff/Jekyll/Files/openwrt/testi=
ng/c/x86-64/build_dir/target-x86_64_musl/linux-x86_64/cryptodev-linux-crypt=
odev-linux-1.10/cryptodev.o&#39;.=C2=A0 Stop.<br>make[4]: *** [Makefile:151=
7: _module_/media/jeff/Jekyll/Files/openwrt/testing/c/x86-64/build_dir/targ=
et-x86_64_musl/linux-x86_64/cryptodev-linux-cryptodev-linux-1.10] Error 2<b=
r>make[4]: Leaving directory &#39;/media/jeff/Jekyll/Files/openwrt/testing/=
c/x86-64/build_dir/target-x86_64_musl/linux-x86_64/linux-4.19.66&#39;<br>ma=
ke[3]: *** [Makefile:27: build] Error 2<br>make[3]: Leaving directory &#39;=
/media/jeff/Jekyll/Files/openwrt/testing/c/x86-64/build_dir/target-x86_64_m=
usl/linux-x86_64/cryptodev-linux-cryptodev-linux-1.10&#39;<br>make[2]: *** =
[Makefile:63: /media/jeff/Jekyll/Files/openwrt/testing/c/x86-64/build_dir/t=
arget-x86_64_musl/linux-x86_64/cryptodev-linux-cryptodev-linux-1.10/.built]=
 Error 2<br>make[2]: Leaving directory &#39;/media/jeff/Jekyll/Files/openwr=
t/testing/c/x86-64/feeds/base/package/kernel/cryptodev-linux&#39;<br>time: =
package/feeds/base/cryptodev-linux/compile#1.59#1.05#15.02<br>make[1]: *** =
[package/Makefile:113: package/feeds/base/cryptodev-linux/compile] Error 2<=
br>make[1]: Leaving directory &#39;/media/jeff/Jekyll/Files/openwrt/testing=
/c/x86-64&#39;<br>make: *** [/media/jeff/Jekyll/Files/openwrt/testing/c/x86=
-64/include/<a href=3D"http://toplevel.mk:211">toplevel.mk:211</a>: package=
/cryptodev-linux/compile] Error 2</div></div>

--00000000000028597e0590401e58--


--===============8895450338210876467==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8895450338210876467==--

