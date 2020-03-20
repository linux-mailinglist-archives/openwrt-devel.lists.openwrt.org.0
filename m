Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D814918CEE0
	for <lists+openwrt-devel@lfdr.de>; Fri, 20 Mar 2020 14:33:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6Ux7gS059Vbh+Iq3WyNNXU44cSFJG4dBHMbIPMcPLIA=; b=InsJwg4Cddoxtp
	AtM0dPHGFugQ9NcVR9sTfDnQeEt1E2aFjuMkZR1bEWqqx7oHhv6sT0D/kV34Dm0Yt5H4dl9BBRdKp
	rx7OBbb4g/qTXHppc0+7ZVwKJIQN6y+BmF+2P6HU3IUoDmC+MO25vCMsQBqhn1W+JHOWIC1SOqrAr
	uuKwKR0wEeuGro21eHM2D89Hlr3FUt6Mf/MsZ+q8f1GMiscY+A1jkP0z6piNbH3VwK7JPpkn8gK6R
	I+k5YdBl9FGA+muKHVhEjhhyZNHOWeOLx1zN/19dLFXmGf3KQIenFtR4BYLeCLhPsSJPvNy8kQO5c
	15727AU9o4Ak9DgfBX6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFHlr-0005ld-VJ; Fri, 20 Mar 2020 13:33:07 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFHlh-0005kJ-RV
 for openwrt-devel@lists.openwrt.org; Fri, 20 Mar 2020 13:33:00 +0000
Received: by mail-lf1-x142.google.com with SMTP id m15so4559443lfp.2
 for <openwrt-devel@lists.openwrt.org>; Fri, 20 Mar 2020 06:32:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=telliq.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=ZLd1JSHhxtLcrTTWHUEI0QyWmaBMNKyTTuOJLE7xOrs=;
 b=XomlFxapdquWAq8xqt0SM91LP+ktCsBwl+A5LttCINPPR0Hud5NlMVBSh+NPhUn8C+
 sg7kU+ilgMHchXpGj+qLu4d74HaeVH+Uz9Psk6mAyh8kwUmvUom7fdZsECad1ozq8VAc
 Tj0TQ1E51bHerbZCUROSmmTs5lwo6gtNsyPL0dZ6wgOcrDBGd3B5+H2me85/WjN6ZFkK
 K+Os8lp7NdOxQIUfCl5E9mEPdKV6KwGrzZ+YHN/ijvIHPpTrMpgHYHdazpiTqlt763yP
 d5Iyb7KTY8AvFeas5yn8USADcsis6W6hLuAg9mI3kmBkf8vDoOMK/W/7jlMOXUCsgoPe
 JmMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=ZLd1JSHhxtLcrTTWHUEI0QyWmaBMNKyTTuOJLE7xOrs=;
 b=rb/5ZhDxuJvYpX9NDuBk8+Zm0jxkndSrqQNyCx/9ZQzVeR/uQtyr0g0Q7qz0W6WFip
 UGABNEJ71HjLBlQYvgaoKXY9qIkQAvg0eybFFpQ1D+C2pAB3N23zmymJq7O0f0OhOl45
 Y97thbPw4IBuyYpYDbaPc4QLHORZ8RT+EHj4liQh0XNgWgI/eJYagezaLBdxN5exvrt9
 foFy3llv3Q756n/BDdiYUzy8ChttshRTT/gzVEjW4qt7iU9UeQp48gfaJeXft6XmG9fM
 zLC0WMavBdZa7Qa1L0RkfdwAfbzpOowAB14C8tuwn3wX9L8xVwj5moKlk34J5p1Rocq7
 Ve/A==
X-Gm-Message-State: ANhLgQ1jAzrr1NYqcQ5lLkNhGdUkamH07h9k9qO46hHXsqesOGZx7crX
 6j9lxLe1II11Mfn71B1PWdYnkhGP04g=
X-Google-Smtp-Source: ADFU+vu4c4LuwQ46JZA7d2ZpR7GpEkNTnzyZ5VQEVRW9lvYhcmaeQ+sJfr0bG/lltQX0Iw/j603RFg==
X-Received: by 2002:a19:c1d2:: with SMTP id r201mr5319961lff.13.1584711167879; 
 Fri, 20 Mar 2020 06:32:47 -0700 (PDT)
Received: from emu.mida (static-212-247-121-18.cust.tele2.se. [212.247.121.18])
 by smtp.gmail.com with ESMTPSA id j124sm4039359lfj.27.2020.03.20.06.32.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 20 Mar 2020 06:32:35 -0700 (PDT)
From: Jan Kardell <jan.kardell@telliq.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 20 Mar 2020 14:32:23 +0100
Message-Id: <20200320133223.578-1-jan.kardell@telliq.com>
X-Mailer: git-send-email 2.16.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_063258_127344_947A77B8 
X-CRM114-Status: UNSURE (   6.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] readline: Need host depend on ncurses to
 build.
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
Cc: Daniel Engberg <daniel.engberg.lists@pyret.net>,
 Jo-Philipp Wich <jo@mein.io>, Daniel Golle <daniel@makrotopia.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

We must ensure that host ncurses is build before host readline.

Signed-off-by: Jan Kardell <jan.kardell@telliq.com>
---
 package/libs/readline/Makefile | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/package/libs/readline/Makefile b/package/libs/readline/Makefile
index ddf05986a5..e0204104c5 100644
--- a/package/libs/readline/Makefile
+++ b/package/libs/readline/Makefile
@@ -25,6 +25,8 @@ PKG_INSTALL:=1
 include $(INCLUDE_DIR)/package.mk
 include $(INCLUDE_DIR)/host-build.mk
 
+HOST_BUILD_DEPENDS:=ncurses/host
+
 define Package/libreadline
   SECTION:=libs
   CATEGORY:=Libraries
-- 
2.16.4


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
