Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A84FE19FECD
	for <lists+openwrt-devel@lfdr.de>; Mon,  6 Apr 2020 22:11:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OCfyHNy/czxopsM1xF+ZipFqv2Ki4Ht4lWICTinQHvs=; b=EiWLOtZ6Ly4d0M
	y2pdOS4dhjriYHZwqrXfAMoURAc7ZLO49kxNHKgWxuQ4dvDB+rseWwovmsLmfdgX//AbncFJvgsIj
	9a8xKfr65818d/BE8lhb3lCVSOUfZpQXCsOnJdhf36t7085+78AmHRca4VaW2WYvo8wZcEJWRCsBo
	jlq4XMQ0K6lEOup9VikjI5XN3d/tsfRtgGtwhoeeiQ3/NskeaR60kIqOf2cX6e+U5y7iVbqsu8BfK
	82/O2lw3VCa3Got4TZ3h0QlFFZFak1MYUj0FzGRFUqjAnCxMSkTMGXueRn3Yf7f4aduXpnfq3mlnr
	VezFYoaJ2Y69otqBnedg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLY5Z-0004H2-N6; Mon, 06 Apr 2020 20:11:21 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLY56-0003rM-5R
 for openwrt-devel@lists.openwrt.org; Mon, 06 Apr 2020 20:10:53 +0000
Received: by mail-qt1-x843.google.com with SMTP id n17so889672qtv.4
 for <openwrt-devel@lists.openwrt.org>; Mon, 06 Apr 2020 13:10:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=S6LRGFPC57ZKnloqk20yOqLT3a5UwUkW1EBsMlEbGnc=;
 b=EwnTi3zAc1l1KHuRtq6k98VAkBKD4fSU+037M9bxDKtGIb7mT/jeaG8J5TVj31Kews
 Oi6ae+mlZkjACGqNt3CwXFGivayzpWK7FS6bA3ibmMfhfmnaG8BmV9/g+QZ4Kvm1CId7
 0oBVoJcsIznSZkE7BNs4o6KvgWS631w65FafEmXXhSlnISmMT0H4DnyxWcVIy+GZgQeM
 78v+e60GsJgJ7MHjB8/KFNRyusUNi/w1r9YfbNMWwCj/KClSZ4E2iqO0f+ln3n/3bb1r
 HjvfHpR6YqXbYs00Z3ysQBtnVqm5x+pG4rhggoahgl5N73EUj/q68Dnk5x/5iixBXz60
 MmPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=S6LRGFPC57ZKnloqk20yOqLT3a5UwUkW1EBsMlEbGnc=;
 b=tqqut1odT4vqK9jvbpmb/6W5qzdeaK2etp6yr9Ua3lNU7hUo7LrauOm31AaVZ/eM2E
 d7VDyIl3C3JHLMF3BEIl1e54pbZUjJZrCzTCU3vObJPs+t0YMfrXJlwircYI3nvm/QQi
 WOYY3I+G0m10mOv8JWDa2XhrLyQZzKqrv62xjxZSfq0UNH1Omng2KEYo2auP1o2Q+omi
 htoL+Ny+zTLxor5R4xKxLLtIQtmmyqn7+jfbfyjqqvRZs835yM2+tBprp+oDeRMQDUXF
 suzpKpXzQpTR1+MgALd1lxKhqI+Bf5EKxnV6soPiyONLWD6MMclrA24ZjaZ9z1QZpNMi
 YRFA==
X-Gm-Message-State: AGi0PuYwOPN3Mq/kQyMKAEABJGwotHCon5yubhBuUubyM+32wzpd4oT+
 oLeyx1u6aK4/d5wDlYSZ60mlqx1Rba0=
X-Google-Smtp-Source: APiQypK54ORWogJAmlOs/dhimcW14Df+Kf1uS3xVAXXRypJRkR0ZUTK3M34mHN6A4NaCE17znxub/g==
X-Received: by 2002:ac8:646:: with SMTP id e6mr1294429qth.191.1586203851048;
 Mon, 06 Apr 2020 13:10:51 -0700 (PDT)
Received: from gateway.troianet.com.br (ipv6.troianet.com.br.
 [2804:688:21:4::2])
 by smtp.gmail.com with ESMTPSA id c6sm13446543qkg.88.2020.04.06.13.10.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Apr 2020 13:10:50 -0700 (PDT)
From: Eneas U de Queiroz <cotequeiroz@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  6 Apr 2020 17:10:33 -0300
Message-Id: <20200406201036.19144-4-cotequeiroz@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20200406201036.19144-1-cotequeiroz@gmail.com>
References: <20200406201036.19144-1-cotequeiroz@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_131052_222139_63490A3C 
X-CRM114-Status: GOOD (  10.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [cotequeiroz[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 3/6] build: define RTC_SUPPORT as a bool
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
Cc: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>,
 Eneas U de Queiroz <cotequeiroz@gmail.com>, Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Currently, RTC_SUPPORT is defined as a tristate, with 'depends on m',
which is supposed to only let it be set to 'm' or 'n'.  However,
scripts/target-metadata.pl will 'select' it, or setting it to 'y', which
defeats it's 'depends on m' restriction.  The users of the symbol are
not expecting it to be necessarily 'm' either, so we can safely use it
as bool.

Newer versions of Linux 'conf' will issue a warning when it detects such
unmet dependencies, and will set it to 'n' instead of 'y', as the
current version does.  In all cases, 'm' is never used.

Signed-off-by: Eneas U de Queiroz <cotequeiroz@gmail.com>
---
 target/Config.in | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/target/Config.in b/target/Config.in
index 3ee23ebf7f..9fead5994f 100644
--- a/target/Config.in
+++ b/target/Config.in
@@ -37,8 +37,7 @@ config USB_GADGET_SUPPORT
 	bool
 
 config RTC_SUPPORT
-	tristate
-	depends on m
+	bool
 
 config BIG_ENDIAN
 	bool

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
