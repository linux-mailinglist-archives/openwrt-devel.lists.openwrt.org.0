Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 027B4EBC60
	for <lists+openwrt-devel@lfdr.de>; Fri,  1 Nov 2019 04:30:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BExI+BcnuR3xbDfRMW63yO3k+DW3E6VvG3cjydCSfNk=; b=pLRLL7l1DwfFK9
	Zgq9iGIduBw5oW3PcTHXjRzLhjA6gVyqI6w7bv1kHZp6ia7Pjb4AWBQxDR90b0UM1jXaQ/nqc4OFv
	pdLZ3NCBR3AqXmbySthJAUPWdoLeua1CHLMcDDqIYm7uEVJgEu5OCobdwg5unLvHbCGGh1WX0Q6pO
	I5BaLw1RcUUPG+dLs5pnjt34cS6NrcCRsMerm3MqeKkqFPAOMQGh4shPljbltfUZXLTzMRV7KtU65
	BYrABxrWDe4nD52C6fzxBteLsDLJAbVcGWlf8JYacGH5xd914gdVMTzOcaIwCiuAVVZGhtzEurIQ/
	jZ8rtRktTAF3RtiZeScw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQNdR-0005KY-9u; Fri, 01 Nov 2019 03:30:01 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQNcu-00054r-Tn
 for openwrt-devel@lists.openwrt.org; Fri, 01 Nov 2019 03:29:30 +0000
Received: by mail-pf1-x441.google.com with SMTP id r4so6041396pfl.7
 for <openwrt-devel@lists.openwrt.org>; Thu, 31 Oct 2019 20:29:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VFo+XNV1wNTbn+ryBtm7FdlIL5r2GsbkNy/GwfFu13A=;
 b=B+HCctZXK2rL3U1mQJR0gf1mE4lukY0oN7C0KSJcdPupLRHip2uW342XzDpH4uL5QA
 Sk5HB1LEmzCHSIAjZVxSng5weLj6nhHiUveiVlP3AItZVc7VJjI+vcPj7qjUWWUEE0D/
 6kQ6/wSu2eS0MrrmJAvOvX7x+Zikb85KqhGyTe3oIiflNDJeRf8gY2V6XqGGaV7QljWn
 x860++3stCEqLXLAEBE/61Xq5Xu0JS6pLWpBO4K24Q+g2RC5/q0KhxyMhYRr028LmMPl
 cL1B5mnxTol6+tIo+wXry4wPhyVWpsxbLytHtvd1CQlh/OajRDiJGc4b5rphla1nGhCE
 IpIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VFo+XNV1wNTbn+ryBtm7FdlIL5r2GsbkNy/GwfFu13A=;
 b=jXcQ2qzjnpzAW+9KSh4RoPuajLHuEwCzLlucZ6f5wgiut3A8t27ENlpoG/4ptGs0XQ
 cPpg2m6w6zuh30f6mxi48Hoih1fBqMivm8kHaJ/xFksNtielz84glL20YQJx7sCZc48s
 YGECNfw1vAh4UDZX6TauKM7oVureEutyoKutKimZcHOIoyw3J7s7nxleVxRrsWMYH5N4
 DpoMl7UFGXIZlrALOOU2kxYbOSQc+wSEUhnoo3GwFlmLxz+Oe34c79ARRbSBiD9LRGnH
 x2VuBL1xHsBtZu6Dm9t2EOcY/vBMt99PxLXN0KDYGGEniAsHz7HBkyl2+nEdbwd0fX1l
 +0bQ==
X-Gm-Message-State: APjAAAUmKG7JXrEFOjzsPpqojynZEIVXfUwbeHj6vLNKNkVw6EJVSPPU
 5VgWA1qp9kL3KdHBC2hplzhkH8sH19c=
X-Google-Smtp-Source: APXvYqyAWY8glrsAAvh46RdlEtUwwMoxP1foudJFUqHRx3qFAwvUzghnv21zIW18TUa8Hrhf0Eu0cQ==
X-Received: by 2002:aa7:8d88:: with SMTP id i8mr1231953pfr.88.1572578968214;
 Thu, 31 Oct 2019 20:29:28 -0700 (PDT)
Received: from localhost.localdomain ([2001:19f0:7001:2668:5400:1ff:fe62:2bbd])
 by smtp.gmail.com with ESMTPSA id j11sm4667485pfa.127.2019.10.31.20.29.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 31 Oct 2019 20:29:27 -0700 (PDT)
From: Chuanhong Guo <gch981213@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  1 Nov 2019 11:28:57 +0800
Message-Id: <20191101032858.19013-4-gch981213@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191101032858.19013-1-gch981213@gmail.com>
References: <20191101032858.19013-1-gch981213@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_202929_006137_B71113B6 
X-CRM114-Status: UNSURE (   9.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (gch981213[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (gch981213[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH 3/4] mediatek: cosmetic fixes for
 mt7629-lynx-rfb
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
Cc: Chuanhong Guo <gch981213@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This patch did the following things:
1. rename device compatible string
2. add earlycon into cmdline
3. add mac address location according to mt7629 eeprom layout
4. rename mtd partitions

Signed-off-by: Chuanhong Guo <gch981213@gmail.com>
---
 .../files-4.19/arch/arm/boot/dts/mt7629-lynx-rfb.dts     | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/target/linux/mediatek/files-4.19/arch/arm/boot/dts/mt7629-lynx-rfb.dts b/target/linux/mediatek/files-4.19/arch/arm/boot/dts/mt7629-lynx-rfb.dts
index f3fadd301a..17ce6046da 100644
--- a/target/linux/mediatek/files-4.19/arch/arm/boot/dts/mt7629-lynx-rfb.dts
+++ b/target/linux/mediatek/files-4.19/arch/arm/boot/dts/mt7629-lynx-rfb.dts
@@ -10,7 +10,7 @@
 
 / {
 	model = "MediaTek MT7629 reference board";
-	compatible = "mediatek,mt7629-rfb", "mediatek,mt7629";
+	compatible = "mediatek,mt7629-lynx-rfb", "mediatek,mt7629";
 
 	aliases {
 		serial0 = &uart0;
@@ -18,6 +18,7 @@
 
 	chosen {
 		stdout-path = "serial0:115200n8";
+		bootargs = "earlycon=uart8250,mmio32,0x11002000";
 	};
 
 	gpio-keys {
@@ -75,6 +76,7 @@
         gmac0: mac@0 {
                 compatible = "mediatek,eth-mac";
                 reg = <0>;
+				mtd-mac-address = <&factory 0x2a>;
                 phy-mode = "sgmii";
                 fixed-link {
                         speed = <1000>;
@@ -86,6 +88,7 @@
         gmac1: mac@1 {
                 compatible = "mediatek,eth-mac";
                 reg = <1>;
+				mtd-mac-address = <&factory 0x24>;
                 phy-handle = <&phy0>;
         };
 
@@ -153,13 +156,13 @@
 			};
 
 			factory: partition@70000 {
-				label = "Factory";
+				label = "factory";
 				reg = <0x70000 0x40000>;
 				read-only;
 			};
 
 			partition@b0000 {
-				label = "Kernel";
+				label = "firmware";
 				reg = <0xb0000 0xb50000>;
 			};
 		};
-- 
2.21.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
