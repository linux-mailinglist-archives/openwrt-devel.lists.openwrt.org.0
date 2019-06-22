Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0A9A4F580
	for <lists+openwrt-devel@lfdr.de>; Sat, 22 Jun 2019 13:38:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:From:To:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pRZX6A/YAtJO6qmVAfzXB430QOp394+NHxDKn2jY5O4=; b=EnCqXWbvtSX8DA
	JAXWF0tR4e+ISm+z/J6bZl3P1EYwCstMr52rJXYjoJKb8H0EyRiAeFzMC2dBYweYhhvTGAVbhwmXk
	rtZ5fEb7l0ZCb/YZsGky2MRSXkEI+qlplb/1TXoe+pooX0TAlSah+rB9SWOdPWSO0GDgH42DtIi9J
	GkLf+tRVabnCu+GAsYYY6UeWQbszFn8FN1PUdhT683RZ8xzIjHTOzxRSXY7gkVPw5C9wbwMwCynv7
	3epTnigIvVD9SoD1qEpTJ+GX81usdq5DoGwjfLrdkS3atZwxhTdcdtuusB7oMhUo/nFkRxpLGcr1G
	IPK0pr5Iz/lYqhyzeseA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heeKz-00029d-CO; Sat, 22 Jun 2019 11:37:41 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heeKn-00029J-AX
 for openwrt-devel@lists.openwrt.org; Sat, 22 Jun 2019 11:37:31 +0000
Received: by mail-lf1-x144.google.com with SMTP id b11so6855916lfa.5
 for <openwrt-devel@lists.openwrt.org>; Sat, 22 Jun 2019 04:37:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:from:subject:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=ZZav55uLTC0EAevuiAnyIFwNB5biyVgM762u54Gt9GE=;
 b=C8ml0UidPMuOHPQJVEjwYBa3xgI1WlEcswPRecTLUUJJzBuqTmu9TmziSDtd409k76
 UKJe+HWDI8sTHYJZc7w506Hrl+iahgnbwoGLLMzp5X6oaXho7eV6UR3dIi02Inqk2x9g
 m9ocn+5c9IQWz5GxGe/iJ49cSZxfZ3LusBdoK4WEk2py4VvkZuoOQs7enoGhvKWxTtvS
 NL1tvGa/jINJeGO8MFog8BQhm2ro7MVMLe+ypY/rqdvFE6xmWnyQv8oGsUQ12dFj2/Ve
 aTyKh32UTTJXeb7uRDiNjHYwLSsq2++MLKgC64L4KvcnyLR6ElclPmDcQnGtzEpNQAnW
 I4aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:from:subject:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=ZZav55uLTC0EAevuiAnyIFwNB5biyVgM762u54Gt9GE=;
 b=FsNPJGujbqUVB3Zc0v0KNeo+EYm4GL/qrFELlOFwAOe//w8rgw+ZSY7YMO/nbYMxaf
 MRA/vOl/S39tsVS3lQtCC5FVVpW6t9icJeUXutoR7huwUqN7yHyWFHmf9IOlaIXIiGaN
 Spb0eFSqDsMPxe5UEg0zU0xXKKYfAuvEqUxO43Pmsd8MdrRDRl0htMo+93eu8Zzc/2xK
 cPBJCSpBoSCZg2dd3LocZ0FehOze+WcgHf0PbRREr0mSQLAOJBitmey6Z77DXNEgdcQW
 CtYgh3GaLWOltVV83hc+xHEv+WUXzcr6CX0ds7QW9FVvoU1x1ZeNt2aBnA50uSeg+0lO
 8QHw==
X-Gm-Message-State: APjAAAUCiHmMvJR+2f7j7j7FfTecFCAZi3tKWYAvtTHApoVMZRfN3W7i
 h9Y2G5TsI7emsknehm6wsQw=
X-Google-Smtp-Source: APXvYqxWLRWHnSXyw4ZmFvqlJc0PVlzyAZebmdV0kTqXApmczn3BgopF2ittljdvRji3VHUK3NhVBA==
X-Received: by 2002:ac2:4839:: with SMTP id 25mr32739624lft.79.1561203447174; 
 Sat, 22 Jun 2019 04:37:27 -0700 (PDT)
Received: from elitebook.lan (ip-194-187-74-233.konfederacka.maverick.com.pl.
 [194.187.74.233])
 by smtp.googlemail.com with ESMTPSA id n24sm801508ljc.25.2019.06.22.04.37.26
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Sat, 22 Jun 2019 04:37:26 -0700 (PDT)
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>,
 Jo-Philipp Wich <jo@mein.io>
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Message-ID: <3f540e31-e4ee-1575-fd4d-3b2225aec3b0@gmail.com>
Date: Sat, 22 Jun 2019 13:37:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.5.2
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190622_043729_394580_C82B0D0F 
X-CRM114-Status: UNSURE (   9.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
Subject: [OpenWrt-Devel] Dependency problem after changing package name
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

I renamed locally package "lua" to "luax" and updated dependency of
"lua-examples". A pretty simple change.


After that change I can't build OpenWrt anymore.

# make V=s
(...)
Collected errors:
  * satisfy_dependencies_for: Cannot satisfy the following dependencies for lua-examples:
  *      luax
  * opkg_install_cmd: Cannot install package lua-examples.
make[2]: *** [package/Makefile:68: package/install] Error 255
(...)

# ./scripts/diffconfig.sh | grep -v "CONFIG_TARGET_DEVICE_"
CONFIG_TARGET_bcm53xx=y
CONFIG_TARGET_MULTI_PROFILE=y
CONFIG_TARGET_ALL_PROFILES=y
CONFIG_TARGET_PER_DEVICE_ROOTFS=y
CONFIG_PACKAGE_libiwinfo=y
CONFIG_PACKAGE_liblua=y
CONFIG_PACKAGE_lua-examples=y
CONFIG_PACKAGE_luax=y


I've verified this problem occurs when building from a scratch.

# git clone git@git.openwrt.org:openwrt/openwrt.git openwrt-19.07-tmp
# git checkout c26420b9145759ca99aceef0510ab8b725867c7e
# patch -p1 < ~/lua.diff
# make menuconfig
# make V=s


Any idea what's causing it? Is that some bug in handling dependencies in
OpenWrt? I noticed this while testing
[PATCH 2/2] lua: rename package to lua5.1


diff --git a/package/utils/lua/Makefile b/package/utils/lua/Makefile
index 077a60fbf3..3075c8dc18 100644
--- a/package/utils/lua/Makefile
+++ b/package/utils/lua/Makefile
@@ -54,13 +54,13 @@ $(call Package/lua/Default/description)
   This package contains the Lua shared libraries, needed by other programs.
  endef

-define Package/lua
+define Package/luax
  $(call Package/lua/Default)
    DEPENDS:=+liblua
    TITLE+= (interpreter)
  endef

-define Package/lua/description
+define Package/luax/description
  $(call Package/lua/Default/description)
   This package contains the Lua language interpreter.
  endef
@@ -78,7 +78,7 @@ endef

  define Package/lua-examples
  $(call Package/lua/Default)
-  DEPENDS:=lua
+  DEPENDS:=luax
    TITLE+= (examples)
  endef

@@ -169,8 +169,7 @@ define Package/lua-examples/install
  endef

  $(eval $(call BuildPackage,liblua))
-$(eval $(call BuildPackage,lua))
+$(eval $(call BuildPackage,luax))
  $(eval $(call BuildPackage,luac))
  $(eval $(call BuildPackage,lua-examples))
  $(eval $(call HostBuild))
-

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
