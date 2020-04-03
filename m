Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C212719CFBA
	for <lists+openwrt-devel@lfdr.de>; Fri,  3 Apr 2020 07:19:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:MIME-Version:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=eqe6K6xhxG31wsmwgRgmFwZICyqgbxMcYUJx4vvcNso=; b=fdg
	mbd1kycyERD8ptIHqfjCPVKbRRRAJJrJHVbryhkOfK/9C1AiQqK/zJrATYq3wNjm+ITlob3edsx5V
	8lqMRMJx3qJij6YyV7v72beQNANP7oLOKNt9fLb8HRewpDtYbElbDfoVGo0V29kIFcAkSjd+XnPos
	WS5E40St0+xIlVN9pOnW/dRI4kmOGlp+k2eCKa2yzmJ5jU9l3WZgoe0M3S+IKEF6JwNeR5A5ke94L
	ox+rrcvozvhSqbM9T6NMNvXPf1W+BIyBZhJljLAMGZ+XqXMb2NXZf8dqY4DS7A90sswrYV6k+J3e5
	bSUr84JA3V8SXpnc+XJVbV8BV+n2+BA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKEjG-0006hB-FF; Fri, 03 Apr 2020 05:18:54 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKEj4-0006gU-W6
 for openwrt-devel@lists.openwrt.org; Fri, 03 Apr 2020 05:18:45 +0000
Received: by mail-ed1-x52f.google.com with SMTP id i16so7777013edy.11
 for <openwrt-devel@lists.openwrt.org>; Thu, 02 Apr 2020 22:18:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=RYXHLICuNcKd9XTioDyhqw6R/tkzvu53NGEnf3lOQwU=;
 b=Te6k5Q5A7D47C4r5J3PF1zOi7r+L3otJGPHELMunyA2QWrsC10qlmqxCoq52ckq+aN
 CrjU/4cRI+p5cfATDLDVXabAMFi6ArG4+Odm0qvg3QKZ68bq6wUreKqRttlgSeqHzTgv
 afWdWg9q8Ydd8BNaEBkGIEKeusG7UWreULBNcpteWzv7j/QDk0JCiJiWxoK0Lq7esBJ7
 011wb2Vh95whLe/37OCFW2zQh807WGE3J0i5TSaIRb8ju4orSAzS6YDwqGHGbw7uJDpS
 dnb/8nTBesyj5PAX2jbf8aDOrDBjSCFsQFkAnRh5hT8n23vIF1Do7LfTCgZOMrfogC76
 Ihng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=RYXHLICuNcKd9XTioDyhqw6R/tkzvu53NGEnf3lOQwU=;
 b=Rjhf1locFc33EfrHEn0YwWV7p1fbiIsBQSUtSQ4VUz2E00CuYCkhOuOwpSFa+7ocDa
 5ddQmFh3Xl+wUh5b5R+eeCUUQmvgw1EU+5KnjHIT2IxmoqeU4n4D3M+lmuvOT5YIKmsd
 3zCSyBmPzoYhKCxRhErNkL6Qn8R1/pF3x/EarjSNdFY7zEbStIJWFVsyWl5wVAaMTlji
 5+LdI6q4IgOnmGb3GFRwNEbe3n4iSnourxmllJtXqqloDsbSmWUebsZfQ6f1gCXYXdJ9
 WP3jskQ1wZ8lVvt5jOd5UQZfI5vldnY0MoKHoOpxv4vyCpvV1HdaPkPacjBWAXBOe7c2
 yE/Q==
X-Gm-Message-State: AGi0PuaWYzRJio1oGnfK42vicd7XcV48jhW4xUGShQ6+o0TKIHVQCzpr
 Ju/0+xFdLmqwSF9eba+xYE7bn6Gcb3tcvppZZIfuZRDKMZo=
X-Google-Smtp-Source: APiQypIGFZfyKbi2Zho6wEc2YiqIgSIRdgE0Z8HbqclIIwiLo1lVkuy9jOBzbQMi5mkeGDx4DbRb/ZQ9Z9YQ/AMf1OY=
X-Received: by 2002:a17:906:960d:: with SMTP id
 s13mr6691201ejx.263.1585891119541; 
 Thu, 02 Apr 2020 22:18:39 -0700 (PDT)
MIME-Version: 1.0
From: Jeonghum Joh <oosaprogrammer@gmail.com>
Date: Fri, 3 Apr 2020 14:18:27 +0900
Message-ID: <CALYKT1hSR4dOtMCFmqXkvJnZt4rtZEhMkd_ktHqFvJjC0ZTdxw@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_221843_036994_22924583 
X-CRM114-Status: GOOD (  10.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:52f listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [oosaprogrammer[at]gmail.com]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] Want to know : How to compile packages
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
Content-Type: multipart/mixed; boundary="===============2679344087321283945=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============2679344087321283945==
Content-Type: multipart/alternative; boundary="000000000000d5326605a25c0c8a"

--000000000000d5326605a25c0c8a
Content-Type: text/plain; charset="UTF-8"

Hello,

I am trying to add lua-serial[1] into openwrt I have.
There is openwrt Makefile[2] and I modified it like this below:

--------------------------- [[below]]
-----------------------------------------------------------
#
# Copyright (C) 2015 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=lua-serial
PKG_VERSION:=1.0.0
PKG_RELEASE:=1
PKG_MAINTAINER:=Unwired Devices <info@unwds.com>
PKG_LICENSE:=MIT

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
#PKG_SOURCE_URL:=https://github.com/unwireddevices/lua-serial
PKG_SOURCE_PROTO:=git
PKG_SOURCE_VERSION:=bd2e35d56ffe79db307341a70a51e3fbc1e698e9
PKG_SOURCE_SUBDIR:=$(PKG_NAME)-$(PKG_VERSION)

PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/lua-serial
  SUBMENU:=Lua
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Lua Serial UART Library
  URL:=https://github.com/unwireddevices/lua-serial
  DEPENDS:=+lua
endef

define Package/lua-serial/description
  Serial port communication functions for Lua
endef

CONFIGURE_ARGS += \
        --with-lua-inc=$(STAGING_DIR)/usr/include \
        --with-lua-lib=$(STAGING_DIR)/usr/lib

define Build/Configure
        $(call Build/Configure/Default,--with-linux-headers=$(LINUX_DIR))
endef

define Build/Install
endef

define Package/lua-serial/install
        $(INSTALL_DIR) $(1)/usr/lib/lua
        $(INSTALL_BIN) $(PKG_BUILD_DIR)/build/lin32/_ul_serial.so
$(1)/usr/lib/lua/
        $(INSTALL_DATA) $(PKG_BUILD_DIR)/src/ul_serial.lua $(1)/usr/lib/lua/
endef

$(eval $(call BuildPackage,lua-serial))
------------------------------------------------------------------------------------------


After I have compiled and flashed the firmware, I changed a bit of a lua
source file below:
./package/lua-serial/src/ul_serial.lua

And I tried to clean and compile again and flashed it and checked to see if
my change is applied well.
But my change is NOT applied at all.
I did :
- added some change in ./package/lua-serial/src/ul_serial.lua
- make package/lua-serial/clean
- make
- flashed new firmware
- check to see if my change is applied into  /usr/lib/lua/ul_serial.lua
But my change is not applied at all!

When I tried to "find -name ul_serial.lua" under the top openwrt directory,
I get output like:

./package/lua-serial/src/ul_serial.lua
./staging_dir/target/root-mediatek/usr/lib/lua/ul_serial.lua
./build_dir/target/root.orig-mediatek/usr/lib/lua/ul_serial.lua
./build_dir/target/root-mediatek/usr/lib/lua/ul_serial.lua
./build_dir/target/lua-serial-1.0.0/ipkg-aarch64_cortex-a53_neon-vfpv4/lua-serial/usr/lib/lua/ul_serial.lua
./build_dir/target/lua-serial-1.0.0/ul_serial.lua
./build_dir/target/lua-serial-1.0.0/src/ul_serial.lua

And after I clean the package lua-serial with :
make -j25 V=s package/lua-serial/clean

I tried to " find -name ul_serial.lua" under the top openwrt directory, I
get output like:
./package/lua-serial/src/ul_serial.lua
./staging_dir/target/root-mediatek/usr/lib/lua/ul_serial.lua
./build_dir/target/root.orig-mediatek/usr/lib/lua/ul_serial.lua
./build_dir/target/root-mediatek/usr/lib/lua/ul_serial.lua

./package/lua-serial/src/ul_serial.lua is original source code of my
working package.
What are those below and why don't they get removed?

./staging_dir/target/root-mediatek/usr/lib/lua/ul_serial.lua
./build_dir/target/root.orig-mediatek/usr/lib/lua/ul_serial.lua
./build_dir/target/root-mediatek/usr/lib/lua/ul_serial.lua

How am I supposed to really clean previous built package?

And I'd like to understand build system architecture and behavior of
openwrt.
Is there a good reference I can study?

Thank you very much in advance.
Jeonghum

[1] https://github.com/unwireddevices/lua-serial
[2]
https://github.com/unwireddevices/lua-serial/blob/master/openwrt/Makefile

--000000000000d5326605a25c0c8a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>I am trying to add lua-serial[1]=
 into openwrt I have.</div><div>There is openwrt Makefile[2] and I modified=
 it like this below:<br></div><div><br></div><div>-------------------------=
-- [[below]] -----------------------------------------------------------</d=
iv><div>#<br># Copyright (C) 2015 OpenWrt.org<br>#<br># This is free softwa=
re, licensed under the GNU General Public License v2.<br># See /LICENSE for=
 more information.<br>#<br><br>include $(TOPDIR)/<a href=3D"http://rules.mk=
">rules.mk</a><br><br>PKG_NAME:=3Dlua-serial<br>PKG_VERSION:=3D1.0.0<br>PKG=
_RELEASE:=3D1<br>PKG_MAINTAINER:=3DUnwired Devices &lt;<a href=3D"mailto:in=
fo@unwds.com">info@unwds.com</a>&gt;<br>PKG_LICENSE:=3DMIT<br><br>PKG_SOURC=
E:=3D$(PKG_NAME)-$(PKG_VERSION).tar.gz<br>#PKG_SOURCE_URL:=3D<a href=3D"htt=
ps://github.com/unwireddevices/lua-serial">https://github.com/unwireddevice=
s/lua-serial</a><br>PKG_SOURCE_PROTO:=3Dgit<br>PKG_SOURCE_VERSION:=3Dbd2e35=
d56ffe79db307341a70a51e3fbc1e698e9<br>PKG_SOURCE_SUBDIR:=3D$(PKG_NAME)-$(PK=
G_VERSION)<br><br>PKG_INSTALL:=3D1<br><br>include $(INCLUDE_DIR)/<a href=3D=
"http://package.mk">package.mk</a><br><br>define Package/lua-serial<br>=C2=
=A0 SUBMENU:=3DLua<br>=C2=A0 SECTION:=3Dlang<br>=C2=A0 CATEGORY:=3DLanguage=
s<br>=C2=A0 TITLE:=3DLua Serial UART Library<br>=C2=A0 URL:=3D<a href=3D"ht=
tps://github.com/unwireddevices/lua-serial">https://github.com/unwireddevic=
es/lua-serial</a><br>=C2=A0 DEPENDS:=3D+lua<br>endef<br><br>define Package/=
lua-serial/description<br>=C2=A0 Serial port communication functions for Lu=
a<br>endef<br><br>CONFIGURE_ARGS +=3D \<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 --wi=
th-lua-inc=3D$(STAGING_DIR)/usr/include \<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 --=
with-lua-lib=3D$(STAGING_DIR)/usr/lib<br><br>define Build/Configure<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 $(call Build/Configure/Default,--with-linux-header=
s=3D$(LINUX_DIR))<br>endef<br><br>define Build/Install<br>endef<br><br>defi=
ne Package/lua-serial/install<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 $(INSTALL_DIR)=
 $(1)/usr/lib/lua<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 $(INSTALL_BIN) $(PKG_BUILD=
_DIR)/build/lin32/_ul_serial.so $(1)/usr/lib/lua/<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 $(INSTALL_DATA) $(PKG_BUILD_DIR)/src/ul_serial.lua $(1)/usr/lib/lua/=
<br>endef<br><br>$(eval $(call BuildPackage,lua-serial))<br></div><div>----=
---------------------------------------------------------------------------=
-----------=C2=A0=C2=A0<br></div><div><br></div><div><br></div><div>After I=
 have compiled and flashed the firmware, I changed a bit of a lua source fi=
le below:</div><div>./package/lua-serial/src/ul_serial.lua<br></div><div><b=
r></div><div>And I tried to clean and compile again and flashed it and chec=
ked to see if my change is applied well.</div><div>But my change is NOT app=
lied at all.</div><div>I did :</div><div><div>- added some change in ./pack=
age/lua-serial/src/ul_serial.lua<br></div><div></div></div><div>- make pack=
age/lua-serial/clean<br></div><div>- make<br></div><div>- flashed new firmw=
are</div><div>- check to see if my change is applied into=C2=A0 /usr/lib/lu=
a/ul_serial.lua

</div><div>But my change is not applied at all!<br></div><div><br></div><di=
v>When I tried to &quot;find -name ul_serial.lua&quot; under the top openwr=
t directory, I get output like:</div><div><br></div><div>./package/lua-seri=
al/src/ul_serial.lua<br>./staging_dir/target/root-mediatek/usr/lib/lua/ul_s=
erial.lua<br>./build_dir/target/root.orig-mediatek/usr/lib/lua/ul_serial.lu=
a<br>./build_dir/target/root-mediatek/usr/lib/lua/ul_serial.lua<br>./build_=
dir/target/lua-serial-1.0.0/ipkg-aarch64_cortex-a53_neon-vfpv4/lua-serial/u=
sr/lib/lua/ul_serial.lua<br>./build_dir/target/lua-serial-1.0.0/ul_serial.l=
ua<br>./build_dir/target/lua-serial-1.0.0/src/ul_serial.lua<br></div><div><=
br></div><div>And after I clean the package lua-serial with :</div><div>mak=
e -j25 V=3Ds package/lua-serial/clean<br></div><div><br></div><div>I tried =
to &quot;

find -name ul_serial.lua&quot; under the top openwrt directory, I get outpu=
t like:

</div><div>./package/lua-serial/src/ul_serial.lua</div><div>./staging_dir/t=
arget/root-mediatek/usr/lib/lua/ul_serial.lua<br>./build_dir/target/root.or=
ig-mediatek/usr/lib/lua/ul_serial.lua<br>./build_dir/target/root-mediatek/u=
sr/lib/lua/ul_serial.lua<br></div><div><br></div><div><div>./package/lua-se=
rial/src/ul_serial.lua is original source code of my working package.</div>=
<div>What are those below and why don&#39;t they get removed?</div><div><di=
v><br></div><div>./staging_dir/target/root-mediatek/usr/lib/lua/ul_serial.l=
ua<br>./build_dir/target/root.orig-mediatek/usr/lib/lua/ul_serial.lua<br>./=
build_dir/target/root-mediatek/usr/lib/lua/ul_serial.lua<br></div><div></di=
v></div><div></div></div><div><br></div><div>How am I supposed to really cl=
ean previous built package?</div><div><br></div><div>And I&#39;d like to un=
derstand build system architecture and behavior of openwrt.</div><div>Is th=
ere a good reference I can study?</div><div><br></div><div>Thank you very m=
uch in advance.</div><div>Jeonghum</div><div><br></div><div>[1]=C2=A0<a hre=
f=3D"https://github.com/unwireddevices/lua-serial">https://github.com/unwir=
eddevices/lua-serial</a></div><div>[2]=C2=A0<a href=3D"https://github.com/u=
nwireddevices/lua-serial/blob/master/openwrt/Makefile">https://github.com/u=
nwireddevices/lua-serial/blob/master/openwrt/Makefile</a></div><div><br></d=
iv></div>

--000000000000d5326605a25c0c8a--


--===============2679344087321283945==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2679344087321283945==--

