Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4CF71A1681
	for <lists+openwrt-devel@lfdr.de>; Tue,  7 Apr 2020 22:08:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OCfyHNy/czxopsM1xF+ZipFqv2Ki4Ht4lWICTinQHvs=; b=cZYLH10Nz4j62Z
	S6xgacDCMPSeZb5wI4jGx5oYlYJb3TOZ6K7fo43DIQg/t7hwBDeV9ika3Z40IUnghgBXQApFrnoLu
	A+I+fE8EM3E+8KrsSDAiCh58eKJerUM/poNuKYhth7GaJg4lRhbEPwpl6B/tIAM/9DHTweGi+L4Cr
	YwZrKzSPCpIjFJ/8J9lSma8rz0o75rwKS37gesKDJ7c7PTfG9eFYmSXQAYvHtLIIOelofglKcrvdo
	LycmNsDCt2IOklN1nIW1aQ1OGaVgHb4nMCODK/ah7RHfDE06V/IBqe8Wmcu1RUXT8t6FvgwcWJg99
	cmjcuS9zCiWi/N+2m+wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLuWE-0007DE-90; Tue, 07 Apr 2020 20:08:22 +0000
Received: from mail-qv1-xf41.google.com ([2607:f8b0:4864:20::f41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLuVZ-0006Wc-C5
 for openwrt-devel@lists.openwrt.org; Tue, 07 Apr 2020 20:07:42 +0000
Received: by mail-qv1-xf41.google.com with SMTP id g4so2485141qvo.12
 for <openwrt-devel@lists.openwrt.org>; Tue, 07 Apr 2020 13:07:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=S6LRGFPC57ZKnloqk20yOqLT3a5UwUkW1EBsMlEbGnc=;
 b=M75CKkkfbLlAOfrDJU/g4wGPWzyEtFD4dTe+wZ6TTXIp4JBAk8I8ccsRgs5JPd1uAq
 IM/j2MbL09Ji5Sx+ytIwVQon32AemA8Z754+5vxe+6aAB8/7CItDeW35mw0dRV8OuENW
 GpO6ShRlcohVgyvjZcqnnDbdIif+3ow2bsvAFKE93XKO7VpRXryC9HKpgGCUxP03qHiX
 jvkumH91Am6hmOWT6+UEd8V4m4Jt1ptPTzpuah66rfBVEHRcZBm0GV4poCVF/MYU12vX
 v+ZImlqV3AHOFS22WsGAPmbnmg/60c/QoqMo52eO63DwpN/QGBDcX7jS32ToadjPW/K5
 1+Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=S6LRGFPC57ZKnloqk20yOqLT3a5UwUkW1EBsMlEbGnc=;
 b=Avx/2mEul40YBe4lYoaVMzcolyBjHQ1+5cODq74lL1h0y2dq+2hkgtC2Y3xFivQrBH
 kNR3yAI2Tsw2pbspkmRruulxCAkmNxzvFaV4H6qA9QG7RylIpncOTBku63ApJQ8yZboN
 qC5QM29PzG0JQvH0XnUwc+TV3AFoTT/5i34yI5Lq0DM6sB4oOWTxDWMontizOxDU4j0Y
 uVRGgiz7Hgln6Ukc/NnrwJF84MTVGYxkn6litDXnOK7YPjnlHBKfmBBTKCDlVdEVB+cd
 YlW3uM/NaYPCl9FA+rJ9m96nbJDh6TOXt+l+5se/qnAIrxBmh95Rglm8XXtZuPPag0PE
 mcgw==
X-Gm-Message-State: AGi0PuYeEkbFai7npYy9dU5hSySnZ5wrN7Oa6+4FbU+PK7fGWEIbo2pl
 XOMvQQYvJm44zpY81KbpTQrBUJVjl0U=
X-Google-Smtp-Source: APiQypIvTJpiOc1hCCpVAczYZ/MX6fv7LajZVnlxYnevhxNSlFeMJ037z9+Z2IdaY57VflxJlEXG5g==
X-Received: by 2002:a05:6214:1923:: with SMTP id
 es3mr4076310qvb.157.1586290060028; 
 Tue, 07 Apr 2020 13:07:40 -0700 (PDT)
Received: from gateway.troianet.com.br (ipv6.troianet.com.br.
 [2804:688:21:4::2])
 by smtp.gmail.com with ESMTPSA id e10sm4913365qtj.76.2020.04.07.13.07.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Apr 2020 13:07:39 -0700 (PDT)
From: Eneas U de Queiroz <cotequeiroz@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue,  7 Apr 2020 17:07:21 -0300
Message-Id: <20200407200724.8308-4-cotequeiroz@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20200407200724.8308-1-cotequeiroz@gmail.com>
References: <20200407200724.8308-1-cotequeiroz@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_130741_433331_69FC8F52 
X-CRM114-Status: GOOD (  11.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f41 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [cotequeiroz[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH v2 3/6] build: define RTC_SUPPORT as a bool
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
Cc: Eneas U de Queiroz <cotequeiroz@gmail.com>,
 =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>, Felix Fietkau <nbd@nbd.name>
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
