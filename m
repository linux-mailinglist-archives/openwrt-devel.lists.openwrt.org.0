Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B42287E1E5
	for <lists+openwrt-devel@lfdr.de>; Thu,  1 Aug 2019 20:04:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:MIME-Version:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=wQW9G35WFiTh5s4w3GIAAqGLmrGq05y/PiYm1q676No=; b=C9p
	DfNdKoi9kNYUmfukUxX14hBymDHZicDBDnsjGPCb5q43WyvNp5IItoNuVPDylWNg5s1SpM0lj76+O
	e4FYa4hkYP62FsyRkeHcXLUN3oAsneUG3zo/4iJkwZO8f+ZeBFKPNEFsH3MLXSb0czaxrXWqj/taD
	bBTxTQ9/vscJL5ZXNFQ8gwlv5WUCFJvR+6e9O4ons1+S3tzRDuRbg/kPxnhGARPbs+F3ghM+VegGW
	k0HEt+/ay7P4X5F9KLTeQLKuwcU7fOA/dVTU1776FJUZsxdNEXH3tdHeZJwQJ6m+9gThRHYv/AL6m
	ohjGBPIsEldXGfKc4l/a+p6n6Pix5fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htFRT-0000AJ-VW; Thu, 01 Aug 2019 18:04:43 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htFRN-0000A0-EL
 for openwrt-devel@lists.openwrt.org; Thu, 01 Aug 2019 18:04:39 +0000
Received: by mail-vs1-xe44.google.com with SMTP id v6so49552671vsq.4
 for <openwrt-devel@lists.openwrt.org>; Thu, 01 Aug 2019 11:04:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=bMLFERbN0d/Lx373/GyHquVjI04/5vb4k1pBZDNmWtY=;
 b=NrFfcdVkzFskore5bmYuw3KSyCeqvtNr0jNMwIffZVQLPnX+xAzUkKFkLYNL98ViRY
 clPplCP98/of7lN4Ok3GhLtrkXjKxKLAvOhv/8I8yJCW3nOTzF8AgTPv0W5S3AKk8kmI
 AdpAfJEwG32WO5ExdI38L6H6KipjPAJyZjowmenv1oD9VQzDq9e5QFU2w2DJe4V+kJV0
 9NM8ugwPYjJTSss8Rj1x5A+Smgs1smQJCmDERH1qB+nrtzuYYIZZkawG3MObP6kYbaTV
 SZudxcSLgo0ot33R+Gka056px5/nyGcO1EniQ5/qOUBcnZYrp7dTBK3s6yessV2EuQU7
 CRYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=bMLFERbN0d/Lx373/GyHquVjI04/5vb4k1pBZDNmWtY=;
 b=R/9UOq6cZ4v0DmCqB2o557VKUGYZMGb9XcDY+qXEQGMWNuo3uNc2QC8wW7NQF+4pxm
 8u5TMiC26EMLwB7jkuaDmoYMLY4Snl1hKRwHvEPXZvjRdl3bm3OXcEL32VEKVEs/HEd4
 Am+3YGL2tYsQWK94Nd5qOduO9zdSOZaOGJjzv3MBJ/WUGlU1UttHYqkr47lXW3Rl7mA9
 aaR16eBs8wHBTDVMplXBzQrwSwzWYuwzaY7AKhIhoyuUTYIJ6EfuTb+Hl5mSy88XPzHN
 YprweT9MMcOot3KVdDRV2Wg9w/O8dGmsHtG2q9P7/GffqFfH07PCzA+q9HviAB4euomz
 WcXA==
X-Gm-Message-State: APjAAAXw2yt6UNLocOJ2UnhjtZN3Ha4OQ7hX7JQkzRIzFo8XAwj8tbyf
 C1R6YPRB4djRWvCZjaz/KqXQ+b2jLszy5rcxOvriyY8M
X-Google-Smtp-Source: APXvYqxc/NI2iYfr+RwCpUJrWVABt9ZJPlIl6IpJic0uy/ExyZSrj+7g5k1d0tDwtR8RIZhxAS5eJ+IAJY34a8RYd5g=
X-Received: by 2002:a67:c016:: with SMTP id v22mr85729853vsi.107.1564682674926; 
 Thu, 01 Aug 2019 11:04:34 -0700 (PDT)
MIME-Version: 1.0
From: Jeffery To <jeffery.to@gmail.com>
Date: Fri, 2 Aug 2019 02:04:23 +0800
Message-ID: <CAJXyS=g12DcdYsUMoSOMTY6oDJrd8K+M6_Bp15fK0-dAJ3x-Zg@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_110437_513619_748015DE 
X-CRM114-Status: GOOD (  10.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jeffery.to[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 0.0 WEIRD_PORT             URI: Uses non-standard port number for HTTP
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] Cryptodev-linux compile error with armvirt-64 sdk
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
Content-Type: multipart/mixed; boundary="===============0781388921722341571=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============0781388921722341571==
Content-Type: multipart/alternative; boundary="0000000000000678cf058f121312"

--0000000000000678cf058f121312
Content-Type: text/plain; charset="UTF-8"

Hi,

I need to compile the Python package(s) somewhat regularly, but I haven't
been able to recently using the armvirt-64 sdk, because of a compile error
for cryptodev-linux. (I have copied the make output below.)

I believe this started after a459d237 (this added
CONFIG_ARM64_MODULE_PLTS=y, which leads make to look for a non-existent
linker script file "./arch/arm64/kernel/module.lds"), but I haven't
verified it yet.

I tried doing a fresh checkout of master and building the Python package
directly; it worked without an error, but it also didn't need to compile
cryptodev-linux, so I'm not sure if any conclusions can be drawn from this.

Does anyone have any insight on this? I'm not really sure where the root
issue is, or how to go about fixing it.

Thanks,
Jeff


Make output:
make[2]: Entering directory
'/media/jeff/Jekyll/Files/openwrt/testing/armvirt-64/feeds/base/package/kernel/cryptodev-linux'
touch
/media/jeff/Jekyll/Files/openwrt/testing/armvirt-64/build_dir/target-aarch64_generic_musl/linux-armvirt_64/cryptodev-linux-cryptodev-linux-1.10/.prepared_c86d6c695a6eb4715e8aacaf7644c80b_6664517399ebbbc92a37c5bb081b5c53_check
. /media/jeff/Jekyll/Files/openwrt/testing/armvirt-64/include/shell.sh;
gzip -dc /media/jeff/Jekyll/Files/openwrt/dl/cryptodev-linux-1.10.tar.gz |
tar -C
/media/jeff/Jekyll/Files/openwrt/testing/armvirt-64/build_dir/target-aarch64_generic_musl/linux-armvirt_64/cryptodev-linux-cryptodev-linux-1.10/..
-xf -
[ ! -d ./src/ ] || cp -fpR ./src/.
/media/jeff/Jekyll/Files/openwrt/testing/armvirt-64/build_dir/target-aarch64_generic_musl/linux-armvirt_64/cryptodev-linux-cryptodev-linux-1.10
touch
/media/jeff/Jekyll/Files/openwrt/testing/armvirt-64/build_dir/target-aarch64_generic_musl/linux-armvirt_64/cryptodev-linux-cryptodev-linux-1.10/.prepared_c86d6c695a6eb4715e8aacaf7644c80b_6664517399ebbbc92a37c5bb081b5c53
rm -f
/media/jeff/Jekyll/Files/openwrt/testing/armvirt-64/build_dir/target-aarch64_generic_musl/linux-armvirt_64/cryptodev-linux-cryptodev-linux-1.10/.configured_*
rm -f
/media/jeff/Jekyll/Files/openwrt/testing/armvirt-64/staging_dir/target-aarch64_generic_musl/stamp/.cryptodev-linux_installed
touch
/media/jeff/Jekyll/Files/openwrt/testing/armvirt-64/build_dir/target-aarch64_generic_musl/linux-armvirt_64/cryptodev-linux-cryptodev-linux-1.10/.configured_68b329da9893e34099c7d8ad5cb9c940
rm -f
/media/jeff/Jekyll/Files/openwrt/testing/armvirt-64/build_dir/target-aarch64_generic_musl/linux-armvirt_64/cryptodev-linux-cryptodev-linux-1.10/.built
touch
/media/jeff/Jekyll/Files/openwrt/testing/armvirt-64/build_dir/target-aarch64_generic_musl/linux-armvirt_64/cryptodev-linux-cryptodev-linux-1.10/.built_check
cat /dev/null >
/media/jeff/Jekyll/Files/openwrt/testing/armvirt-64/staging_dir/target-aarch64_generic_musl/pkginfo/cryptodev-linux.symvers;
for subdir in .; do cat
/media/jeff/Jekyll/Files/openwrt/testing/armvirt-64/staging_dir/target-aarch64_generic_musl/pkginfo/*.symvers
2>/dev/null >
/media/jeff/Jekyll/Files/openwrt/testing/armvirt-64/build_dir/target-aarch64_generic_musl/linux-armvirt_64/cryptodev-linux-cryptodev-linux-1.10/$subdir/Module.symvers;
done
make -C
/media/jeff/Jekyll/Files/openwrt/testing/armvirt-64/build_dir/target-aarch64_generic_musl/linux-armvirt_64/cryptodev-linux-cryptodev-linux-1.10
HOSTCFLAGS="-O2
-I/media/jeff/Jekyll/Files/openwrt/testing/armvirt-64/staging_dir/host/include
-I/media/jeff/Jekyll/Files/openwrt/testing/armvirt-64/staging_dir/hostpkg/include
-I/media/jeff/Jekyll/Files/openwrt/testing/armvirt-64/staging_dir/target-aarch64_generic_musl/host/include
-Wall -Wmissing-prototypes -Wstrict-prototypes"
CROSS_COMPILE="aarch64-openwrt-linux-musl-" ARCH="arm64" KBUILD_HAVE_NLS=no
KBUILD_BUILD_USER="builder" KBUILD_BUILD_HOST="buildhost"
KBUILD_BUILD_TIMESTAMP="Wed Jul 31 14:53:41 2019" KBUILD_BUILD_VERSION="0"
HOST_LOADLIBES="-L/media/jeff/Jekyll/Files/openwrt/testing/armvirt-64/staging_dir/host/lib"
CONFIG_SHELL="bash" V=''  cmd_syscalls= KERNELRELEASE=4.19.62
KERNEL_DIR="/media/jeff/Jekyll/Files/openwrt/testing/armvirt-64/build_dir/target-aarch64_generic_musl/linux-armvirt_64/linux-4.19.62"
make[3]: Entering directory
'/media/jeff/Jekyll/Files/openwrt/testing/armvirt-64/build_dir/target-aarch64_generic_musl/linux-armvirt_64/cryptodev-linux-cryptodev-linux-1.10'
make -C
/media/jeff/Jekyll/Files/openwrt/testing/armvirt-64/build_dir/target-aarch64_generic_musl/linux-armvirt_64/linux-4.19.62
M=/media/jeff/Jekyll/Files/openwrt/testing/armvirt-64/build_dir/target-aarch64_generic_musl/linux-armvirt_64/cryptodev-linux-cryptodev-linux-1.10
ARCH=arm64 CROSS_COMPILE=aarch64-openwrt-linux-musl- modules
make[4]: Entering directory
'/media/jeff/Jekyll/Files/openwrt/testing/armvirt-64/build_dir/target-aarch64_generic_musl/linux-armvirt_64/linux-4.19.62'
  CC [M]
 /media/jeff/Jekyll/Files/openwrt/testing/armvirt-64/build_dir/target-aarch64_generic_musl/linux-armvirt_64/cryptodev-linux-cryptodev-linux-1.10/ioctl.o
  CC [M]
 /media/jeff/Jekyll/Files/openwrt/testing/armvirt-64/build_dir/target-aarch64_generic_musl/linux-armvirt_64/cryptodev-linux-cryptodev-linux-1.10/main.o
  CC [M]
 /media/jeff/Jekyll/Files/openwrt/testing/armvirt-64/build_dir/target-aarch64_generic_musl/linux-armvirt_64/cryptodev-linux-cryptodev-linux-1.10/cryptlib.o
  CC [M]
 /media/jeff/Jekyll/Files/openwrt/testing/armvirt-64/build_dir/target-aarch64_generic_musl/linux-armvirt_64/cryptodev-linux-cryptodev-linux-1.10/authenc.o
  CC [M]
 /media/jeff/Jekyll/Files/openwrt/testing/armvirt-64/build_dir/target-aarch64_generic_musl/linux-armvirt_64/cryptodev-linux-cryptodev-linux-1.10/zc.o
  CC [M]
 /media/jeff/Jekyll/Files/openwrt/testing/armvirt-64/build_dir/target-aarch64_generic_musl/linux-armvirt_64/cryptodev-linux-cryptodev-linux-1.10/util.o
  LD [M]
 /media/jeff/Jekyll/Files/openwrt/testing/armvirt-64/build_dir/target-aarch64_generic_musl/linux-armvirt_64/cryptodev-linux-cryptodev-linux-1.10/cryptodev.o
  Building modules, stage 2.
  MODPOST 1 modules
  CC
 /media/jeff/Jekyll/Files/openwrt/testing/armvirt-64/build_dir/target-aarch64_generic_musl/linux-armvirt_64/cryptodev-linux-cryptodev-linux-1.10/cryptodev.mod.o
  LD [M]
 /media/jeff/Jekyll/Files/openwrt/testing/armvirt-64/build_dir/target-aarch64_generic_musl/linux-armvirt_64/cryptodev-linux-cryptodev-linux-1.10/cryptodev.ko
/media/jeff/Jekyll/Files/openwrt/testing/armvirt-64/staging_dir/toolchain-aarch64_generic_gcc-7.4.0_musl/bin/aarch64-openwrt-linux-musl-ld:
cannot open linker script file ./arch/arm64/kernel/module.lds: No such file
or directory
make[5]: *** [scripts/Makefile.modpost:129:
/media/jeff/Jekyll/Files/openwrt/testing/armvirt-64/build_dir/target-aarch64_generic_musl/linux-armvirt_64/cryptodev-linux-cryptodev-linux-1.10/cryptodev.ko]
Error 1
make[4]: *** [Makefile:1519: modules] Error 2
make[4]: Leaving directory
'/media/jeff/Jekyll/Files/openwrt/testing/armvirt-64/build_dir/target-aarch64_generic_musl/linux-armvirt_64/linux-4.19.62'
make[3]: *** [Makefile:27: build] Error 2
make[3]: Leaving directory
'/media/jeff/Jekyll/Files/openwrt/testing/armvirt-64/build_dir/target-aarch64_generic_musl/linux-armvirt_64/cryptodev-linux-cryptodev-linux-1.10'
make[2]: *** [Makefile:63:
/media/jeff/Jekyll/Files/openwrt/testing/armvirt-64/build_dir/target-aarch64_generic_musl/linux-armvirt_64/cryptodev-linux-cryptodev-linux-1.10/.built]
Error 2
make[2]: Leaving directory
'/media/jeff/Jekyll/Files/openwrt/testing/armvirt-64/feeds/base/package/kernel/cryptodev-linux'
time: package/feeds/base/cryptodev-linux/compile#5.24#1.56#11.69
make[1]: *** [package/Makefile:109:
package/feeds/base/cryptodev-linux/compile] Error 2
make[1]: Leaving directory
'/media/jeff/Jekyll/Files/openwrt/testing/armvirt-64'
make: *** [/media/jeff/Jekyll/Files/openwrt/testing/armvirt-64/include/
toplevel.mk:211: package/python/compile] Error 2

--0000000000000678cf058f121312
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>I need to compile the Py=
thon package(s) somewhat regularly, but I haven&#39;t been able to recently=
 using the armvirt-64 sdk, because of a compile error for cryptodev-linux. =
(I have copied the make output below.)<br></div><div><br></div><div>I belie=
ve this started after a459d237 (this added CONFIG_ARM64_MODULE_PLTS=3Dy, wh=
ich leads make to look for a non-existent linker script file &quot;./arch/a=
rm64/kernel/module.lds&quot;), but I haven&#39;t verified it yet.</div><div=
><br></div><div>I tried doing a fresh checkout of master and building the P=
ython package directly; it worked without an error, but it also didn&#39;t =
need to compile cryptodev-linux, so I&#39;m not sure if any conclusions can=
 be drawn from this.</div><div><br></div><div>Does anyone have any insight =
on this? I&#39;m not really sure where the root issue is, or how to go abou=
t fixing it.</div><div><br></div><div>Thanks,</div><div>Jeff</div><div><br>=
</div><div><br></div><div>Make output:</div><div>make[2]: Entering director=
y &#39;/media/jeff/Jekyll/Files/openwrt/testing/armvirt-64/feeds/base/packa=
ge/kernel/cryptodev-linux&#39;<br>touch /media/jeff/Jekyll/Files/openwrt/te=
sting/armvirt-64/build_dir/target-aarch64_generic_musl/linux-armvirt_64/cry=
ptodev-linux-cryptodev-linux-1.10/.prepared_c86d6c695a6eb4715e8aacaf7644c80=
b_6664517399ebbbc92a37c5bb081b5c53_check<br>. /media/jeff/Jekyll/Files/open=
wrt/testing/armvirt-64/include/shell.sh; gzip -dc /media/jeff/Jekyll/Files/=
openwrt/dl/cryptodev-linux-1.10.tar.gz | tar -C /media/jeff/Jekyll/Files/op=
enwrt/testing/armvirt-64/build_dir/target-aarch64_generic_musl/linux-armvir=
t_64/cryptodev-linux-cryptodev-linux-1.10/.. -xf -<br>[ ! -d ./src/ ] || cp=
 -fpR ./src/. /media/jeff/Jekyll/Files/openwrt/testing/armvirt-64/build_dir=
/target-aarch64_generic_musl/linux-armvirt_64/cryptodev-linux-cryptodev-lin=
ux-1.10<br>touch /media/jeff/Jekyll/Files/openwrt/testing/armvirt-64/build_=
dir/target-aarch64_generic_musl/linux-armvirt_64/cryptodev-linux-cryptodev-=
linux-1.10/.prepared_c86d6c695a6eb4715e8aacaf7644c80b_6664517399ebbbc92a37c=
5bb081b5c53<br>rm -f /media/jeff/Jekyll/Files/openwrt/testing/armvirt-64/bu=
ild_dir/target-aarch64_generic_musl/linux-armvirt_64/cryptodev-linux-crypto=
dev-linux-1.10/.configured_*<br>rm -f /media/jeff/Jekyll/Files/openwrt/test=
ing/armvirt-64/staging_dir/target-aarch64_generic_musl/stamp/.cryptodev-lin=
ux_installed<br>touch /media/jeff/Jekyll/Files/openwrt/testing/armvirt-64/b=
uild_dir/target-aarch64_generic_musl/linux-armvirt_64/cryptodev-linux-crypt=
odev-linux-1.10/.configured_68b329da9893e34099c7d8ad5cb9c940<br>rm -f /medi=
a/jeff/Jekyll/Files/openwrt/testing/armvirt-64/build_dir/target-aarch64_gen=
eric_musl/linux-armvirt_64/cryptodev-linux-cryptodev-linux-1.10/.built<br>t=
ouch /media/jeff/Jekyll/Files/openwrt/testing/armvirt-64/build_dir/target-a=
arch64_generic_musl/linux-armvirt_64/cryptodev-linux-cryptodev-linux-1.10/.=
built_check<br>cat /dev/null &gt; /media/jeff/Jekyll/Files/openwrt/testing/=
armvirt-64/staging_dir/target-aarch64_generic_musl/pkginfo/cryptodev-linux.=
symvers; for subdir in .; do cat /media/jeff/Jekyll/Files/openwrt/testing/a=
rmvirt-64/staging_dir/target-aarch64_generic_musl/pkginfo/*.symvers 2&gt;/d=
ev/null &gt; /media/jeff/Jekyll/Files/openwrt/testing/armvirt-64/build_dir/=
target-aarch64_generic_musl/linux-armvirt_64/cryptodev-linux-cryptodev-linu=
x-1.10/$subdir/Module.symvers; done<br>make -C /media/jeff/Jekyll/Files/ope=
nwrt/testing/armvirt-64/build_dir/target-aarch64_generic_musl/linux-armvirt=
_64/cryptodev-linux-cryptodev-linux-1.10 HOSTCFLAGS=3D&quot;-O2 -I/media/je=
ff/Jekyll/Files/openwrt/testing/armvirt-64/staging_dir/host/include -I/medi=
a/jeff/Jekyll/Files/openwrt/testing/armvirt-64/staging_dir/hostpkg/include =
-I/media/jeff/Jekyll/Files/openwrt/testing/armvirt-64/staging_dir/target-aa=
rch64_generic_musl/host/include -Wall -Wmissing-prototypes -Wstrict-prototy=
pes&quot; CROSS_COMPILE=3D&quot;aarch64-openwrt-linux-musl-&quot; ARCH=3D&q=
uot;arm64&quot; KBUILD_HAVE_NLS=3Dno KBUILD_BUILD_USER=3D&quot;builder&quot=
; KBUILD_BUILD_HOST=3D&quot;buildhost&quot; KBUILD_BUILD_TIMESTAMP=3D&quot;=
Wed Jul 31 14:53:41 2019&quot; KBUILD_BUILD_VERSION=3D&quot;0&quot; HOST_LO=
ADLIBES=3D&quot;-L/media/jeff/Jekyll/Files/openwrt/testing/armvirt-64/stagi=
ng_dir/host/lib&quot; CONFIG_SHELL=3D&quot;bash&quot; V=3D&#39;&#39; =C2=A0=
cmd_syscalls=3D KERNELRELEASE=3D4.19.62 KERNEL_DIR=3D&quot;/media/jeff/Jeky=
ll/Files/openwrt/testing/armvirt-64/build_dir/target-aarch64_generic_musl/l=
inux-armvirt_64/linux-4.19.62&quot;<br>make[3]: Entering directory &#39;/me=
dia/jeff/Jekyll/Files/openwrt/testing/armvirt-64/build_dir/target-aarch64_g=
eneric_musl/linux-armvirt_64/cryptodev-linux-cryptodev-linux-1.10&#39;<br>m=
ake -C /media/jeff/Jekyll/Files/openwrt/testing/armvirt-64/build_dir/target=
-aarch64_generic_musl/linux-armvirt_64/linux-4.19.62 M=3D/media/jeff/Jekyll=
/Files/openwrt/testing/armvirt-64/build_dir/target-aarch64_generic_musl/lin=
ux-armvirt_64/cryptodev-linux-cryptodev-linux-1.10 ARCH=3Darm64 CROSS_COMPI=
LE=3Daarch64-openwrt-linux-musl- modules<br>make[4]: Entering directory &#3=
9;/media/jeff/Jekyll/Files/openwrt/testing/armvirt-64/build_dir/target-aarc=
h64_generic_musl/linux-armvirt_64/linux-4.19.62&#39;<br>=C2=A0 CC [M] =C2=
=A0/media/jeff/Jekyll/Files/openwrt/testing/armvirt-64/build_dir/target-aar=
ch64_generic_musl/linux-armvirt_64/cryptodev-linux-cryptodev-linux-1.10/ioc=
tl.o<br>=C2=A0 CC [M] =C2=A0/media/jeff/Jekyll/Files/openwrt/testing/armvir=
t-64/build_dir/target-aarch64_generic_musl/linux-armvirt_64/cryptodev-linux=
-cryptodev-linux-1.10/main.o<br>=C2=A0 CC [M] =C2=A0/media/jeff/Jekyll/File=
s/openwrt/testing/armvirt-64/build_dir/target-aarch64_generic_musl/linux-ar=
mvirt_64/cryptodev-linux-cryptodev-linux-1.10/cryptlib.o<br>=C2=A0 CC [M] =
=C2=A0/media/jeff/Jekyll/Files/openwrt/testing/armvirt-64/build_dir/target-=
aarch64_generic_musl/linux-armvirt_64/cryptodev-linux-cryptodev-linux-1.10/=
authenc.o<br>=C2=A0 CC [M] =C2=A0/media/jeff/Jekyll/Files/openwrt/testing/a=
rmvirt-64/build_dir/target-aarch64_generic_musl/linux-armvirt_64/cryptodev-=
linux-cryptodev-linux-1.10/zc.o<br>=C2=A0 CC [M] =C2=A0/media/jeff/Jekyll/F=
iles/openwrt/testing/armvirt-64/build_dir/target-aarch64_generic_musl/linux=
-armvirt_64/cryptodev-linux-cryptodev-linux-1.10/util.o<br>=C2=A0 LD [M] =
=C2=A0/media/jeff/Jekyll/Files/openwrt/testing/armvirt-64/build_dir/target-=
aarch64_generic_musl/linux-armvirt_64/cryptodev-linux-cryptodev-linux-1.10/=
cryptodev.o<br>=C2=A0 Building modules, stage 2.<br>=C2=A0 MODPOST 1 module=
s<br>=C2=A0 CC =C2=A0 =C2=A0 =C2=A0/media/jeff/Jekyll/Files/openwrt/testing=
/armvirt-64/build_dir/target-aarch64_generic_musl/linux-armvirt_64/cryptode=
v-linux-cryptodev-linux-1.10/cryptodev.mod.o<br>=C2=A0 LD [M] =C2=A0/media/=
jeff/Jekyll/Files/openwrt/testing/armvirt-64/build_dir/target-aarch64_gener=
ic_musl/linux-armvirt_64/cryptodev-linux-cryptodev-linux-1.10/cryptodev.ko<=
br>/media/jeff/Jekyll/Files/openwrt/testing/armvirt-64/staging_dir/toolchai=
n-aarch64_generic_gcc-7.4.0_musl/bin/aarch64-openwrt-linux-musl-ld: cannot =
open linker script file ./arch/arm64/kernel/module.lds: No such file or dir=
ectory<br>make[5]: *** [scripts/Makefile.modpost:129: /media/jeff/Jekyll/Fi=
les/openwrt/testing/armvirt-64/build_dir/target-aarch64_generic_musl/linux-=
armvirt_64/cryptodev-linux-cryptodev-linux-1.10/cryptodev.ko] Error 1<br>ma=
ke[4]: *** [Makefile:1519: modules] Error 2<br>make[4]: Leaving directory &=
#39;/media/jeff/Jekyll/Files/openwrt/testing/armvirt-64/build_dir/target-aa=
rch64_generic_musl/linux-armvirt_64/linux-4.19.62&#39;<br>make[3]: *** [Mak=
efile:27: build] Error 2<br>make[3]: Leaving directory &#39;/media/jeff/Jek=
yll/Files/openwrt/testing/armvirt-64/build_dir/target-aarch64_generic_musl/=
linux-armvirt_64/cryptodev-linux-cryptodev-linux-1.10&#39;<br>make[2]: *** =
[Makefile:63: /media/jeff/Jekyll/Files/openwrt/testing/armvirt-64/build_dir=
/target-aarch64_generic_musl/linux-armvirt_64/cryptodev-linux-cryptodev-lin=
ux-1.10/.built] Error 2<br>make[2]: Leaving directory &#39;/media/jeff/Jeky=
ll/Files/openwrt/testing/armvirt-64/feeds/base/package/kernel/cryptodev-lin=
ux&#39;<br>time: package/feeds/base/cryptodev-linux/compile#5.24#1.56#11.69=
<br>make[1]: *** [package/Makefile:109: package/feeds/base/cryptodev-linux/=
compile] Error 2<br>make[1]: Leaving directory &#39;/media/jeff/Jekyll/File=
s/openwrt/testing/armvirt-64&#39;<br>make: *** [/media/jeff/Jekyll/Files/op=
enwrt/testing/armvirt-64/include/<a href=3D"http://toplevel.mk:211">topleve=
l.mk:211</a>: package/python/compile] Error 2</div><div><br></div></div>

--0000000000000678cf058f121312--


--===============0781388921722341571==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0781388921722341571==--

