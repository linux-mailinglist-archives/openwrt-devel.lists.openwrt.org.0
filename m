Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C254B191EF8
	for <lists+openwrt-devel@lfdr.de>; Wed, 25 Mar 2020 03:24:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LkXhLVzM6CsgxpJJCe9KoPEEOhk+Fwhgrc/xGhJ4k4M=; b=ahnmuTeh3yvgdX
	hnnPSLHDlWdScTeXzz7hAKVEBzFzmJZ5ln3f26vdUf2NuRPeUGN+hVHph6JR+x3sDKYN53StPjjuq
	/ILPdIQZMLGBBhgHBacfzBW12EmR68TP2rfeNZggsuzFoaqqtNxSz56tJU1fSCtNdCCf5vDH0lNLu
	e60ly/mjzemlRanfInwEE4VfLx1kLp97/19GLlCv4rQsvIleL4CdzjovTSjLq/8415QIyfIF4L5/I
	DbJ1jdu6fl11BC29tpnmu0orMm/vjuPrSqT6n5cvyaucp7qTr3kq9axsdcX1H9d+IQRFxenUcXj5u
	UkAx3lf41UBpIgK8japQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGviA-0008IC-Lo; Wed, 25 Mar 2020 02:24:06 +0000
Received: from mail-qv1-xf41.google.com ([2607:f8b0:4864:20::f41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGvi4-0008Hh-Hy
 for openwrt-devel@lists.openwrt.org; Wed, 25 Mar 2020 02:24:02 +0000
Received: by mail-qv1-xf41.google.com with SMTP id cy12so290220qvb.7
 for <openwrt-devel@lists.openwrt.org>; Tue, 24 Mar 2020 19:23:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=f25qA4qi3JQGTVPdnESa4rzMeyul7ySqL3afZp1i0cs=;
 b=qmgqMtG2tHvaBiiC7WrCohLP/kT13Erp6l0GJxS9cH6ULU1lty1u8CPz+hdHgWHNEY
 /KCOYpuh7iAw8GMh93+0NveWa3OnO0snda1BerfK1SibnDHqJPDrg/OAeiUJAXJ4LlXH
 6tG2Asef/syy1jbBRpSCqEuDh2ILap0XXqrM0KQL8gBdTiHMkKMcZtGH6otixQD+ApsY
 qvY//j/vDYYkulv+h7E1R9QLlrmWn5DI7jWfBIMDx0sqLpc8dR14Yp7Il/8N0vFoRkGG
 Nki+1roH2yVZ6mjmG+OeAME1KYZIWNnBMS9yY2m6ADkpPgflL3FMBcOciluWVirvthad
 u0Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=f25qA4qi3JQGTVPdnESa4rzMeyul7ySqL3afZp1i0cs=;
 b=LwtzFDzOEZKOiKrJue5Cu4V8GR6Gb9bZuZHDJcGJtx4DM272huQ8n/VAVHHmMZnbbH
 fslfTlJ6PuDVrlpq7eLqU/k+zbzqbnPYmhSui+e3aAu2ETxLrFCsyhdLDXNZDBmKGMLg
 l4j141JdPpiKncq/cseGjvDjeKiFfestdg438Baseqkv+88Bon1DllSfKLCJAwwJew4A
 qf/rBgELwld6992YGglflFygz4Mj50R9w2e7MW6XTYEZK6vBXz+gQn8MeY9zDvH872lh
 10fKbHD9paMYib+5AQpBp6vFxjvyy60KMxk5cb0FeYNZFHk5Z6oTKlBFX7NSSpwA+A/Z
 z1Fg==
X-Gm-Message-State: ANhLgQ0C5kO+/ijKDIQg6l+NQQinISh2LzwAmOr9WhzvWuSDAKpNOK/1
 OTQp0UwLvH/H8+bIwUMLdV3oKPWuSdo=
X-Google-Smtp-Source: ADFU+vs2/+/jriYUB5cc78rlexLCX3SgfLTcsGoAkNAd9wdF/MxFp7wXbWZRkYm/9irc+srgvNGEXw==
X-Received: by 2002:a0c:8601:: with SMTP id p1mr1109205qva.59.1585103038679;
 Tue, 24 Mar 2020 19:23:58 -0700 (PDT)
Received: from gateway.troianet.com.br (ipv6.troianet.com.br.
 [2804:688:21:4::2])
 by smtp.gmail.com with ESMTPSA id t43sm16072705qtc.14.2020.03.24.19.23.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Mar 2020 19:23:57 -0700 (PDT)
From: Eneas U de Queiroz <cotequeiroz@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 24 Mar 2020 23:23:27 -0300
Message-Id: <20200325022328.20995-1-cotequeiroz@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_192400_619120_54282B44 
X-CRM114-Status: UNSURE (   7.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [cotequeiroz[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [RFC PATCH 0/1] openssl: fix session resumption
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

OpenSSL 1.1.1e brought a change in behavior when reaching EOF in
SSL_read().  Previous versions returned SSL_ERROR_SYSCALL but errno
would be 0.  New behavior returns SSL_ERROR_SSL and adds an error to the
stack.

This breaks session resumption in nginx, and has the potential to break
other apps as well. (https://github.com/openssl/openssl/issues/10880)
It is a bug, and it affects security--they're talking about a possible
truncation attack.

There's an issue open in https://github.com/openssl/openssl/issues/11378
where they're discussing what to do.  Apparently they are leaning
towards reverting the change in 1.1.1, but keeping it for the next
release.

I imagine affected software will eventually adapt, so this revert may be
temporary.  I'm not sure what to do in this case.  My initial idea is to
wait for openssl/openssl#11378 closure, and see what they decide.  If
they keep the change (don't revert), then we should probably revert this
now, and take the patches out once most/all affected apps have adapted.

Since this might cause trouble right away, and it was applied to 19.07,
I decided to post this now, as RFC.

This was tested in mvebx, WRT3200ACM, using nginx.

Eneas U de Queiroz (1):
  openssl: revert EOF detection change in 1.1.1

 package/libs/openssl/Makefile                 |   2 +-
 ...t-Detect-EOF-while-reading-in-libssl.patch | 112 ++++++++++++++++++
 ...more-BIOs-how-to-handle-BIO_CTRL_EOF.patch |  71 +++++++++++
 3 files changed, 184 insertions(+), 1 deletion(-)
 create mode 100644 package/libs/openssl/patches/200-Revert-Detect-EOF-while-reading-in-libssl.patch
 create mode 100644 package/libs/openssl/patches/210-Revert-Teach-more-BIOs-how-to-handle-BIO_CTRL_EOF.patch


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
