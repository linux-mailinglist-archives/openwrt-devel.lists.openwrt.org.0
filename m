Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEA4F1178FB
	for <lists+openwrt-devel@lfdr.de>; Mon,  9 Dec 2019 23:04:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4wIRJA6XyoieRcY0Fm1nEFq/hnxGs8eJfCK3MVq1Wjc=; b=T31vaiETwYHzvN
	s7eP1t5LAYQv6AoPM1UWB28omygXfAmb3eKNW6g6hL6G1pF7dFdhnokEEppX0kLIiG1wlqml1Lt7e
	yv/x97JyDo0wl3yYwQMSfWZCVmPkLiP1Bap40w5kkSnTLe6tma9qNJBOG0vCoQvmE4FM0LImR3695
	lw4MLihdm+X9/FHAxWJHHPc+HlVdvBJYTlXwn37vhWqB41aM7q9cR+pZVXdqMv37tgJu1junrGfFk
	OfB1W4739BjcyRzwtqKN1so8R+G0xwYwCdUoCtky1LWZ4/2oky22qbhLxQKERLrsbd9oh8RG60/1c
	eimpfRUcqwoIC4AVW0Kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieR8c-0002Wv-RG; Mon, 09 Dec 2019 22:04:18 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieR8X-0002WY-7l
 for openwrt-devel@lists.openwrt.org; Mon, 09 Dec 2019 22:04:14 +0000
Received: by mail-wm1-x342.google.com with SMTP id b11so1002482wmj.4
 for <openwrt-devel@lists.openwrt.org>; Mon, 09 Dec 2019 14:04:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=pnMJovVoLakUdO2pLi9Zyb/TcGEAce9MMGh0OTGwDqY=;
 b=Bjorygutb/AW7+tUCT4I2tw+NAKFy6eBrb3gs1D1SbxSk2WwZPPHLj3nynhBNvMLN6
 NtfZIBb9gvjUSEqSvMjQeL69Iu//qN5p5W61adlK2wto1L8cv4sfIr8SIs0sWtEcvoFK
 a3lt7OHZvufFEntIW3xjSXlPjrc830PliRnUZZqNKSrKb69mxJszBb149U65qINzD1lT
 aJrCu7tyG9DKIqTw8eWrJA2oxLvUkdcMXVaArJjsklMcVCtkETYZKZX64Qx31723bmxK
 0CfA+PeQJXenB0h+Fgj6DsQV+gB6OMNzqc5fMH3XL+I3i96+IH63FFYWgwUGc1G27SYd
 OM4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=pnMJovVoLakUdO2pLi9Zyb/TcGEAce9MMGh0OTGwDqY=;
 b=LVFEyQ6bZ5e2MpxwFDGlJQ0Z9Cw3r4Hs4+3xrN/3IRjA2GWWJ78C8UUs0bcZTpbYzH
 6iCsep7pMMNFU97cIANSVPSUl91KocyGzXh2dEqJqbycl1wuG2GkTeAVVRjHwaKoFh99
 eigQeIn+7fTcr5V6/uhm6QQVuey2UqvUc4vUqRReXe3n1/CgUkhubUP39rHHVqkxhfZw
 C/hSckcoCGR7/vDja80cFf+EoL/BoFbKlXce5x4KhyvWK3MlSPhYGfPywh6SwNQVQn04
 GJWl3y48yweQSpTxUVEB9uqvd1PieWrXq+SKOchAF04Bypa49OvNIdQt361KaqaOs0HG
 VvXw==
X-Gm-Message-State: APjAAAXbOuPG+l6PBcd+oJrZLEuxfKeHP29AvpeXdM5fyX6BbOZSFfYf
 8IFPfqSajQzxLujaKptOYE2fRik+
X-Google-Smtp-Source: APXvYqxCBFHQAqLWOSGEGr13TgJy4hMWRDgI+eP/mMqUqEhtqaf74NWNT0eQ0RgJOrBD47edivN0wQ==
X-Received: by 2002:a1c:4d18:: with SMTP id o24mr1262552wmh.35.1575929051150; 
 Mon, 09 Dec 2019 14:04:11 -0800 (PST)
Received: from gavarga-5590.lan (catv-80-98-141-192.catv.broadband.hu.
 [80.98.141.192])
 by smtp.gmail.com with ESMTPSA id o189sm834867wme.29.2019.12.09.14.04.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Dec 2019 14:04:10 -0800 (PST)
From: vargagab@gmail.com
To: openwrt-devel@lists.openwrt.org
Date: Mon,  9 Dec 2019 23:03:58 +0100
Message-Id: <20191209220358.103352-1-vargagab@gmail.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_140413_297038_A426DEF5 
X-CRM114-Status: UNSURE (   7.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vargagab[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH] ramips: fix switch port numbering for
 RT-AC65P/RT-AC85P
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
Cc: ynezz@true.cz, gch981213@gmail.com, Gabor Varga <vargagab@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Gabor Varga <vargagab@gmail.com>

The switch LAN port numbers are in reversed order with original config.
With this patch they are fixed.

Signed-off-by: Gabor Varga <vargagab@gmail.com>
---
 .../linux/ramips/mt7621/base-files/etc/board.d/02_network  | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/target/linux/ramips/mt7621/base-files/etc/board.d/02_network b/target/linux/ramips/mt7621/base-files/etc/board.d/02_network
index 420780a101..42cdb4d57f 100755
--- a/target/linux/ramips/mt7621/base-files/etc/board.d/02_network
+++ b/target/linux/ramips/mt7621/base-files/etc/board.d/02_network
@@ -37,6 +37,11 @@ ramips_setup_interfaces()
 		ucidef_add_switch "switch0" \
 			"0:lan" "1:lan" "2:lan" "3:lan" "4:wan" "6@eth0"
 		;;
+	asus,rt-ac65p|\
+	asus,rt-ac85p)
+		ucidef_add_switch "switch0" \
+			"1:lan:1" "2:lan:2" "3:lan:3" "4:lan:4" "0:wan" "6@eth0"
+		;;
 	alfa-network,quad-e4g|\
 	netgear,r6220|\
 	netgear,r6260|\
@@ -64,8 +69,6 @@ ramips_setup_interfaces()
 		ucidef_add_switch "switch0" \
 			"1:lan" "2:lan" "3:lan" "4:lan" "0:wan" "6@eth0"
 		;;
-	asus,rt-ac65p|\
-	asus,rt-ac85p|\
 	dlink,dir-860l-b1|\
 	elecom,wrc-1167ghbk2-s|\
 	elecom,wrc-1900gst|\
-- 
2.24.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
