Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEC6F824F1
	for <lists+openwrt-devel@lfdr.de>; Mon,  5 Aug 2019 20:35:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+jJe6/H5HtB0TmgneIV+ct/Q9l95qiiW9IP9iEhQwoM=; b=FQJu7VCgoGIukm
	D0Skx8MkYS4dH6CcfOu/NWri0kGfiQ7XoIgHt+kzVGisImwdlPgBpropvSktwY3E/qMZVzwTrRQqM
	8RMLQ8ZYsoP714BzDv1eUcxfBtp6ZeBTIFBlJDgmM0jgnMttIwGfO/VWLt0Z54otD4ATcPOgNx5Yo
	N4zLDBrIDebX0JQyqhpDAB5lILq2CwX9St+50b4vNLCALB5I42ilCwP8cN3sM7xTMHPQXjHQhfV7P
	lMkgEXXy1Kl0vnsQLk78U+VMq/XBen880mujMX/K4Y+pQuu2ucpppXZQzO8OqXB1eBFX4zAlVWux/
	j6BC8BM7oCRXji6PJwQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huhpg-0001VS-Rn; Mon, 05 Aug 2019 18:35:44 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huhpZ-0001Up-7g
 for openwrt-devel@lists.openwrt.org; Mon, 05 Aug 2019 18:35:38 +0000
Received: by mail-qt1-x842.google.com with SMTP id n11so81919003qtl.5
 for <openwrt-devel@lists.openwrt.org>; Mon, 05 Aug 2019 11:35:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=qW//Y665C1xYe8UXvq92OVMUruboCq6ZPG8gknG9DIU=;
 b=B5WCPXgTyj0GdXI49EHdL4bN1k5C5ak7aKfi/zcqKmjSjakHU4Nr+2mEZ6XMVx+/Sq
 zVJGRPBS0Qt+wtRmmkK0yD2MPT6GRG7EqcLYCKG75OOr87kQNaZ8X7CgEUBYe+aafcfp
 PVh/MkYBvif7xNXg2Decqc9PRV2ncI4j0/ZtIJ0WIO/cRk0TQHPo8L1LvaA9IvBGkTmC
 iGOVarn2G5U01Ez0o9ocgWeUxxiKtQxs/tygvLAsjkR8AawD5jJJTZ3DKBHsnPxhjD04
 PCgqoIOxO9NxMaTliOF0zg03quYyx7wEC0vBDsN28zAVkQP0PzuWOoy3Usc5IrO6gAaR
 dJPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=qW//Y665C1xYe8UXvq92OVMUruboCq6ZPG8gknG9DIU=;
 b=Pk1PNm3og5V2QwZLo7pWvEPjp2jvuLecU9CALZ3snCkgYxfew+vEF278cDwEOjHQxu
 Z/uQFLaqoazMoa5FzZsa+HwRYPW0kyHuuGl2DlwTOvEtw0NxZ5ysV00uqsiv04FzPBgu
 hEW7AcxwF22H9FkjMrPDPeodqovWUcp44pBk+Sj0w/8nXLjfQ3ZOXjbrpsjmS0QR1wxj
 E3vbOkRSSdldW7bGaldOQCQo4bKbrQ8/CfP7wrbfs7A4cXMHL0GV/Lmx18pct44RSL9X
 /1yt5iBV5qCKC3zFP0ZVIUMFZCFigmj1v+SJACp5KEuTppr1yFw/hJOxiHwGqAmAS31m
 XXrQ==
X-Gm-Message-State: APjAAAX6wVQCt1+f0LdlZ3I5AJc8J4unRaRzFSzt0xMXSebaV9SeuueJ
 ZmyKBfUdiRHllY/5r31pr8AnDCk/wV0=
X-Google-Smtp-Source: APXvYqyAh3AYrBN6/JLMdUKVv6+/z0Upx62YhteDwiSbsabo4ThcTOHa+UHFn3QJDWBhkvTJJtuKrw==
X-Received: by 2002:ad4:4373:: with SMTP id
 u19mr112242117qvt.202.1565030135801; 
 Mon, 05 Aug 2019 11:35:35 -0700 (PDT)
Received: from gateway.troianet.com.br (ipv6.troianet.com.br.
 [2804:688:21:4::2])
 by smtp.gmail.com with ESMTPSA id e7sm34565926qtp.91.2019.08.05.11.35.33
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 05 Aug 2019 11:35:34 -0700 (PDT)
From: Eneas U de Queiroz <cotequeiroz@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  5 Aug 2019 15:34:36 -0300
Message-Id: <20190805183439.17926-1-cotequeiroz@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_113537_281104_BAD898BD 
X-CRM114-Status: UNSURE (   8.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
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
Subject: [OpenWrt-Devel] [PATCH 0/3] support EC keys in px5g/uhttpd
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

I'm adding support to create EC curves with px5g, and changing uhttpd
to use it, adding two config options: key_type, and ec_curve. 

* key_type should be set to either 'ec' or 'rsa'.  In practice, it will
  silently use 'rsa' unless its value is 'ec'.

* ec_curve takes an elliptic curve name, which should match one of the
  certificate generator's TLS library's name.  Unfortunatly, they don't
  necessarity match between px5g (mbedtls), and openssl.  Short names
  P-256 and P-384 were added to px5g to have an uniform set, and are
  guaranteed to work.  P-521 is there too, but mbedtls is currently
  built without it.

Right now the ciphersuites used with EC keys are stronger than with RSA
keys, and I'm sending a patch to widen that gap further.  That way you
can use the key type to choose the level of strenght vs. broad
compatibility you wish to use.

A P-256 EC key offers a strenght equivalent of 3072-bit RSA key, and is
generated much faster than even a 2048-bit RSA key.

uhttpd currently generates a 2048-bit RSA key by default, and that has
not been changed.

Eneas U de Queiroz (3):
  openssl: always build with EC support
  px5g: support EC keys
  uhttpd: add support to generate EC keys

 package/libs/openssl/Config.in                | 12 ---
 package/libs/openssl/Makefile                 |  9 +-
 package/network/services/uhttpd/Makefile      |  2 +-
 .../services/uhttpd/files/uhttpd.config       |  8 ++
 .../network/services/uhttpd/files/uhttpd.init |  6 +-
 package/utils/px5g/Makefile                   |  4 +-
 package/utils/px5g/px5g.c                     | 86 +++++++++++++++----
 7 files changed, 87 insertions(+), 40 deletions(-)


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
