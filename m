Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BC496205A
	for <lists+openwrt-devel@lfdr.de>; Mon,  8 Jul 2019 16:20:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J6kihTNHN1/A8nLERbyVOa+gcvm2W/KEPM87EBiy8Cw=; b=pWmcrffQTFRNKO
	L5ayZy50m1W9Gym1Mw1o4reVVJSWntWqQbcAEXyet5INcLzxI5ryPReINW793XzvLAVVsnHGj9iMR
	uGJyQH9LgpMV7+5I9krNHUb6ADXy3vKNaFnS7bu9Ok/MQyozN/hTAyFl9LPVDC+Rv03L10omHxsm7
	DQB2fTR7pQmryoqOyiQTXZMDN5LuwriGo+BT81RAE6FTvap26eUoN5EdAPa9a+aOX8XYOe+0yQA3h
	TzqSl7pr6LkwjfYqMyEmR/5niN4EE9f0v88Xi9RdYvow9GZKb6s8UxkBAtvIFWLZin0SR1AZl0i0u
	5jPHwYcFREdllIeUSmYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkUVC-0005Iq-If; Mon, 08 Jul 2019 14:20:22 +0000
Received: from mail-qt1-x82c.google.com ([2607:f8b0:4864:20::82c])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkUV1-0005IK-SM
 for openwrt-devel@lists.openwrt.org; Mon, 08 Jul 2019 14:20:13 +0000
Received: by mail-qt1-x82c.google.com with SMTP id y26so5597072qto.4
 for <openwrt-devel@lists.openwrt.org>; Mon, 08 Jul 2019 07:20:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=fW2qtpaed9tbtTfVysk0EWGsahND0DiWsKj4CknFhDg=;
 b=deOFlOP94t/LYQEPlrJZigvlg4W0WfR39/06Z5ScWpemJjALpnaoieYt8mIeKV/Btw
 yTx0vfwFOjVVZDRfKLy0eYxm2o3XNMh+H+BzDHOx3muDd54FYQuBqZ/tCrlyF49YNWE8
 1oBmBLVfMp67SdaziSBZ9iv4lOqV9PKhOkPz20PgVlzTzwl3ELEtl4BRE8I4+Q1zJ3VR
 mxyZnVQ2hIgtBIjdqU2ldXdN4Pt0yP6JzmxR+Bcp5Y3xOf5SGV/g9o/Cv2X1Q53/vZKT
 hYYH9kG3TZQfSG5wVbD/VpydfhBUH1KvZdlUxgp41JLdJO1J85guWLvJ1j0AF7WSOSRY
 UPGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fW2qtpaed9tbtTfVysk0EWGsahND0DiWsKj4CknFhDg=;
 b=UYAIFUxO2uoNRm2QD9A6DQiZM8CTF9Wf1vqkZn/xcqkY1Fv0JLpPTa+U4kieOrAz+v
 +XpIGUbp37Lr+TNJP0GJ9MZBef/TMhEw96nR/aO2caXVYdNOZgtqttx6eEmSJ49e4nTm
 dvHHZD8+tDEp1aYlkxgMX9Qw7h44/kPNBm9fm5wXJbe4CEAw1jtr2laAtYktKedjVjic
 QDYeJaFjB+kYK55bLNVPMzqyqqxrIvz6YtxKqwW8eI8fC9WQGYQ7fa6J5B5YJDgJDrsv
 AmIM/FdRrGZ2gxqLCW+XE67aCVoIx2q0LiNqHwyskSYoUWNAO9wypo73yELwCP4czckJ
 +9fQ==
X-Gm-Message-State: APjAAAUe4rpiAkOq/hVEVJa1pDAxfHBnlCdCqhAXt9AlOOPKWPZ1zFmC
 tXngc4rXRhDHtnbRSGhxR7BHIYqu
X-Google-Smtp-Source: APXvYqzhAzLq9ENCyCQwPo06F9GCDEQsgCTDbUpe3lhzHhYmwsSKLy338yzGeJY0+scyPRfaJvIEjQ==
X-Received: by 2002:a0c:81b8:: with SMTP id 53mr14439238qvd.91.1562595609453; 
 Mon, 08 Jul 2019 07:20:09 -0700 (PDT)
Received: from gateway.troianet.com.br (ipv6.troianet.com.br.
 [2804:688:21:4::2])
 by smtp.gmail.com with ESMTPSA id 47sm10143276qtw.90.2019.07.08.07.20.07
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 08 Jul 2019 07:20:08 -0700 (PDT)
From: Eneas U de Queiroz <cotequeiroz@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  8 Jul 2019 11:19:52 -0300
Message-Id: <20190708141952.5812-1-cotequeiroz@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <CANoib0HfXsxdD4hDAPPh8r-X_eH=-+rh+t2is0du6GiczfnmCQ@mail.gmail.com>
References: <CANoib0HfXsxdD4hDAPPh8r-X_eH=-+rh+t2is0du6GiczfnmCQ@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_072011_944688_4150A3BC 
X-CRM114-Status: UNSURE (   4.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:82c listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (cotequeiroz[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
Subject: [OpenWrt-Devel] [PATCH] wolfssl: fix PKG_HASH
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
Cc: Dmitry Tunin <hanipouspilot@gmail.com>,
 Eneas U de Queiroz <cotequeiroz@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Commit 3167a57 missed it.

Signed-off-by: Eneas U de Queiroz <cotequeiroz@gmail.com>

diff --git a/package/libs/wolfssl/Makefile b/package/libs/wolfssl/Makefile
index 7aaa562539..264be02496 100644
--- a/package/libs/wolfssl/Makefile
+++ b/package/libs/wolfssl/Makefile
@@ -13,7 +13,7 @@ PKG_RELEASE:=1
 
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
 PKG_SOURCE_URL:=https://github.com/wolfSSL/wolfssl/archive/v$(PKG_VERSION)
-PKG_HASH:=dc97c07a7667b39a890e14f4b4a209f51524a4cabee7adb6c80822ee78c1f62a
+PKG_HASH:=70e4fbeb91284a269b25a84fc526755c670475aee4034a6f237b1f754d108af3
 
 PKG_FIXUP:=libtool
 PKG_INSTALL:=1

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
