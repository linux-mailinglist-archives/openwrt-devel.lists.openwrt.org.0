Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39B1D2E28E
	for <lists+openwrt-devel@lfdr.de>; Wed, 29 May 2019 18:52:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n7mc1xEBHl3jlTyo9nqcja/l2kJtVyJ6psWOUmltYRU=; b=uPVkciUUnkregP
	1T99nmlALGPIgai8buPbJOY3It1rG4RUEx3Jxc04nZ0MXaITxLuqQlYxKCSt8VewmPYA+BW66dDEw
	+7AHKGhQ+89SQ2GyL3mA9FIk737xcLIH2qVioMHxY19AoPCTBy988SW+Rt5ZeO+fk4sdsEhMQqNAd
	jE0goK05z32i0NFgMNmT2DAr8/FIljpJDBS/UuVc9sxRZ4RX31UZJGO+NgdTgQ7s8oyGqfP1bOT8C
	NlnPFXsvomAhY+YcQ8rcbyaI8+bJb6KtXItrRb5pt3LsukfcPuzjdeCj7amoFAMxZvfEVeiKhaE0E
	wAM9oBTckw0YgMzqRn3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW1nl-00069r-88; Wed, 29 May 2019 16:51:45 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW1nV-00062l-4u
 for openwrt-devel@lists.openwrt.org; Wed, 29 May 2019 16:51:30 +0000
Received: by mail-ed1-x542.google.com with SMTP id n17so4833239edb.0
 for <openwrt-devel@lists.openwrt.org>; Wed, 29 May 2019 09:51:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5lFrHo6Dl6dCe1rGu9J6tQASLjtlQqATsUSzZ5vuEtA=;
 b=Z9exXNt1Af3+lR+v9Q8i39YXWQLQ3umYnMMWxVFCyvVQabfSIYmdPdTUqx2stwpiNy
 vABXuz/O4DvAwKhPY1hnKGdm7ZmDomeWgSCGnakWX8qrFN+AMZncK/1PbhV4Ty3VdZGk
 maI9b/AezGasWHTdDqX/T4QFzemA0RBBR09ZtEqi+zmgTZnyizwy6snC0Uk5td8wIdVt
 x0Vg+b29mrMLS1uDom/fK4QpU/O4fo+X0rL9I1Ep+rhmUIu5IB/PK2YuFnKGKgtkRZ/l
 EuJBk6x0ekGzzFOohXi1RuNDk/tumwRMBBx/G9Z9/uEFeMhFFjNm8ASie+BVgxco8WLd
 r7MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5lFrHo6Dl6dCe1rGu9J6tQASLjtlQqATsUSzZ5vuEtA=;
 b=WULpzqs2Eo9u4S4blLi4n1VIX9xdx6fukNmjGZYh0+J0r4NIJatwx/if9bpN2yBNOs
 lTlAx3MbG0uJQLFfgWwF0JUZQ6SyB2YEk4K9xAL6qNsThzHdR8ueAGHX9fyXQl6xLOO/
 CvJl5fHQSdmHjFTanfhVjTPGiosduy17XX7+t2twUWIjuP6XL7+E82uqrehN03/IM/vm
 Q9d+tzyVTtUkwC85iqs5lrJRawWIN/uFMR7RUNxKbIZ9oVUP2BEs+MqoPb1+5txGUQcL
 u1bQo0hfchEzdawJROn1ZcsVLp3Eq90FFlWnLUPjonTQt7Md4kbe/Bgc1Zp9H0qJtcfD
 wppw==
X-Gm-Message-State: APjAAAVt4tCfl59dk4ltDctoS95Qi7H3Q4B1nFdlZufinQwKZJuGanB8
 /ksCa+Z9xL7uFDz9OOrsoVxx2ObC
X-Google-Smtp-Source: APXvYqwGwMs7zW0VXlTAIZYbDGg+Gw/2e/n6HLSvhbMqRUoLp2vScmuvQ544k51eg2i+rhXwQIC83A==
X-Received: by 2002:a17:906:59c5:: with SMTP id m5mr811058ejs.27.1559148685939; 
 Wed, 29 May 2019 09:51:25 -0700 (PDT)
Received: from dedeckeh-X556UV.lan
 (ptr-fvgfo5u9mqywjziyuc4.18120a2.ip6.access.telenet.be.
 [2a02:1812:1109:7d00:f813:5f79:8aea:bc14])
 by smtp.gmail.com with ESMTPSA id 11sm10391ejv.64.2019.05.29.09.51.25
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 29 May 2019 09:51:25 -0700 (PDT)
From: Hans Dedecker <dedeckeh@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 29 May 2019 18:51:20 +0200
Message-Id: <20190529165120.14766-2-dedeckeh@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190529165120.14766-1-dedeckeh@gmail.com>
References: <20190529165120.14766-1-dedeckeh@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_095129_185105_A24C86A7 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dedeckeh[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 2/2] ppp: add config options to tune
 discovery timeout and attempts
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: Hans Dedecker <dedeckeh@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Upstream PPP project has added in commit 8e77984 options to tune discovery
timeout and attempts in the rp-pppoe plugin.

Expose these options in the uci datamodel for pppoe:
	padi_attempts: Number of discovery attempts
	padi_timeout: Initial timeout for discovery packets in seconds

Signed-off-by: Hans Dedecker <dedeckeh@gmail.com>
---
 package/network/services/ppp/Makefile     | 2 +-
 package/network/services/ppp/files/ppp.sh | 7 +++++++
 2 files changed, 8 insertions(+), 1 deletion(-)

diff --git a/package/network/services/ppp/Makefile b/package/network/services/ppp/Makefile
index 3b36444289..c8016dc619 100644
--- a/package/network/services/ppp/Makefile
+++ b/package/network/services/ppp/Makefile
@@ -9,7 +9,7 @@ include $(TOPDIR)/rules.mk
 include $(INCLUDE_DIR)/kernel.mk
 
 PKG_NAME:=ppp
-PKG_RELEASE:=1
+PKG_RELEASE:=2
 
 PKG_SOURCE_PROTO:=git
 PKG_SOURCE_URL:=https://github.com/paulusmack/ppp
diff --git a/package/network/services/ppp/files/ppp.sh b/package/network/services/ppp/files/ppp.sh
index 2d9ca6d284..b553effd88 100755
--- a/package/network/services/ppp/files/ppp.sh
+++ b/package/network/services/ppp/files/ppp.sh
@@ -210,6 +210,9 @@ proto_pppoe_init_config() {
 	proto_config_add_string "ac"
 	proto_config_add_string "service"
 	proto_config_add_string "host_uniq"
+	proto_config_add_int "padi_attempts"
+	proto_config_add_int "padi_timeout"
+
 	lasterror=1
 }
 
@@ -227,12 +230,16 @@ proto_pppoe_setup() {
 	json_get_var ac ac
 	json_get_var service service
 	json_get_var host_uniq host_uniq
+	json_get_var padi_attempts padi_attempts
+	json_get_var padi_timeout padi_timeout
 
 	ppp_generic_setup "$config" \
 		plugin rp-pppoe.so \
 		${ac:+rp_pppoe_ac "$ac"} \
 		${service:+rp_pppoe_service "$service"} \
 		${host_uniq:+host-uniq "$host_uniq"} \
+		${padi_attempts:+pppoe-padi-attempts $padi_attempts} \
+		${padi_timeout:+pppoe-padi-timeout $padi_timeout} \
 		"nic-$iface"
 }
 
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
