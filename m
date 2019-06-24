Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB17751B5A
	for <lists+openwrt-devel@lfdr.de>; Mon, 24 Jun 2019 21:24:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AJNkN0A6pVDd8dv4Q72EhvVnGUrgLMRc0fLSaecX7T4=; b=e4e1+dDWUzer+n
	viuiXXPn2ilA4BPNa3Q+3ivETWusdaqP5gRVYwk2sJD/aU7u8RjGK75k2QRMzoD32kYU+5KjMQSz2
	woTUHwTU64AiQXFH29q9cuKi7u8UeVBIEnPVLvpoaD96aB8KM35rx/6+ev1se8Pau0o14mYlYO6mA
	+ERZke4mN/jO5mHP76lEa7MQBJTmMMMxJLeFp3CrZvfO7WtZbjfA97iBb7QRw2Ct/jLiHMe413XYG
	zrDW9lM92PYZhQfl5+jJ8UL8F/W/hftvqUYuqrwhmB2yGWSXyKJyXmXP/3rMakTzceXuJ+DARnQ3a
	he6oEJuDeBlAboRNhtPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfUZb-0005JK-Vn; Mon, 24 Jun 2019 19:24:15 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfUZT-0005J1-HZ
 for openwrt-devel@lists.openwrt.org; Mon, 24 Jun 2019 19:24:08 +0000
Received: by mail-qt1-x843.google.com with SMTP id j19so15715027qtr.12
 for <openwrt-devel@lists.openwrt.org>; Mon, 24 Jun 2019 12:24:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jDc1ELrKQ9mUn/8qK3rVALk722D9NenKlHu6M+cVgFo=;
 b=Vs+M+lXB/YWWvRU1GX/C9ttZOA/d238akJecsZocN2SfxZcJlF8pUJvy+t5j19R/k5
 XFrPvaLPYqdfZ3c2Z41d7d0Zo75Je1rO/AyiiQbW6nUM8pPyEm9ugHN0+5ynWwSLomJ1
 6ySRI5gfLPyLXofqJgHmllaLRduOEt71ubMm8XvyF+ttrFyEi1Tso1dIUSIgGjbZOifW
 u2rwqqI1rVEZKlPlZ4+eJIqVAJAki0chudw+4PCnxl3fXmnX5zmAlzCnY/SnUyrRzs5L
 zESKG27bt5Qx4NWmKbdMY9UrJYrmP49+8hjBjaUjfA6kWY3Odnqo7zlaM5sGiooCJWeJ
 Vu2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jDc1ELrKQ9mUn/8qK3rVALk722D9NenKlHu6M+cVgFo=;
 b=bA4wXdoZGS1gpW4Z/pYjnDVnpducXZv4vgqfY660pZdoJRv7d8sNCzTOaJhtmTfC0m
 afM7wvbUMsOLQCeJK2dKq+nGf+EROgP58ZdARObL+TJUvd13shalyjfUOwuCS6LGgXTY
 dn1ib2PQnY8YFfQNW7C8acxv8eAFHOJ+NAQ78ynpc/jOwzAuvjsBuzD899wfGVPsHpDC
 6hUCn3M4nyTdGYbQB3ekshRzPW09WYIidQlXgVhIM7CePFW3285k8YDr/Dk/VkRmjSmu
 tx13H5YoHacI80i278p19Lg7BuQsBLwjFura2cjKuNrMXNKdjivB51U0C1PyEirFztuN
 2psg==
X-Gm-Message-State: APjAAAWtTVSJMxMjG7NqcXHxlpll8qoHEAL3/7VhgQtDlek91BxQrehU
 gPtcmpj53z2emC2VL9Ct31T8dS99rRQ=
X-Google-Smtp-Source: APXvYqxzdsxBAZqNZqyo+wLw7fZWQbOcjp1HIVRxy6s/ZZbZWWlUEzbfe+7YPzUMHAOGZzplr0aYPw==
X-Received: by 2002:a0c:b885:: with SMTP id y5mr4248412qvf.31.1561404245726;
 Mon, 24 Jun 2019 12:24:05 -0700 (PDT)
Received: from gateway.troianet.com.br (ipv6.troianet.com.br.
 [2804:688:21:4::2])
 by smtp.gmail.com with ESMTPSA id y29sm6622166qkj.8.2019.06.24.12.24.04
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 24 Jun 2019 12:24:05 -0700 (PDT)
From: Eneas U de Queiroz <cotequeiroz@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 24 Jun 2019 16:24:00 -0300
Message-Id: <20190624192400.13549-1-cotequeiroz@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_122407_606893_9105AB3B 
X-CRM114-Status: UNSURE (   4.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (cotequeiroz[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] ustream-ssl: update to 2019-06-24
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This adds chacha20-poly1305 support to the mbedtls variant.

Signed-off-by: Eneas U de Queiroz <cotequeiroz@gmail.com>

diff --git a/package/libs/ustream-ssl/Makefile b/package/libs/ustream-ssl/Makefile
index a15f3d8ab8..ca9ad5d98b 100644
--- a/package/libs/ustream-ssl/Makefile
+++ b/package/libs/ustream-ssl/Makefile
@@ -5,9 +5,9 @@ PKG_RELEASE:=1
 
 PKG_SOURCE_PROTO:=git
 PKG_SOURCE_URL=$(PROJECT_GIT)/project/ustream-ssl.git
-PKG_SOURCE_DATE:=2018-07-30
-PKG_SOURCE_VERSION:=23a3f2830341acd1db149175baf7315a33bd0edb
-PKG_MIRROR_HASH:=289bef5dac684015b6a40cfd72cf1c8c297bb77cf2efd54e562b628ba3afd83d
+PKG_SOURCE_DATE:=2019-06-24
+PKG_SOURCE_VERSION:=738e8d2489fc64f782affd1292388c66f6d69e82
+PKG_MIRROR_HASH:=29e69fce0a334746ed3a68d27f5ca5bffbfc144d04329335be47983fdd7cbdfd
 CMAKE_INSTALL:=1
 
 PKG_BUILD_DIR=$(BUILD_DIR)/$(PKG_NAME)-$(BUILD_VARIANT)/$(PKG_SOURCE_SUBDIR)

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
