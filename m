Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DECF61ACB66
	for <lists+openwrt-devel@lfdr.de>; Thu, 16 Apr 2020 17:48:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VnWpQpbJXz1eDRdwmJaWiprxUxBbz86e0Vtusv1wWpI=; b=KJRRgWmqKNgSyd
	s9uWIG7Tj2xe6nR82FyLcgT3Sj4U2i6AApj3pXFGChB+73FhckeGVG0S58nzauBuu1/Qc9Wg2hFH4
	H1/hwD2/nMFKW3ELGPfjSWDJdWwf6je7OQCerPaRO/5TfxHhfqQLQkrdItIAJoggef5K/DZzIp7DU
	x9tXpzqhO+OvzRFG0M8dPA9WkXFeK61qHTImmLABIRNM0kICmEhffjrGVPHIQAKhJGVvobDqnqyPA
	rE06jZMc8w5zVzFQp/CqLKlP3ti7l1VZ+TEeS6mRDgAJzXzwCaFHcXMgDPbZu09AUt3y/h/6GTtDE
	RL4rWzzXKeG+pfVZBAog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP6km-0000PP-ID; Thu, 16 Apr 2020 15:48:36 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP6kg-0000P6-5Q
 for openwrt-devel@lists.openwrt.org; Thu, 16 Apr 2020 15:48:31 +0000
Received: by mail-lf1-x141.google.com with SMTP id l11so5976688lfc.5
 for <openwrt-devel@lists.openwrt.org>; Thu, 16 Apr 2020 08:48:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6yGNTmuiBGt9AiuLlVECxtMAsdP0bhU9th8Y4PYy1b4=;
 b=I1maPxQqsw2BrkksA/C4l4Tq0GbHTR9GF+ih32ucs4V2FL0mr4ZAxQvOJpk3wHKSpz
 Yc8e+pniXQkblzaIf2qnXr9lW/iDDZ5vHABi6SJ20ZmOvB4TccW/2uiiYjvTA4QsdgkI
 jnXg4zmtNgk6D4NeptrmHlUb9ltDm2PGF57eGy+IIM9/3jdRnvET0oZ8SexgD8fPok9a
 DVuXH0fpUjsQv1cUJNJ5wiaBZwEljrv6YZZFc5+P6pJmnIY7fVU3aI6InXdso3jmGcEs
 wue/3XpHkp5WfV1Fe9BJdTUXWGRybP0uJoaxQEUi8JmTuKfd333czuCZwSrln6CgXVqF
 gwTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6yGNTmuiBGt9AiuLlVECxtMAsdP0bhU9th8Y4PYy1b4=;
 b=NWF792uI7NnWDYieBzIdOpBgzXfgi6t6NfZvEpXM/sMvt0IdbgEST6Snv0U/69r8Ol
 LX2xxwaana8FWZ2TK7LGDn0ayf5elto/jfBsNX0UTKqhMz4gVyo9L+Wd58fqkAIaQExy
 e5I1H5h79nUjBIPiDJggWLKoZKj8yKgiJQIDJRuRhQ6I7RGCMeFFYo0M0BACaW8Cup3Z
 XdyWu4Y27fCAh68KA/O0uBcARhCr14yh8cF1azhZJf8cVQBrNknrjUaxiMDRNExrk6rk
 EkhtU9L/4x3Y2cSVr+xIEC/PgQ/Qy3OnvijhyOj1yQF91/FvlIJLsbnGZXVRGK9pL0TV
 I9Qw==
X-Gm-Message-State: AGi0Pua8eB4OQxPsjpj6dhqsTHGGNU+5DwUQAEF1tHmMc1CAql7QBely
 aGZrwyRwf9Zg/UJk/iDc0M7yjYRe
X-Google-Smtp-Source: APiQypLYOHr5t8SzB+VVUxenB59b/wG42z2lmaN12XjqMwFgQlBswdJs6Z8yzhF/pLDuuz1NFDrWrQ==
X-Received: by 2002:a05:6512:54c:: with SMTP id
 h12mr6320313lfl.120.1587052107487; 
 Thu, 16 Apr 2020 08:48:27 -0700 (PDT)
Received: from localhost.localdomain (209.89-10-150.nextgentel.com.
 [89.10.150.209])
 by smtp.gmail.com with ESMTPSA id w27sm18580859lfn.45.2020.04.16.08.48.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Apr 2020 08:48:26 -0700 (PDT)
From: Magnus Kroken <mkroken@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 16 Apr 2020 17:47:47 +0200
Message-Id: <20200416154747.22657-1-mkroken@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_084830_228752_89424B90 
X-CRM114-Status: UNSURE (   8.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mkroken[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] mbedtls: update to 2.16.6
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
Cc: Magnus Kroken <mkroken@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Security fixes for:
* CVE-2020-10932
* a potentially remotely exploitable buffer overread in a DTLS client
* bug in DTLS handling of new associations with the same parameters

Full release announement:
https://tls.mbed.org/tech-updates/releases/mbedtls-2.16.6-and-2.7.15-released

Signed-off-by: Magnus Kroken <mkroken@gmail.com>
---
Compile- and run-tested on arm/mvebu.

Tests run:
openvpn-mbedtls (as server)
uhttpd and uclient-fetch using libustream-mbedtls

 package/libs/mbedtls/Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/package/libs/mbedtls/Makefile b/package/libs/mbedtls/Makefile
index 7ceb0dc4af..04f80f4715 100644
--- a/package/libs/mbedtls/Makefile
+++ b/package/libs/mbedtls/Makefile
@@ -8,13 +8,13 @@
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=mbedtls
-PKG_VERSION:=2.16.5
+PKG_VERSION:=2.16.6
 PKG_RELEASE:=1
 PKG_USE_MIPS16:=0
 
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION)-gpl.tgz
 PKG_SOURCE_URL:=https://tls.mbed.org/download/
-PKG_HASH:=6ebdea6565c714f1315b9af6a802afb4b4e89976f7d5d2b15aa8028eb52e7d09
+PKG_HASH:=80a484df42f32dbe95665cd4b18ce0dd14b6c67dfd561d36d1475802e41eb3ed
 
 PKG_BUILD_PARALLEL:=1
 PKG_LICENSE:=GPL-2.0-or-later
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
