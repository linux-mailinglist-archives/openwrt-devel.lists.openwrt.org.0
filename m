Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67B5D1AE8BE
	for <lists+openwrt-devel@lfdr.de>; Sat, 18 Apr 2020 01:57:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oxf239axW6PemDttODqrWeEsDKFnOUNVVk8m6OQ8heQ=; b=KbUvx8dO6ojk9i
	A9pJaHztVpIiL1YlawxqSsLNsNuGLkwF7hzEUvRH0m0dvB9ecOEGO2sU+frTrUzXAjUyJewh0xJi3
	svPeMaAkyG+crXpu/xzFlRFzedD1EnlfLHa5iunWvmcHaGpBWErHfwq80ZbKES2fNSRNvgEHiiOOT
	5OcpnB4+5/tTKijhpl0FAw0nVQJew6nYrlqSZEevCswO+L7nJkBII7N064Bv6Jh5Tff2Hm8zNcfS9
	nZkUKYGJJG9cN1jV6Tfymh207iXhat8ryaP24ZfQjkYD2SVJlw+uYnFXc8QJvlbFbrZ9lFECBvdBQ
	cuDahgylblyBIqZJcTzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jParY-0006ja-7C; Fri, 17 Apr 2020 23:57:36 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jParS-0006j1-Ee
 for openwrt-devel@lists.openwrt.org; Fri, 17 Apr 2020 23:57:31 +0000
Received: by mail-qk1-x741.google.com with SMTP id 20so4363461qkl.10
 for <openwrt-devel@lists.openwrt.org>; Fri, 17 Apr 2020 16:57:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GcD5I/JGN+f+rBcYS0nt0dPYkoakXFxBcQgDyptAwng=;
 b=KQs9JDXtu8lZOrSJ2uVP5XUIHS9vARLZPsrPrOQBdRtDQGOrQn13CQAngtlPtXGbJ8
 48xDqPOJe5d4XqGYk8J3uHhfk45MUYxxY21Q3ocXp8YhIPkbQWt6PejW4/Lif0f796Wp
 O1JNFmo6Vy38WMH1UqkUZwkerU8ZwnRFP//QeZZdx11SLK1fn7caONC8AyXoWlbE56hE
 CKd+xLW6XFfMnK701pTkLuCE/p89mRlmUYg33Ozj8vmWD4lRapzUgE9wuPjDsTkyOmZP
 oEya8p7n9eNZq1RFbOSbzZaiphv9Zm/tor8oFQY/z9TEr/OPUBqVV1fbR5U0Jv+ek5AL
 8TFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GcD5I/JGN+f+rBcYS0nt0dPYkoakXFxBcQgDyptAwng=;
 b=qUJ2UguYjzlREsuB3abhY+Xjix44ifIM8xO7lEu0rI3IrHWxJyc8u8K2KMFlirN2BH
 VDLzNoGMPW5uFSACOqPf89NwpWYgbdzru5YPKuCJKEAAj/iXuwz91GuBSftwWUtoP5Sy
 8tBAdZvw2y4UI/R+AYOp2ZYEZNXdCAftu7Nk6aI7cdgv01o+R4fEoaDYA0rtqLISXbO9
 AOEGh9I7VmGi6EdUObIVVCSAyhrg0IJG5Z/BfjuQb6opDrJLkAuO4TNlINCVbLpR1Cp5
 Z0TgMZ+RqmuQs9WLor0mEQx0g856jTw6pxgg0vaByHCkCjQt5Ogy0OaVNwTAgf3FmnH2
 bYTw==
X-Gm-Message-State: AGi0PubybLD6CHjecO4cyydKigJiuYs39iN134BXcOW+WLoHBQ1z72V3
 SbNqLwIHb45qiu7hf8wLRX7vmsJVTmE=
X-Google-Smtp-Source: APiQypK2fnBOORTpKe7SpsV54LcfH2QH62+ZSyrj1WHlNrJ7vuPLDmMHU6tch6ncswWzRRnK49JEmA==
X-Received: by 2002:a37:65c3:: with SMTP id z186mr5772700qkb.484.1587167848952; 
 Fri, 17 Apr 2020 16:57:28 -0700 (PDT)
Received: from gateway.troianet.com.br (ipv6.troianet.com.br.
 [2804:688:21:4::2])
 by smtp.gmail.com with ESMTPSA id x66sm18233914qka.121.2020.04.17.16.57.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Apr 2020 16:57:28 -0700 (PDT)
From: Eneas U de Queiroz <cotequeiroz@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 17 Apr 2020 20:57:06 -0300
Message-Id: <20200417235706.16699-1-cotequeiroz@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_165730_516312_F316B65C 
X-CRM114-Status: UNSURE (   3.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [cotequeiroz[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] build: show make output in scripts/config
 when V=s
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
Cc: Eneas U de Queiroz <cotequeiroz@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This should make debugging build errors in scripts/config a bit easier.

Signed-off-by: Eneas U de Queiroz <cotequeiroz@gmail.com>

diff --git a/include/toplevel.mk b/include/toplevel.mk
index 2965f75c7c..ad8e5b8f20 100644
--- a/include/toplevel.mk
+++ b/include/toplevel.mk
@@ -104,7 +104,8 @@ scripts/config/%onf: export PATH:=$(dir $(DISTRO_PKG_CONFIG)):$(PATH)
 endif
 scripts/config/%onf: CFLAGS+= -O2
 scripts/config/%onf:
-	@$(_SINGLE)$(SUBMAKE) -s -C scripts/config $(notdir $@) CC="$(HOSTCC_WRAPPER)"
+	@$(_SINGLE)$(SUBMAKE) $(if $(findstring s,$(OPENWRT_VERBOSE)),,-s) \
+		-C scripts/config $(notdir $@) CC="$(HOSTCC_WRAPPER)"
 
 $(eval $(call rdep,scripts/config,scripts/config/mconf))
 

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
