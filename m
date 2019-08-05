Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1B1781F6B
	for <lists+openwrt-devel@lfdr.de>; Mon,  5 Aug 2019 16:48:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PQGs8byidOFiMdS35uE3e3qObfb/EKuitE2Hi64r/RQ=; b=Jn6kfvQFSuL7ka
	uYD7OCRqNu8RE+xwao344QIfvxXiAoWCGqM1Rt3kyKwPV/s46RjYSnzB/WmpI4TLiuUAUI8s2McVj
	IlTzr0SWTsTrU4S3qX1six2SgvBgG+wo5Atur0rq69wz909Jnc96S+f6/C31TZBx6uE3iCA0JoGAN
	vtxToF93JONYrVaRofiVb3KYKSjiMNA6iOEsljW26CXR55LOaL9U4f0+bZWt2c1iSGvU3B8O++VsD
	+ZhjYNBQwkcMK/ZZByF6GL9J7UPtRXu3DNS5dXXfi/4pfoKcIkgNfNJwtJzlKsCVTXZ00npiBeSGQ
	sqwiEKE4bKHw9JMp7u8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hueHt-0001gj-CB; Mon, 05 Aug 2019 14:48:37 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hueHl-0001gP-Sf
 for openwrt-devel@lists.openwrt.org; Mon, 05 Aug 2019 14:48:31 +0000
Received: by mail-qk1-x743.google.com with SMTP id r6so60307468qkc.0
 for <openwrt-devel@lists.openwrt.org>; Mon, 05 Aug 2019 07:48:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=fTI7++w/qyVVmfVbdXf8qVjbdCCYTTIie+YSzqj2Jx0=;
 b=UbpbFNdviN/BhbK+dHV0KrmbIJwPpsslB184Y9HLmTVqtFFwV0I3Dqrv8U2sepF1Ql
 8E5yIk1ePW4Eoc9wBbP7FLVQxsryZKBHRIQ8EIc55DzsdQAspo9mKnMhkNYfWu8a3sqi
 y3gtBeyHNTp3qTVuTjIarkiQLv5qgfnZ0ggCej/3RpkBrH/O3iFdUtDLtrwbqhZrTiaW
 T7ng9VXgZK4eOVAafPyCEO69b/HzsMqjDRivrHqdTiS23ZYWvSfahUH5rHcQOtC6g7iS
 Up7/o1DbzLAwLOlGZvQ8T3QRD24xN5Ge6M9Gqrbr4bvdxfMgOaNaI132dZhh+jrsrdTe
 L91g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=fTI7++w/qyVVmfVbdXf8qVjbdCCYTTIie+YSzqj2Jx0=;
 b=gtIu5mLtGNEkx6VHKuuoMnWvvf4zQA8d246FUPXQWgg3Et69cfWPitM2bqP0rWvxMX
 E/FINtYqjeU8lfT9epHbWyBqJ3iVKrTJtJAHwfW2peODYc//qjWNHqW7Ap4ZVciYuFxb
 +OQlxD+dXIGbEeBpx8aBwbpywgXk2at7tmxtPz6IoFmJyqpL1XYmZ/62wvaD5QMuAo+P
 VRNuDzP5tbTm0TaWS65XmQmX8PKwJivkmU4TTcUsPeOfMBwWFPqd0A97P74ciJ94HbpM
 zoOH86N6ixozsiU+lpc1tSepFRdKDQHnMG59ydULMs46NYGSG+StL7X71okN5Jnn9cWq
 WP1w==
X-Gm-Message-State: APjAAAV7fjzF3WFONnjqa3p7nkRnjliCOQpWvA3Fz9QXnqeI7M6IIwxt
 7RX0zZzAy5yWoEedYVOx6uwRf4jTslA=
X-Google-Smtp-Source: APXvYqx/N8yLfqsR64R8MIc6SkLqtZTMF7NTIIkbR2SdfTL3ukyemKRqIN5aPg7s5E0uzYSMAINyLQ==
X-Received: by 2002:a05:620a:1506:: with SMTP id
 i6mr102554390qkk.346.1565016508205; 
 Mon, 05 Aug 2019 07:48:28 -0700 (PDT)
Received: from gateway.troianet.com.br (ipv6.troianet.com.br.
 [2804:688:21:4::2])
 by smtp.gmail.com with ESMTPSA id u7sm43947469qta.82.2019.08.05.07.48.26
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 05 Aug 2019 07:48:27 -0700 (PDT)
From: Eneas U de Queiroz <cotequeiroz@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  5 Aug 2019 11:47:57 -0300
Message-Id: <20190805144758.3129-1-cotequeiroz@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_074829_947774_08829895 
X-CRM114-Status: GOOD (  10.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (cotequeiroz[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH 0/1] wolfssl: bump to 4.1.0-stable
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

I'm requesting comments about updating this in 18.06.

I'm sending this to 19.07 right away, but it won't be so easy with 18.06
because there is an ABI version change from 3.15.3 (current) to 3.15.7.
Besides CVE-2019-13628, it is vulnerable to CVE-2018-16870: a variant of
the Bleichenbacher attack.

I've managed to backport both fixes; 
* CVE-2019-13628 applied cleanly;
* CVE-2018-16870 needed some work.  I've run the testsuite, and all
  tests passed.  I've used gdb while running them, and could verify that
  the tests covered all of the changed lines, except for some of the
  newly added error conditions.

CVE-2019-13628 is scheduled to be issued on Sep 02.

So we have three choices:
* update to 4.1.0-stable: we have to deal with the ABI version change.
  If we do nothing, then dependent packages will not work without
  removal and reinstallation.
  We can increase PKG_RELEASE for the dependent packages, some of which
  may be cumbersome: hostapd and ustream-ssl will either require a
  cumbersome subpackage bump, or have everybody else that do not use
  wolfssl be prompted to needlessly update their packages.
* apply a custom patch that will not be so thoroughly tested.
* do nothing: both vulnerabilities are timing attacks, CVE-2018-16870 is
  rated medium-severity.  We can wait for CVE-2019-13628's final grade,
  but wolfssl states it "is considered difficult to exploit".

Even though I'm confident the patches will not do much harm, I'm more
comfortable with updating to 4.1.0 and bumping dependent subpackages.

A note about the removed patches:

400-additional_compatibility.patch: I couldn't find much about the need
for this; it appears to be related to SNI support, which was new at the
time.  I've compiled all packages that use wolfssl and found no issues
with them. ustream-ssl actually defines HAVE_SNI, and I have done
extensive runtime tests without any issues.

900-remove-broken-autoconf-macros.patch: this was fixed upstream, and
the jobserver was disabled by ./configure --disable-jobserver.

Eneas U de Queiroz (1):
  wolfssl: bump to 4.1.0-stable

 package/libs/wolfssl/Config.in                | 14 ++++-------
 package/libs/wolfssl/Makefile                 | 23 ++++++++-----------
 .../400-additional_compatibility.patch        | 12 ----------
 .../900-remove-broken-autoconf-macros.patch   | 21 -----------------
 4 files changed, 15 insertions(+), 55 deletions(-)
 delete mode 100644 package/libs/wolfssl/patches/400-additional_compatibility.patch
 delete mode 100644 package/libs/wolfssl/patches/900-remove-broken-autoconf-macros.patch


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
