Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4A024169C
	for <lists+openwrt-devel@lfdr.de>; Tue, 11 Jun 2019 23:08:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z1rl+T0VPMAt+oyb8eSZYkxU58hQX6hLnPV/figWEJY=; b=ljw5X8hN8UKnx/
	Uw5WxhiI8vHI+X44rLf78kDITebBehpValoYn1Ld9r0PQPpuGGPUAFWg57O5TLTwkvLI0ZGLu8oGy
	L/DoL6bJPscbeI4FfOgktbxrKasQ3AkOegYPf6euvXzbjodW2tllolKZW8snPJADmbe4Src2rzNg+
	torPVRbRVQQOhxas24V5o76UTcp9SPQnbxjrdhKipKd1CYl97Xk6PMRWiBE8Ppzof+JMz4jFmZKCy
	84HlgA8StF7raWFq2XUKMenfCJMSaSCdiuRtGeuaLe6XwM+EjgpAvr2vmhz0jt5qe4sBFQzsGjMdR
	19h1CgNZXcy4S6jW7Hlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hanzv-0006DC-UJ; Tue, 11 Jun 2019 21:08:03 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hanzl-0006A3-4q
 for openwrt-devel@lists.openwrt.org; Tue, 11 Jun 2019 21:07:54 +0000
Received: by mail-lf1-x141.google.com with SMTP id p24so10387735lfo.6
 for <openwrt-devel@lists.openwrt.org>; Tue, 11 Jun 2019 14:07:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nrnGzvrK0XeKFx9yZ6aaGlZ69H9+ZEuZI7n3CgCIoJQ=;
 b=Oib8HmDrqnEbm4vbdlaeRwCXDuxjmjNjlqvDWdt4qBRKnEs5aeerZKgC2xvSol+yvn
 QeHrnnfN0tbq1z1AgFQei45yn4navxwaf8LaPb/wSg0XYEZ93TvU8LtbJqwnrhX7JgXE
 SbMHIpqNWkaWT9cnoHzldh7haxnrJ2GZBgB+qrIFnvQB0jGsHJf8t5bWRVQNhOxV09W3
 g0guyOvMGIdmPLexzJU5Q+zhnbfVC6kS47/+ONFCKD8OSVminxnoQtAuavNXFlQx/LJl
 Uoc2g4VOEqyA29v3hA6LP1k81loGZbXIwKXPjZPiPxLgcCiMZraU7QNL/npKWM19RMJA
 2gaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nrnGzvrK0XeKFx9yZ6aaGlZ69H9+ZEuZI7n3CgCIoJQ=;
 b=YZtR9PScIl/H48+y2NL2SOYdx/V+zwHqGOajcj6luJRTofgBhQPsxL5xO6vjidmSsz
 z1nwlQIAvJXRVju1dqlAXhchLgi58wROprIJc5hRh/yHMR3j78qDAtBNzQ428RyXS8bx
 kfJF6vVZKZ7det8lbLPZ6+ATJzjk8BJEKzre4/x6KGVKlOHqGjvcneNzfa474qO2qJSO
 P1rBfnOsQaWIbdOONnY3n2E1pGbYXgKQsMWbMntzOiAOqY6C5A3oDrYIBMc75LYvtKwZ
 OBU8QvpYPK4jJ2XL2F8VOPTnjXkp5AlZ6wduVO5UHMvsSCjLI+ozEeHx+lCqSsUT7yKI
 Zx3g==
X-Gm-Message-State: APjAAAUkmr7ayiTu4m2pPgU/5Inc4Yo7z+O2CyVewPOawqhirxocZs9R
 WOQ4EErQlZrNMlGRm/KgIemumg==
X-Google-Smtp-Source: APXvYqwgQmw9Kj5ntDHe+9uXeOETBFRsOFDPxxNdQKjr0NFr+x0T3j1DpERe7Z8fiAcpEgaHAHN4Lg==
X-Received: by 2002:ac2:424b:: with SMTP id m11mr372268lfl.163.1560287271223; 
 Tue, 11 Jun 2019 14:07:51 -0700 (PDT)
Received: from linux.local (c-d2cd225c.014-348-6c756e10.bbcust.telenor.se.
 [92.34.205.210])
 by smtp.gmail.com with ESMTPSA id h131sm2711757lfe.80.2019.06.11.14.07.50
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 11 Jun 2019 14:07:50 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: Roman Yeryomin <roman@advem.lv>, Sebastian Luft <sebastian.luft@gmail.com>,
 Hans Ulli Kroll <ulli.kroll@googlemail.com>,
 Hauke Mehrtens <hauke@hauke-m.de>, Christian Lamparter <chunkeey@gmail.com>
Date: Tue, 11 Jun 2019 23:06:55 +0200
Message-Id: <20190611210655.18652-3-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190611210655.18652-1-linus.walleij@linaro.org>
References: <20190611210655.18652-1-linus.walleij@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_140753_210702_1862221A 
X-CRM114-Status: UNSURE (   9.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH 3/3 v2] gemini: Fix MAC address assignment
 for DIR-685
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Florian Fainelli <f.fainelli@gmail.com>, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

The DIR-685 has the MAC addresses in the RedBoot code just like
DNS-313. Check some magic numbers to determine that the MAC
address is where we want it and extract it from RedBoot.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
ChangeLog v1->v2:
- Rebase on the other patches
- Use library functions to get partition and hex MAC address
- Use ip to set up mac address
---
 .../lib/preinit/05_set_ether_mac_gemini           | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/target/linux/gemini/base-files/lib/preinit/05_set_ether_mac_gemini b/target/linux/gemini/base-files/lib/preinit/05_set_ether_mac_gemini
index a51c223d85c9..f702e0458c2e 100644
--- a/target/linux/gemini/base-files/lib/preinit/05_set_ether_mac_gemini
+++ b/target/linux/gemini/base-files/lib/preinit/05_set_ether_mac_gemini
@@ -18,6 +18,21 @@ set_ether_mac() {
 			fi
 		fi
 		;;
+	dlink,dir-685)
+		# The DIR-685 has a special field in its RedBoot
+		# binary that we need to check
+		part=$(find_mtd_part RedBoot)
+		if [ ! -z $part ] ; then
+			DEVID="$(dd if=$part bs=1 skip=81516 count=7 2>/dev/null)"
+			if [ "x$DEVID" = "xILI9322" ] ; then
+				MAC1=$(mtd_get_mac_binary RedBoot 95040)
+				MAC2=$(mtd_get_mac_binary RedBoot 95046)
+				ifconfig eth0 hw ether $MAC1 2>/dev/null
+				ifconfig eth1 hw ether $MAC2 2>/dev/null
+				return 0
+			fi
+		fi
+		;;
 	esac
 
 	# Most devices have a standard "VCTL" partition
-- 
2.21.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
